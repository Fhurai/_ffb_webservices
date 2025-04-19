<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/../exception/FfbTableException.php";
require_once __DIR__ . "/../exception/SqlExceptionManager.php";

abstract class EntitiesTable
{
    protected PDO $connection;

    // Common date format used in all tables
    protected const DATE_FORMAT = 'Y-m-d H:i:s';

    // Default exception message when no data is found
    protected const NO_DATA_EXCEPTION = 'No data for arguments provided!';

    /**
     *
     * @var array string[]
     */
    protected array $columns = [];

    /**
     * Establish DB connection
     */
    public function __construct(string $typeConnection, string $user)
    {
        if (empty($typeConnection) || empty($user)) {
            throw new InvalidArgumentException("Invalid connection type or user.");
        }
        $this->connection = Connection::getDatabase($typeConnection, $user);
    }

    /**
     * Get valid column names for the specified table.
     * @param string $tableName The table name.
     * @return array List of valid column names.
     * @throws FfbTableException If the query fails.
     */
    protected function getTableColumns(string $tableName): array
    {
        try {
            $stmt = $this->connection->prepare("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = :table");
            $stmt->execute([':table' => $tableName]);
            return $stmt->fetchAll(PDO::FETCH_COLUMN);
        } catch (PDOException $e) {
            throw new FfbTableException("Failed to fetch table columns: " . $e->getMessage());
        }
    }

    /**
     * Fetch single entity by ID
     */
    public function get(int $id): Entity
    {
        $query = static::DEFAULT_SELECT_QUERY . " WHERE `id` = :id";
        $rows = $this->executeQuery($query, [':id' => $id]);
        if (empty($rows)) {
            throw new FfbTableException(static::NO_DATA_EXCEPTION);
        }
        return $this->parseEntity($rows[0]);
    }

