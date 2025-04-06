<?php

require_once __DIR__ . "/../entity/Parameters.php";

abstract class ParametersTable
{
    /**
     * 
     * @var PDO
     */
    private PDO $connection;

    /**
     * RatingsTable constructor.
     * @param string $typeConnection Type of database connection.
     * @param string $user Database user.
     */
    public function __construct(string $typeConnection, string $user)
    {
        $this->connection = Connection::getDatabase($typeConnection, $user);
    }

    /**
     * Get a parameter by its ID.
     * @param int $id The unique identifier of the parameter.
     * @return mixed The parameter data as an associative array or object.
     */
    abstract public function get(int $id);

    /**
     * Find parameters based on specific search criteria.
     * @param array $args An associative array of search criteria.
     * @param bool $execute Whether to execute the query immediately (default: true).
     * @return mixed The search results as an array or object.
     */
    abstract public function findSearchedBy(array $args, bool $execute = true): mixed;

    /**
     * Retrieve parameters ordered by specific criteria.
     * @param array $args An associative array defining the ordering criteria.
     * @param bool $execute Whether to execute the query immediately (default: true).
     * @return mixed The ordered results as an array or object.
     */
    abstract public function findOrderedBy(array $args, bool $execute = true): mixed;

    /**
     * Retrieve a limited number of parameters based on criteria.
     * @param array $args An associative array defining the limiting criteria.
     * @param bool $execute Whether to execute the query immediately (default: true).
     * @return mixed The limited results as an array or object.
     */
    abstract public function findLimitedBy(array $args, bool $execute = true): mixed;

    /**
     * Retrieve all parameters matching the provided criteria.
     * @param array $args An associative array of filtering criteria.
     * @return array The results as an array.
     */
    abstract public function findAll(array $args): array;

    /**
     * Convert a database row into a corresponding entity object.
     * @param array $row An associative array representing a database row.
     * @return mixed The entity object corresponding to the row.
     */
    abstract protected function parseEntity(array $row);

    /**
     * Execute a query with the provided values.
     * @param string $query The SQL query to execute.
     * @param array $values The values to bind to the query.
     * @return array The query results.
     * @throws FfbTableException If no data is found or a PDOException occurs.
     */
    protected function executeQuery(string $query, array $values = []): array{
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

    /**
     * Parse multiple database rows into an array of entity objects.
     * @param array $rows The database rows.
     * @return array Array of entity objects.
     */
    protected function parseEntities(array $rows): array
    {
        return array_map([$this, 'parseEntity'], $rows);
    }

    /**
 * Get valid column names for the specified table.
 * @param string $tableName The table name.
 * @return array List of valid column names.
 * @throws FfbTableException If the query fails.
 */
protected function getTableColumns(string $tableName): array {
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
}