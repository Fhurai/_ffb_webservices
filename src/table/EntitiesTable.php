<?php

require_once __DIR__ . "/../entity/Entity.php";
require_once __DIR__ . "/../exceptions/FfbTableException.php";
require_once __DIR__ . "/../exceptions/SqlExceptionManager.php";

abstract class EntitiesTable
{
    /**
     *
     * @var PDO
     */
    protected PDO $connection;

    /**
     * Type of database connection.
     * @var string
     */
    protected string $typeConnection;
    /**
     * Database user.
     * @var string
     */
    protected string $user;

    /**
     * EntitiesTable constructor.
     * Initializes the database connection using the provided type and user.
     *
     * @param string $typeConnection Type of database connection.
     * @param string $user Database user.
     */
    public function __construct(string $typeConnection, string $user)
    {
        // Validate the type of connection and user
        if (empty($typeConnection) || empty($user)) {
            throw new InvalidArgumentException("Invalid connection type or user.");
        }
        // Set the type of connection and user
        $this->typeConnection = $typeConnection;
        $this->user = $user;
        // Initialize the database connection using the provided type and user
        $this->connection = Connection::getDatabase($typeConnection, $user);
    }

    /**
     * Get an entity by its ID.
     * Retrieves a single entity object from the database based on its unique identifier.
     *
     * @param int $id The ID of the entity.
     * @return Entity The entity object.
     */
    abstract public function get(int $id): Entity;

    /**
     * Find entities based on search criteria.
     * Searches the database for entities matching the provided criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array The search results as an array of Entity objects.
     */
    abstract public function findSearchedBy(array $args, $execute = true): array|string;

    /**
     * Find entities ordered by specific criteria.
     * Retrieves entities from the database ordered by the specified criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array The ordered results as an array of Entity objects.
     */
    abstract public function findOrderedBy(array $args, $execute = true): array|string;

    /**
     * Find a limited number of entities based on criteria.
     * Retrieves a subset of entities from the database based on the provided criteria.
     *
     * @param array $args The limiting criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array The limited results as an array of Entity objects.
     */
    abstract public function findLimitedBy(array $args, $execute = true): array|string;

    /**
     * Find all entities based on criteria.
     * Retrieves all entities from the database that match the given criteria.
     *
     * @param array $args The criteria as key-value pairs.
     * @return array The results as an array of Entity objects.
     */
    abstract public function findAll(array $args): array;

    /**
     * Create a new entity in the database.
     * Inserts a new entity into the database and returns the created entity with updated properties.
     *
     * @param Entity $entity The entity object to be created.
     * @return Entity The created entity object with updated properties.
     */
    abstract public function create(Entity $entity): Entity;

    /**
     * Update an existing entity in the database.
     * Modifies the properties of an existing entity in the database.
     *
     * @param Entity $entity The entity object with updated properties.
     * @return Entity The updated entity object.
     */
    abstract public function update(Entity $entity): Entity;

    /**
     * Soft delete an entity.
     * Marks an entity as deleted without removing it from the database.
     *
     * @param int $id The ID of the entity to delete.
     * @return bool True if the entity was soft deleted, false otherwise.
     */
    abstract public function delete(int $id): bool;

    /**
     * Restore a soft-deleted entity.
     * Reverts the soft deletion of an entity, making it active again.
     *
     * @param int $id The ID of the entity to restore.
     * @return bool True if the entity was restored, false otherwise.
     */
    abstract public function restore(int $id): bool;

    /**
     * Hard delete an entity.
     * Permanently removes an entity from the database.
     *
     * @param int $id The ID of the entity to remove.
     * @return bool True if the entity was hard deleted, false otherwise.
     */
    abstract public function remove(int $id): bool;

    /**
     * Execute a query with the provided values.
     * Prepares and executes an SQL query with bound values, returning the results.
     *
     * @param string $query The SQL query to execute.
     * @param array $values The values to bind to the query.
     * @return mixed The query results as associative arrays.
     * @throws FfbTableException If no data is found or a PDOException occurs.
     */
    protected function executeQuery(string $query, array $values = []): mixed
    {
        try {
            $sth = $this->connection->prepare($query);
            $sth->execute($values);

            // Check if the query returns results (e.g., SELECT)
            if ($sth->columnCount() > 0) {
                return $sth->fetchAll(PDO::FETCH_ASSOC);
            } else {
                // Return the number of affected rows for write operations
                return $sth->rowCount();
            }
        } catch (PDOException $e) {
            $manager = SqlExceptionManager::fromPDOException($e);
            throw new FfbTableException($manager->getFormattedMessage(), 500, $e);
        }
    }

    /**
     * Retrieves the ID of the last inserted row in the database.
     * Fetches the last auto-incremented ID generated by an INSERT operation.
     *
     * @return int The ID of the last inserted row as an integer.
     * @throws FfbTableException If the last inserted ID cannot be retrieved.
     */
    public function getLastInsertId(): int
    {
        $lastInsertId = $this->connection->lastInsertId();

        if ($lastInsertId === false || !is_numeric($lastInsertId)) {
            throw new FfbTableException("Failed to retrieve the last inserted ID.", 500);
        }

        return (int) $lastInsertId;
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
            $stmt = $this->connection->prepare("
                SELECT COLUMN_NAME
                FROM INFORMATION_SCHEMA.COLUMNS
                WHERE TABLE_SCHEMA = DATABASE()
                  AND TABLE_NAME = :table
            ");
            $stmt->execute([':table' => $tableName]);
            return $stmt->fetchAll(PDO::FETCH_COLUMN);
        } catch (PDOException $e) {
            throw new FfbTableException("Failed to fetch table columns: " . $e->getMessage());
        }
    }

    /**
     * Parse multiple database rows into an array of entity objects.
     * Converts database rows into an array of entity objects using the parseEntity method.
     *
     * @param array $rows The database rows.
     * @return array Array of entity objects.
     */
    protected function parseEntities(array $rows): array
    {
        return array_map([$this, 'parseEntity'], $rows);
    }
}
