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
            // build condition
            if (str_contains($value, '%')) {
                $conditions[] = "`$column` LIKE :$column";
                $values[":$column"] = $value;
            } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $m)) {
                $conditions[] = "`$column` {$m[1]} :$column";
                $values[":$column"] = $m[2];
            } elseif (str_contains(strtolower($value), 'null')) {
                $conditions[] = str_contains(strtolower($value), 'not')
                    ? "`$column` IS NOT NULL"
                    : "`$column` IS NULL";
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
        return $this->parseEntities($this->executeQuery($query, []));
    }

    /**
     * Insert a new record
     */
    public function create(Entity $entity): Entity
    {
        $cols = $entity->toArray(); // assumes entity has toArray mapping columns
        $fields = array_keys($cols);
        $place = array_map(fn($col) => ":$col", $fields);
        $sql = sprintf(
            'INSERT INTO `%s` (%s) VALUES (%s)',
            static::TABLE_NAME,
            implode(', ', array_map(fn($c) => "`$c`", $fields)),
            implode(', ', $place)
        );
        $this->executeQuery($sql, array_combine($place, array_values($cols)));
        return $entity->withId((int) $this->connection->lastInsertId());
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
            SqlExceptionManager::handle($e, $query, $values);
        }
    }

    /**
     * Abstract mapping to entity
     */
    abstract protected function parseEntity(array $row): Entity;
}
