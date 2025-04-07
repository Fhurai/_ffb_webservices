<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/ParametersTable.php";
require_once __DIR__ . "/../entity/Score.php";

/**
 * Class ScoresTable
 * Handles operations related to the `scores` table in the database.
 */
class ScoresTable extends ParametersTable
{
    /**
     * Get a score by its ID.
     * @param int $id Score ID.
     * @return Score The score object.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function get(int $id): Score
    {
        // Prepare the SQL query to fetch a score by its ID.
        $query = "SELECT * FROM `scores` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // If no rows are returned, throw an exception.
        if (empty($rows)) {
            throw new FfbTableException("No score found with ID: $id");
        }

        // Parse the result into a Score object and return it.
        return $this->parseEntity($rows[0]);
    }

    /**
     * Find scores based on search criteria.
     * @param array $args Search arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findSearchedBy(array $args, bool $execute = true): mixed
    {
        // Ensure search arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `scores`" : "";

        // Validate input fields against the database schema.
        $validColumns = $this->getTableColumns('scores');
        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
        }

        // Build the WHERE clause dynamically based on search arguments.
        $conditions = [];
        foreach ($args as $key => $value) {
            if (str_contains($value, '%')) {
                // Handle wildcard searches using LIKE.
                $conditions[] = "$key LIKE :$key";
                $values[":$key"] = $value;
            } elseif (preg_match('/[<>=!]/', $value)) {
                // Handle comparison operators like <, >, !=, etc.
                [$operator, $val] = explode(' ', $value, 2);
                $conditions[] = "$key $operator :$key";
                $values[":$key"] = str_replace("'", "", $val);
            } else {
                // Default equality condition.
                $conditions[] = "$key = :$key";
                $values[":$key"] = $value;
            }
        }

        // Append conditions to the query.
        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        // Return the query string if not executing.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No scores found matching the search criteria.");
        }

        // Parse the result into an array of Score objects and return it.
        return $this->parseEntities($rows);
    }

    /**
     * Find scores based on order criteria.
     * @param array $args Order arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findOrderedBy(array $args, bool $execute = true): mixed
    {
        // Ensure order arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `scores`" : "";
        $orderClauses = [];

        // Validate and build the ORDER BY clause.
        $validColumns = $this->getTableColumns('scores');
        foreach ($args as $column => $direction) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException("Invalid order direction: '$direction'");
            }
            $orderClauses[] = "$column $direction";
        }

        // Append the ORDER BY clause to the query.
        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
        }

        // Return the query string if not executing.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No scores found matching the order criteria.");
        }

        // Parse the result into an array of Score objects and return it.
        return $this->parseEntities($rows);
    }

    /**
     * Find scores based on limit criteria.
     * @param array $args Limit arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findLimitedBy(array $args, bool $execute = true): mixed
    {
        // Validate the limit argument.
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        // Build the LIMIT clause.
        $query = $execute ? "SELECT * FROM `scores` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        // Append the OFFSET clause if provided.
        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException("Invalid offset value!");
            }
            $query .= " OFFSET " . (int) $args['offset'];
        }

        // Return the query string if not executing.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No scores found within the specified limit and offset.");
        }

        // Parse the result into an array of Score objects and return it.
        return $this->parseEntities($rows);
    }

    /**
     * Find all scores based on specified arguments.
     * @param array $args Search, order, and limit arguments.
     * @return array Array of Score objects.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findAll(array $args): array
    {
        $query = "SELECT * FROM `scores`";
        $values = [];

        // Append search criteria.
        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                $values[":$key"] = str_replace("'", "", explode(' ', $value)[0]);
            }
        }

        // Append order criteria.
        if (!empty($args['order'])) {
            $orderQuery = $this->findOrderedBy($args['order'], false);
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        // Append limit criteria.
        if (!empty($args['limit'])) {
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No scores found matching the specified criteria.");
        }

        // Parse the result into an array of Score objects and return it.
        return $this->parseEntities($rows);
    }

    /**
     * Parse a database row into a Score object.
     * @param array $row The database row.
     * @return Score The Score object.
     */
    protected function parseEntity(array $row): Score
    {
        // Create and return a new Score object using the data from the row.
        return new Score($row["id"], $row["name"]);
    }
}
