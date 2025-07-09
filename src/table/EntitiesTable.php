<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/../exception/FfbTableException.php";
require_once __DIR__ . "/../exception/SqlExceptionManager.php";

abstract class EntitiesTable
{
    protected PDO $connection;

    // Common date format used in all tables
    protected const DATE_FORMAT = 'Y-m-d H:i:s';

    /**
     * @var string
     */
    protected const TIMEZONE_DATETIME = "Europe/Paris";

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
            throw new FfbTableException("Invalid connection type or user.");
        }
        $this->connection = Connection::getDatabase($typeConnection, $user);
    }

    /**
     * Get valid column names for the specified table.
     *
     * @param  string $tableName The table name.
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
     * @param int $id
     * @return bool|Entity
     */
    public function get(int $id): mixed
    {
        $query = static::DEFAULT_SELECT_QUERY . " WHERE `id` = :id";
        $rows = $this->executeQuery($query, [':id' => $id]);
        if (empty($rows)) {
            return false;
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

            if (is_array($value)) {
                $conditions[] = "$column IN (:" . implode(", :", array_keys($value)) . ")";
                foreach ($value as $key => $val) {
                    $values[":$key"] = $val;
                }
            } elseif (is_string($value)) {
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
            } elseif (is_bool($value)) {
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

    protected function beforePost(Entity $entity)
    {

        $cols = json_decode(json_encode($entity), true);

        if ($entity::class === 'User') {
            /**
             * @var User $entity
             */
            $cols['password'] = password_hash($entity->getPassword(), PASSWORD_DEFAULT);
            $cols['is_admin'] = $entity->isAdmin() ? 1 : 0;
            $cols['is_local'] = $entity->isLocal() ? 1 : 0;
            $cols['is_nsfw'] = $entity->isNsfw() ? 1 : 0;
        } elseif ($entity::class === 'Relation') {
            /**
             * @var Relation $entity
             */
            unset($cols['characters']);
        } elseif ($entity::class === 'Fanfiction') {
            /**
             * @var Fanfiction $entity
             */
            unset($cols['fandoms']);
            unset($cols['relations']);
            unset($cols['characters']);
            unset($cols['tags']);
            unset($cols['links']);
        } elseif ($entity::class === 'Series') {
            /**
             * @var Series $entity
             */
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
        try {
            $this->connection->beginTransaction();
        } catch (PDOException $e) {
            throw new FfbTableException("Failed to begin transaction: " . $e->getMessage());
        }
        $cols = $this->beforePost($entity);

        $fields = array_keys($cols);
        $place = array_map(fn($col) => ":$col", $fields);
        $sql = sprintf(
            'INSERT INTO `%s` (%s) VALUES (%s)',
            static::TABLE_NAME,
            implode(', ', array_map(fn($c) => "`$c`", $fields)),
            implode(', ', $place)
        );

        if ($doLog) {
            Connection::dd([$sql, array_combine($place, array_values($cols))]);
        }

        try {
            $this->executeQuery($sql, array_combine($place, array_values($cols)));
            $entity->setId((int) $this->connection->lastInsertId());

            $this->afterPost($entity);

            $this->connection->commit();
        } catch (FfbTableException $e) {
            $this->connection->rollBack();
            throw $e;
        }

        return $entity;
    }

    protected function afterPost($entity)
    {
        if ($entity::class === 'Relation' || $entity::class === 'Fanfiction' || $entity::class === 'Series') {
            $this->updateAssociations($entity);
        }
    }

    protected function beforePut(stdClass $entity, string $entityClass)
    {
        $cols = json_decode(json_encode($entity), true);
        $cols['update_date'] = (new DateTime("now", new DateTimeZone(self::TIMEZONE_DATETIME)))->format(self::DATE_FORMAT);

        if ($entityClass === 'User') {
            /**
             * @var User $entity
             */
            if (isset($cols['password'])) {
                unset($cols['password']);
            } elseif (isset($cols['currentPassword'])) {
                if ($cols['newPassword'] !== $cols['confirmNewPassword']) {
                    throw new FfbTableException("New password and confirmation do not match!", 400);
                } else {
                    $cols['password'] = password_hash($cols['newPassword'], PASSWORD_DEFAULT);
                    unset($cols['newPassword']);
                    unset($cols['confirmNewPassword']);
                }
            }
        } elseif ($entityClass === 'Relation') {
            /**
             * @var Relation $entity
             */
            $charactersTable = new CharactersTable(Connection::getTypeConnect(), Connection::getUser());
            $characters = $charactersTable->findSearchedBy(['id' => $cols['characters']]);
            $cols['characters'] = $characters;
            $cols['name'] = implode(
                ' / ',
                array_map(
                    function ($character) {
                        return $character->getName();
                    },
                    $characters
                )
            );
        } elseif ($entityClass === 'Fanfiction') {
            /**
             * @var Fanfiction $entity
             */
            if (array_key_exists('fandoms', $cols)) {
                $fandomsTable = new FandomsTable(Connection::getTypeConnect(), Connection::getUser());
                $fandoms = $fandomsTable->findSearchedBy(['id' => $cols['fandoms']]);
                $cols['fandoms'] = $fandoms;
            }

            if (array_key_exists('characters', $cols)) {
                $charactersTable = new CharactersTable(Connection::getTypeConnect(), Connection::getUser());
                $characters = $charactersTable->findSearchedBy(['id' => $cols['characters']]);
                $cols['characters'] = $characters;
            }

            if (array_key_exists('relations', $cols)) {
                $relationsTable = new RelationsTable(Connection::getTypeConnect(), Connection::getUser());
                $relations = $relationsTable->findSearchedBy(['id' => $cols['relations']]);
                $cols['relations'] = $relations;
            }

            if (array_key_exists('tags', $cols)) {
                $tagsTable = new TagsTable(Connection::getTypeConnect(), Connection::getUser());
                $tags = $tagsTable->findSearchedBy(['id' => $cols['tags']]);
                $cols['tags'] = $tags;
            }
        } elseif ($entityClass === 'Series') {
            /**
             * @var Series $entity
             */
            if (array_key_exists('fanfictions', $cols)) {
                $fanfictionsTable = new FanfictionsTable(Connection::getTypeConnect(), Connection::getUser());
                $fanfictions = $fanfictionsTable->findSearchedBy(['id' => $cols['fanfictions']]);
                $cols['fanfictions'] = $fanfictions;
            }
        }
        return $cols;
    }

    /**
     * Update an existing record
     */
    public function put(Entity $entity, stdClass $data, bool $doLog = false): bool
    {
        try {
            $this->connection->beginTransaction();
        } catch (PDOException $e) {
            throw new FfbTableException("Failed to begin transaction: " . $e->getMessage());
        }

        $arrayData = $this->beforePut($data, $entity::class);

        // Special handling for password update
        if (isset($arrayData['password'])) {
            if (!($entity instanceof User)) {
                throw new FfbException('Entity must be a User to verify password.');
            }
            if (!password_verify($data->currentPassword, $entity->getPassword())) {
                throw new FfbTableException("Current password is incorrect!", 400);
            }
            unset($arrayData['currentPassword']);
        }

        // Mapping of special fields to setter methods
        $specialFields = [
            'characters' => ['method' => 'setCharacters', 'class' => Relation::class],
            'fandoms' => ['method' => 'setFandoms', 'class' => Fanfiction::class],
            'tags' => ['method' => 'setTags', 'class' => Fanfiction::class],
            'relations' => ['method' => 'setRelations', 'class' => Fanfiction::class],
            'fanfictions' => ['method' => 'setFanfictions', 'class' => Series::class],
        ];

        // Process special fields dynamically
        foreach ($specialFields as $field => $options) {
            if (isset($arrayData[$field])) {
                if (!($entity instanceof $options['class'])) {
                    throw new FfbException(sprintf('Entity must be an instance of %s to set %s.', $options['class'], $field));
                }
                $entity->{$options['method']}($arrayData[$field]);
                unset($arrayData[$field]);
            }
        }

        $fields = array_keys($arrayData);
        $place = array_map(fn($col) => "`$col` = :$col", $fields);
        $sql = sprintf(
            'UPDATE `%s` SET %s WHERE `id` = :id',
            static::TABLE_NAME,
            implode(', ', $place)
        );

        $params = array_combine(
            array_map(fn($col) => ":$col", $fields),
            array_values($arrayData)
        );
        $params[':id'] = $entity->getId();

        if ($doLog) {
            Connection::dd([$sql, $params]);
        }

        $result = 0;
        try {
            $result = $this->executeQuery($sql, $params);

            if ($result === 0) {
                throw new FfbTableException("Update failed for the entity", 500);
            } elseif ($result > 1) {
                throw new FfbTableException("Update affected multiple rows", 500);
            }

            $this->afterPost($entity);
            $this->connection->commit();
        } catch (FfbTableException $e) {
            $this->connection->rollBack();
            throw $e;
        }

        return $result === 1;
    }

    /**
     * Soft delete or restore an entity by updating its `delete_date` field.
     *
     * @param int $id The ID of the entity to update.
     * @param bool $deleted True to soft delete the entity, false to restore it.
     * @return bool True if the update was successful, false otherwise.
     * @throws FfbTableException If invalid input is provided or the operation fails.
     */
    public function patch(int $id, bool $deleted): bool
    {
        // Validate the `deleted` parameter to ensure it's a boolean.
        if (!is_bool($deleted)) {
            throw new FfbTableException("Invalid value for deleted: " . $deleted, 400);
        }

        // Validate the `id` parameter to ensure it's a positive integer.
        if ($id <= 0) {
            throw new FfbTableException("Invalid ID: " . $id, 400);
        }

        // Fetch the entity by its ID to check its current state.
        $entity = $this->get($id);

        // Check if the entity's current `delete_date` state matches the requested state.
        if (!is_null($entity->getDeleteDate()) === $deleted) {
            throw new FfbTableException(
                "Entity is already " . ($deleted ? 'deleted' : 'restored') . "!",
                400
            );
        }

        // Prepare the SQL query to update the `delete_date` field.
        $query = sprintf(
            'UPDATE `%s` SET `delete_date` = :delete_date WHERE `id` = :id',
            static::TABLE_NAME
        );

        // Set the `delete_date` value based on the `deleted` parameter.
        $params = [
            ':delete_date' => $deleted
                ? (new DateTime('now', new DateTimeZone(self::TIMEZONE_DATETIME)))->format(self::DATE_FORMAT)
                : null,
            ':id' => $id,
        ];

        // Execute the query and return whether any rows were affected.
        return $this->executeQuery($query, $params) > 0;
    }

    /**
     * Hard delete a record
     */
    public function delete(int $id): bool
    {
        // Validate the `id` parameter to ensure it's a positive integer.
        if ($id <= 0) {
            throw new FfbTableException("Invalid ID: " . $id, 400);
        }

        $entity = $this->get($id);
        if ($entity->getDeleteDate() === null) {
            throw new FfbTableException("Entity is not deleted!", 400);
        }
        $query = sprintf(
            'DELETE FROM `%s` WHERE `id` = :id',
            static::TABLE_NAME
        );

        $params = [':id' => $id];
        $result = $this->executeQuery($query, $params);
        if ($result === 0) {
            throw new FfbTableException("Delete failed for the entity", 500);
        } elseif ($result > 1) {
            throw new FfbTableException("Delete affected multiple rows", 500);
        }
        return $result === 1;
    }

    /**
     * Execute and fetch
     */
    protected function executeQuery(string $query, array $values): mixed
    {
        try {
            $stmt = $this->connection->prepare($query);
            $stmt->execute($values);

            // Check if the query returns results (e.g., SELECT)
            if ($stmt->columnCount() > 0) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            } else {
                // Return the number of affected rows for write operations
                return $stmt->rowCount();
            }
        } catch (PDOException $e) {
            $manager = SqlExceptionManager::fromPDOException($e);
            throw new FfbTableException($manager->getFormattedMessage());
        }
    }

    public function setTriggerUser(string $username)
    {
        try {
            $stmt = $this->connection->prepare("SET @current_user_id = (SELECT id FROM users WHERE username = :username LIMIT 1)");
            $stmt->execute(['username' => $username ?? 'guest']);
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

    // Inside EntitiesTable.php
    protected function updateAssociation(string $junctionTable, string $primaryKeyColumn, string $primaryKeyParam, int $id, array $items): void
    {
        $queryDelete = "DELETE FROM `$junctionTable` WHERE `$primaryKeyColumn` = $primaryKeyParam";
        $this->executeQuery($queryDelete, [$primaryKeyParam => $id]);

        if (!empty($items)) {
            $mono = substr($junctionTable, strpos($junctionTable, '_') + 1);
            $mono = rtrim($mono, 's');

            $queryInsert = "INSERT INTO `$junctionTable` (`$primaryKeyColumn`, `{$mono}_id`) VALUES ($primaryKeyParam, :item_id)";
            foreach ($items as $item) {
                $this->executeQuery(
                    $queryInsert,
                    [
                        $primaryKeyParam => $id,
                        ":item_id" => $item->getId(),
                    ]
                );
            }
        }
    }
}
