<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/ParametersTable.php";
require_once __DIR__ . "/../entity/Rating.php";

/**
 * Class RatingsTable
 * Handles operations related to the `ratings` table in the database.
 */
class RatingsTable extends ParametersTable
{
    /**
     * Get a rating by its ID.
     * @param int $id Rating ID.
     * @return Rating The rating object.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function get(int $id): Rating
    {
        $query = "SELECT * FROM `ratings` WHERE `id` = :id";
        $values = [":id" => $id];
        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No rating found with ID: $id");
        }

        return $this->parseEntity($rows[0]);
    }

    /**
     * Find ratings based on search criteria.
     * @param array $args Search arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findSearchedBy(array $args, bool $execute = true): mixed
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `ratings`" : "";
        $validColumns = $this->getTableColumns('ratings');

        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
        }

        $conditions = [];
        foreach ($args as $key => $value) {
            if (str_contains($value, '%')) {
                $conditions[] = "$key LIKE :$key";
                $values[":$key"] = $value;
            } elseif (preg_match('/[<>=!]/', $value)) {
                [$operator, $val] = explode(' ', $value, 2);
                $conditions[] = "$key $operator :$key";
                $values[":$key"] = str_replace("'", "", $val);
            } else {
                $conditions[] = "$key = :$key";
                $values[":$key"] = $value;
            }
        }

        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No ratings found matching the search criteria.");
        }

        return $this->parseEntities($rows);
    }

    /**
     * Find ratings based on order criteria.
     * This method constructs and executes a query to retrieve ratings
     * ordered by specified columns and directions.
     *
     * @param array $args Order arguments in the format ['column' => 'direction'].
     *                    Example: ['score' => 'DESC', 'id' => 'ASC'].
     * @param bool $execute Whether to execute the query or return it as a string.
     *                      If false, the constructed query string is returned.
     * @return mixed The query string (if $execute is false) or the result set (if $execute is true).
     * @throws FfbTableException If no data is found, invalid column names or directions are provided,
     *                           or a PDO exception occurs.
     */
    public function findOrderedBy(array $args, bool $execute = true): mixed
    {
        // Ensure that order arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        // Initialize the base query.
        $query = $execute ? "SELECT * FROM `ratings`" : "";

        // Array to hold ORDER BY clauses.
        $orderClauses = [];

        // Retrieve valid column names for the `ratings` table.
        $validColumns = $this->getTableColumns('ratings');

        // Validate and construct ORDER BY clauses.
        foreach ($args as $column => $direction) {
            // Check if the column name is valid.
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            // Check if the direction is valid (ASC or DESC).
            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException("Invalid order direction: '$direction'");
            }
            // Add the column and direction to the ORDER BY clause.
            $orderClauses[] = "$column $direction";
        }

        // Append the ORDER BY clause to the query if there are valid clauses.
        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
        }

        // If $execute is false, return the constructed query string.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the results.
        $rows = $this->executeQuery($query);

        // Throw an exception if no rows are found.
        if (empty($rows)) {
            throw new FfbTableException("No ratings found matching the order criteria.");
        }

        // Parse and return the result set as an array of Rating objects.
        return $this->parseEntities($rows);
    }

    /**
     * Find ratings based on limit criteria.
     * This method constructs and executes a query to retrieve a limited number of ratings,
     * optionally starting from a specified offset.
     *
     * @param array $args Limit arguments.
     *                    Example: ['limit' => 10, 'offset' => 5].
     * @param bool $execute Whether to execute the query or return it as a string.
     *                      If false, the constructed query string is returned.
     * @return mixed The query string (if $execute is false) or the result set (if $execute is true).
     * @throws FfbTableException If no data is found, invalid limit or offset values are provided,
     *                           or a PDO exception occurs.
     */
    public function findLimitedBy(array $args, bool $execute = true): mixed
    {
        // Validate the 'limit' argument to ensure it is a positive numeric value.
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        // Construct the base query with the LIMIT clause.
        $query = $execute ? "SELECT * FROM `ratings` LIMIT " . (int)$args['limit'] : " LIMIT " . (int)$args['limit'];

        // If an 'offset' is provided, validate it and append it to the query.
        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException("Invalid offset value!");
            }
            $query .= " OFFSET " . (int)$args['offset'];
        }

        // If $execute is false, return the constructed query string.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the results.
        $rows = $this->executeQuery($query);

        // Throw an exception if no rows are found.
        if (empty($rows)) {
            throw new FfbTableException("No ratings found within the specified limit and offset.");
        }

        // Parse and return the result set as an array of Rating objects.
        return $this->parseEntities($rows);
    }

    /**
     * Find all ratings based on specified arguments.
     * This method combines search, order, and limit criteria to construct
     * and execute a query that retrieves ratings matching the specified arguments.
     *
     * @param array $args Search, order, and limit arguments.
     *                    Example:
     *                    [
     *                      'search' => ['score' => '>= 4'],
     *                      'order' => ['score' => 'DESC'],
     *                      'limit' => ['limit' => 10, 'offset' => 5]
     *                    ]
     * @return array Array of Rating objects.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findAll(array $args): array
    {
        // Initialize the base query.
        $query = "SELECT * FROM `ratings`";
        $values = [];

        // If search arguments are provided, construct the WHERE clause.
        if (!empty($args['search'])) {
            // Use the findSearchedBy method to construct the search query.
            $searchQuery = $this->findSearchedBy($args['search'], false);
            // Append the WHERE clause to the base query.
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            // Prepare the values for the placeholders in the search query.
            foreach ($args['search'] as $key => $value) {
                $values[":$key"] = str_replace("'", "", explode(' ', $value)[0]);
            }
        }

        // If order arguments are provided, construct the ORDER BY clause.
        if (!empty($args['order'])) {
            // Use the findOrderedBy method to construct the order query.
            $orderQuery = $this->findOrderedBy($args['order'], false);
            // Append the ORDER BY clause to the query.
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        // If limit arguments are provided, construct the LIMIT clause.
        if (!empty($args['limit'])) {
            // Use the findLimitedBy method to construct the limit query.
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            // Append the LIMIT clause to the query.
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        // Execute the constructed query with the prepared values.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no rows are found.
        if (empty($rows)) {
            throw new FfbTableException("No ratings found matching the specified criteria.");
        }

        // Parse and return the result set as an array of Rating objects.
        return $this->parseEntities($rows);
    }

    /**
     * Parse a database row into a Rating object.
     * @param array $row The database row.
     * @return Rating The Rating object.
     */
    protected function parseEntity(array $row): Rating
    {
        return new Rating($row["id"], $row["name"]);
    }
}
