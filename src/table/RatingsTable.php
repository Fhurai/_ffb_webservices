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
        // Prepare the query to fetch the rating by ID.
        $query = "SELECT * FROM `ratings` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Parse the result into a Rating object and return it.
        return $this->parseRatings($rows)[0];
    }

    /**
     * Find ratings based on search criteria.
     * @param array $args Search arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findSearchedBy(array $args, $execute = true): mixed
    {
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `ratings`" : "";

        // Build the query based on the provided arguments.
        foreach ($args as $key => $value) {
            if ($first) {
                $query .= " WHERE ";
                $first = false;
            } else {
                $query .= " AND ";
            }

            // Handle different types of conditions.
            if ((strpos($value, "<") !== false) || (strpos($value, ">") !== false) || (strpos($value, "!") !== false) || (strpos($value, "%"))) {
                $array = explode(' ', $value);
                $query .= " " . $key . " " . $array[0] . " :" . $key;
                $values[":" . $key] = str_replace("'", "", $array[1]);
            } else {
                $query .= " " . $key . " = :" . $key;
                $values[":" . $key] = $value;
            }
        }

        // Return the query string if not executing.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Parse the result into an array of Rating objects and return it.
        return $this->parseRatings($rows);
    }

    /**
     * Find ratings based on order criteria.
     * @param array $args Order arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findOrderedBy(array $args, $execute = true): mixed
    {
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `ratings`" : "";

        // Build the ORDER BY clause based on the provided arguments.
        foreach ($args as $key => $value) {
            if ($first) {
                $query .= " ORDER BY " . $key . " " . $value;
                $first = false;
            } else {
                $query .= "OFFSET " . $key . " " . $value;
            }
        }

        // Return the query string if not executing.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Parse the result into an array of Rating objects and return it.
        return $this->parseRatings($rows);
    }

    /**
     * Find ratings based on limit criteria.
     * @param array $args Limit arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findLimitedBy(array $args, $execute = true): mixed
    {
        $values = [];
        $query = $execute ? "SELECT * FROM `ratings`" : "";

        // Add the LIMIT clause to the query.
        if (!empty($args) && is_array($args) && array_key_exists("limit", $args)) {
            $query .= " LIMIT " . $args["limit"];
        } else {
            throw new FfbTableException("No limit provided!");
        }

        // Add the OFFSET clause to the query if provided.
        if (!empty($args) && is_array($args) && array_key_exists("offset", $args)) {
            $query .= ", " . $args["offset"];
        }

        // Return the query string if not executing.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Parse the result into an array of Rating objects and return it.
        return $this->parseRatings($rows);
    }

    /**
     * Find all ratings based on specified arguments.
     * @param array $args Search, order, and limit arguments.
     * @return array Array of Rating objects.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findAll(array $args): array
    {
        $values = [];
        $query = "SELECT * FROM `ratings`";

        // Append the conditions, order, and limit clauses to the query.
        if (array_key_exists("search", $args)) {
            $query .= $this->findSearchedBy($args["search"], false);
            foreach (array_keys($args["search"]) as $key) {
                $array = explode(' ', $args["search"][$key]);
                $values[":" . $key] = str_replace("'", "", $array[1]);
            }
        }

        if (array_key_exists("order", $args)) {
            $query .= $this->findOrderedBy($args["order"], false);
        }

        if (array_key_exists("limit", $args)) {
            $query .= $this->findLimitedBy($args["limit"], false);
        }

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Parse the result into an array of Rating objects and return it.
        return $this->parseRatings($rows);
    }

    /**
     * Parse a database row into a Rating object.
     * @param array $row The database row.
     * @return Rating The Rating object.
     */
    private function parseRating(array $row): Rating
    {
        // Create and return a new Rating object using the data from the row.
        return new Rating($row["id"], $row["name"]);
    }

    /**
     * Parse multiple database rows into an array of Rating objects.
     * @param array $rows The database rows.
     * @return array Array of Rating objects.
     */
    private function parseRatings(array $rows): array
    {
        $ratings = [];
        foreach ($rows as $row) {
            $ratings[] = $this->parseRating($row);
        }
        return $ratings;
    }
}