    /**
     * Search by arbitrary conditions (LIKE, NULL, operators)
     */
    public function findSearchedBy(array $args, bool $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }
        $validColumns = $this->getTableColumns(static::TABLE_NAME);
        $values = [];
        $conditions = [];
        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }

            if (str_contains($value, '%')) {
                $conditions[] = "$column LIKE :$column";
                $values[":$column"] = $value;
            } elseif (str_contains(strtolower($value), 'null')) {
                $conditions[] = "$column IS NULL";
            } elseif (str_contains(strtolower($value), 'not null')) {
                $conditions[] = "$column IS NOT NULL";
            } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $matches)) {
                $operator = trim($matches[1]);
                $val = trim($matches[2]);
                $conditions[] = "$column $operator :$column";
                $values[":$column"] = str_replace("'", "", $val);
            } else {
                $conditions[] = "$column = :$column";
                $values[":$column"] = $value;
            }
        }
        $query = ($execute ? static::DEFAULT_SELECT_QUERY : '')
            . ' WHERE ' . implode(' AND ', $conditions);
        return $execute ? $this->parseEntities($this->executeQuery($query, $values)) : $query;
    }

    /**
     * Sort results by given columns
     */
    public function findOrderedBy(array $args, bool $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No ordering arguments provided!");
        }
        $validColumns = $this->getTableColumns(static::TABLE_NAME);
        $orders = [];
        foreach ($args as $column => $direction) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            $dir = strtoupper($direction) === 'DESC' ? 'DESC' : 'ASC';
            $orders[] = "`$column` $dir";
        }
        $query = ($execute ? static::DEFAULT_SELECT_QUERY : '')
            . ' ORDER BY ' . implode(', ', $orders);
        return $execute ? $this->parseEntities($this->executeQuery($query, [])) : $query;
    }

    /**
     * Limit and offset
     */
    public function findLimitedBy(array $args, bool $execute = true): array|string
    {
        if (!isset($args['limit'])) {
            throw new FfbTableException("Limit not provided!");
        }
        $limit = (int) $args['limit'];
        $offset = isset($args['offset']) ? (int) $args['offset'] : 0;
        $query = ($execute ? static::DEFAULT_SELECT_QUERY : '')
            . " LIMIT $limit OFFSET $offset";
        return $execute ? $this->parseEntities($this->executeQuery($query, [])) : $query;
    }

    /**
     * Fetch all
     */
    public function findAll(array $args = []): array
    {
        $query = static::DEFAULT_SELECT_QUERY;
        $values = [];

        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                if (str_contains($value, '%')) {
                    $values[":$key"] = $value;
                } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $matches)) {
                    $val = trim($matches[2]);
                    $values[":$key"] = str_replace("'", "", $val);
                } elseif (str_contains($key, "_id") || str_contains($key, "is_")) {
                    $values[":$key"] = $value;
                }
            }
        }

        if (!empty($args['order'])) {
            $orderQuery = $this->findOrderedBy($args['order'], false);
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        if (!empty($args['limit'])) {
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        return $this->parseEntities($rows);
    }

    protected function beforePost(Entity $entity){

        $cols = json_decode(json_encode($entity), true);

        if ($entity::class === 'User') {
            /** @var User $entity */
            $cols['password'] = password_hash($entity->getPassword(), PASSWORD_DEFAULT);
        } elseif($entity::class === 'Relation'){
            /** @var Relation $entity */
            unset($cols['characters']);
        } elseif($entity::class === 'Fanfiction'){
            /** @var Fanfiction $entity */
            unset($cols['fandoms']);
            unset($cols['relations']);
            unset($cols['characters']);
            unset($cols['tags']);
            unset($cols['links']);
        } elseif($entity::class === 'Series'){
            /** @var Series $entity */
            unset($cols['fanfictions']);
            unset($cols['authors']);
            unset($cols['languages']);
            unset($cols['fandoms']);
            unset($cols['relations']);
            unset($cols['characters']);
            unset($cols['tags']);
            unset($cols['rating']);
        }

        return $cols;
    }

    /**
     * Insert a new record
     */
    public function post(Entity $entity, bool $doLog = false): Entity
    {
        $cols = $this->beforePost($entity);

        $fields = array_keys($cols);
        $place = array_map(fn($col) => ":$col", $fields);
        $sql = sprintf(
            'INSERT INTO `%s` (%s) VALUES (%s)',
            static::TABLE_NAME,
            implode(', ', array_map(fn($c) => "`$c`", $fields)),
            implode(', ', $place)
        );

        if($doLog){
            Connection::dd([$sql, array_combine($place, array_values($cols))]);
        }

        $this->executeQuery($sql, array_combine($place, array_values($cols)));
        $entity->setId((int) $this->connection->lastInsertId());

        $this->afterPost($entity);

        return $entity;
    }

    protected function afterPost($entity){
        if($entity::class === 'Relation' || $entity::class === 'Fanfiction' || $entity::class === 'Series'){
            $this->updateAssociations($entity);
        }
    }

    /**
     * Update an existing record
     */
    public function update(Entity $entity): Entity
    {
        $cols = $entity->toArray();
        unset($cols['id']);
        $sets = array_map(fn($c) => "`$c` = :$c", array_keys($cols));
        $sql = sprintf(
            'UPDATE `%s` SET %s WHERE `id` = :id',
            static::TABLE_NAME,
            implode(', ', $sets)
        );
        $params = array_merge(
            array_combine(array_map(fn($c) => ":$c", array_keys($cols)), array_values($cols)),
            [':id' => $entity->getId()]
        );
        $this->executeQuery($sql, $params);
        return $entity;
    }

    /**
     * Soft-delete a record
     */
    public function delete(int $id): bool
    {
        $sql = sprintf(
            'UPDATE `%s` SET `delete_date` = :now WHERE `id` = :id',
            static::TABLE_NAME
        );
        $this->executeQuery($sql, [':now' => date(self::DATE_FORMAT), ':id' => $id]);
        return (bool) $this->connection->rowCount();
    }

    /**
     * Restore a soft-deleted record
     */
    public function restore(int $id): bool
    {
        $sql = sprintf(
            'UPDATE `%s` SET `delete_date` = NULL WHERE `id` = :id',
            static::TABLE_NAME
        );
        $this->executeQuery($sql, [':id' => $id]);
        return (bool) $this->connection->rowCount();
    }

    /**
     * Hard remove a record
     */
    public function remove(int $id): bool
    {
        $sql = sprintf(
            'DELETE FROM `%s` WHERE `id` = :id',
            static::TABLE_NAME
        );
        $this->executeQuery($sql, [':id' => $id]);
        return (bool) $this->connection->rowCount();
    }

    /**
     * Execute and fetch
     */
    protected function executeQuery(string $query, array $values): array
    {
        try {
            $stmt = $this->connection->prepare($query);
            $stmt->execute($values);
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            $manager = SqlExceptionManager::fromPDOException($e);
            throw new FfbTableException($manager->getFormattedMessage());
        }
    }

    /**
     * Abstract mapping to entity
     */
    abstract protected function parseEntity(array $row): Entity;

    protected function parseEntities(array $rows): array
    {
        return array_map([$this, 'parseEntity'], $rows);
    }
}
