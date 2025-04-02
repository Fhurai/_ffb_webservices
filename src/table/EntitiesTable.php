<?php

require_once __DIR__ . "/../entity/Entity.php";

abstract class EntitiesTable
{
    /**
     * 
     * @var PDO
     */
    private PDO $connection;

    /**
     * EntitiesTable constructor.
     * @param string $typeConnection Type of database connection.
     * @param string $user Database user.
     */
    public function __construct(string $typeConnection, string $user)
    {
        $this->connection = Connection::getDatabase($typeConnection, $user);
    }

    /**
     * Get an entity by its ID.
     * @param int $id The ID of the entity.
     * @return Entity The entity object.
     */
    abstract public function get(int $id): Entity;

    /**
     * Find entities based on search criteria.
     * @param array $args The search criteria.
     * @return array The search results as Entity objects.
     */
    abstract public function findSearchedBy(array $args): array;

    /**
     * Find entities ordered by specific criteria.
     * @param array $args The ordering criteria.
     * @return array The ordered results as Entity objects.
     */
    abstract public function findOrderedBy(array $args): array;

    /**
     * Find a limited number of entities based on criteria.
     * @param array $args The limiting criteria.
     * @return array The limited results as Entity objects.
     */
    abstract public function findLimitedBy(array $args): array;

    /**
     * Find all entities based on criteria.
     * @param array $args The criteria.
     * @return array The results as Entity objects.
     */
    abstract public function findAll(array $args): array;

    /**
     * Create a new entity.
     * @param Entity $entity The entity to create.
     * @return Entity The created entity.
     */
    abstract public function create(Entity $entity): Entity;

    /**
     * Update an existing entity.
     * @param Entity $entity The entity to update.
     * @return Entity The updated entity.
     */
    abstract public function update(Entity $entity): Entity;

    /**
     * Soft delete an entity.
     * @param int $id The ID of the entity to delete.
     * @return bool True if the entity was soft deleted, false otherwise.
     */
    abstract public function delete(int $id): bool;

    /**
     * Restore a soft-deleted entity.
     * @param int $id The ID of the entity to restore.
     * @return bool True if the entity was restored, false otherwise.
     */
    abstract public function restore(int $id): bool;

    /**
     * Hard delete an entity.
     * @param int $id The ID of the entity to remove.
     * @return bool True if the entity was hard deleted, false otherwise.
     */
    abstract public function remove(int $id): bool;

    /**
     * Execute a query with the provided values.
     * @param string $query The SQL query to execute.
     * @param array $values The values to bind to the query.
     * @return array The query results as associative arrays.
     * @throws FfbTableException If no data is found or a PDOException occurs.
     */
    protected function executeQuery(string $query, array $values): array
    {
        try {
            // Prepare and execute the query.
            $sth = $this->connection->prepare($query);
            $sth->execute($values);
            $rows = $sth->fetchAll(PDO::FETCH_ASSOC);

            if (!$rows) {
                // No data found, throw FfbTableException
                throw new FfbTableException("No data for arguments provided!", 404);
            } else {
                return $rows;
            }
        } catch (PDOException $e) {
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }
}
