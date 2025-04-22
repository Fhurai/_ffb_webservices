<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/../exception/FfbTableException.php";

readonly class StatsTable
{
    /**
     * @var PDO Database connection instance.
     */
    private PDO $connection;

    /**
     * StatsTable constructor.
     * Initializes the database connection for the stats table.
     */
    public function __construct()
    {
        // Establish a database connection using the "stats" database and "guest" user.
        $this->connection = Connection::getDatabase("stats", "guest");
    }

    /**
     * Fetches all parameter statistics from the database.
     *
     * @return array An array of parameter statistics.
     */
    public function getParametersStats(): array
    {
        // Define the query to fetch all parameter statistics.
        $query = "SELECT label FROM stats_data_parameters";
        // Execute the query and return the results.
        return $this->executeQuery($query);
    }

    /**
     * Fetches statistics for a specific parameter.
     *
     * @param  string $parameter The parameter to filter statistics by.
     * @return array An array of statistics for the given parameter.
     * @throws FfbTableException If an error occurs during the query execution.
     */
    public function getStatsByParameter(string $parameter): array
    {
        try {
            // Define the query to fetch statistics filtered by the given parameter.
            $query = "SELECT * FROM stats_data_parameters WHERE label = :parameter";
            // Execute the query with the parameter value and return the results.
            return $this->executeQuery($query, [':parameter' => $parameter]);
        } catch (FfbTableException $e) {
            // Handle any exceptions by wrapping them in a custom exception.
            throw new FfbTableException("Error fetching stats by parameter: " . $e->getMessage(), 500, $e);
        }
    }

    /**
     * Fetches all entity statistics from the database.
     *
     * @return array An array of entity statistics.
     */
    public function getEntitiesStats(): array
    {
        // Define the query to fetch all entity statistics.
        $query = "SELECT label FROM stats_data_entities";
        // Execute the query and return the results.
        return $this->executeQuery($query);
    }

    /**
     * Fetches statistics for a specific entity.
     *
     * @param  string $entity The entity to filter statistics by.
     * @return array An array of statistics for the given entity.
     * @throws FfbTableException If an error occurs during the query execution.
     */
    public function getStatsByEntity(string $entity): array
    {
        try {
            // Define the query to fetch statistics filtered by the given entity.
            $query = "SELECT * FROM stats_data_entities WHERE label = :entity";
            // Execute the query with the entity value and return the results.
            return $this->executeQuery($query, [':entity' => ucfirst(strtolower(trim($entity)))]);
        } catch (FfbTableException $e) {
            // Handle any exceptions by wrapping them in a custom exception.
            throw new FfbTableException("Error fetching stats by entity: " . $e->getMessage(), 500, $e);
        }
    }

    /**
     * Executes a query with the provided values and returns the results.
     *
     * @param  string $query  The SQL query to execute.
     * @param  array  $values The values to bind to the query (optional).
     * @return array The query results as an associative array.
     * @throws FfbTableException If no data is found or a PDOException occurs.
     */
    protected function executeQuery(string $query, array $values = []): array
    {
        try {
            // Prepare the SQL query using the database connection.
            $sth = $this->connection->prepare($query);
            // Execute the query with the provided values.
            $sth->execute($values);
            // Fetch all rows as an associative array.
            $rows = $sth->fetchAll(PDO::FETCH_ASSOC);

            // Check if any rows were returned.
            if (!$rows) {
                // If no rows are found, throw a custom exception.
                throw new FfbTableException("No data for arguments provided!", 404);
            } else {
                // Return the fetched rows.
                return $rows;
            }
        } catch (PDOException $e) {
            // Handle any PDO exceptions by wrapping them in a custom exception.
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }
}
