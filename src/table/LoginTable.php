<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/../exception/FfbTableException.php";

readonly class LoginTable
{
    /**
     * @var PDO Database connection instance.
     */
    private PDO $connection;

    /**
     * LoginTable constructor.
     * Initializes the database connection for the login table.
     */
    public function __construct(bool $testMode)
    {
        if (!$testMode) {
            // Establish a database connection using the "main" database and "guest" user.
            $this->connection = Connection::getDatabase("main", "guest");
        } else {
            $this->connection = Connection::getDatabase("tests", "user");
        }
    }

    /**
     * Get user statistics by username.
     * Fetches user statistics from the database based on the provided username.
     *
     * @param  string $username The username to search for.
     * @return array The user statistics as an associative array.
     * @throws FfbTableException If no data is found or a PDOException occurs.
     */
    public function getUser(string $username): array
    {
        // Define the query to fetch user statistics.
        $query = "SELECT * FROM view_data_users WHERE username = :username";
        // Execute the query with the parameter value and return the results.
        return $this->executeQuery($query, [':username' => $username]);
    }

    /**
     * Execute a query with the provided values.
     * Prepares and executes an SQL query with bound values, returning the results.
     *
     * @param  string $query  The SQL query to execute.
     * @param  array  $values The values to bind to the query.
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
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }
}
