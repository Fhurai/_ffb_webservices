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
     * @param int $id The ID of the parameter.
     * @return mixed The parameter data.
     */
    abstract public function get(int $id);

    /**
     * Find parameters based on search criteria.
     * @param array $args The search criteria.
     * @return mixed The search results.
     */
    abstract public function findSearchedBy(array $args): mixed;

    /**
     * Find parameters ordered by specific criteria.
     * @param array $args The ordering criteria.
     * @return mixed The ordered results.
     */
    abstract public function findOrderedBy(array $args): mixed;

    /**
     * Find a limited number of parameters based on criteria.
     * @param array $args The limiting criteria.
     * @return mixed The limited results.
     */
    abstract public function findLimitedBy(array $args): mixed;

    /**
     * Find all parameters based on criteria.
     * @param array $args The criteria.
     * @return mixed The results.
     */
    abstract public function findAll(array $args);

    /**
     * Parse a database row into an entity object.
     * @param array $row The database row.
     * @return mixed The entity object.
     */
    abstract protected function parseEntity(array $row);

    /**
     * Execute a query with the provided values.
     * @param string $query The SQL query to execute.
     * @param array $values The values to bind to the query.
     * @return array The query results.
     * @throws FfbTableException If no data is found or a PDOException occurs.
     */
    protected function executeQuery(string $query, array $values){
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
        $entities = [];
        foreach ($rows as $row) {
            $entities[] = $this->parseEntity($row);
        }
        return $entities;
    }
}