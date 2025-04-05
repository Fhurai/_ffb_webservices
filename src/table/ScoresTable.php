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
        // Prepare the query to fetch the score by ID.
        $query = "SELECT * FROM `scores` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

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
    public function findSearchedBy(array $args, $execute = true): mixed
    {
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `scores`" : "";

        if (empty($args)) {
            throw new FfbTableException("No data for arguments provided!");
        }

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
    public function findOrderedBy(array $args, $execute = true): mixed
    {
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `scores`" : "";

        if (empty($args)) {
            throw new FfbTableException("No data for arguments provided!");
        }

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
    public function findLimitedBy(array $args, $execute = true): mixed
    {
        $values = [];
        $query = $execute ? "SELECT * FROM `scores`" : "";

        if (empty($args)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Add the LIMIT clause to the query.
        if (!empty($args) && is_array($args) && array_key_exists("limit", $args)) {
            // Check if the limit is a valid integer.
            if (is_numeric($args["limit"]) && $args["limit"] < 0) {
                throw new FfbTableException("Limit must be a non-negative integer!");
            }
            $query .= " LIMIT " . $args["limit"];
        } else {
            throw new FfbTableException("No limit provided!");
        }

        // Add the OFFSET clause to the query if provided.
        if (!empty($args) && is_array($args) && array_key_exists("offset", $args)) {
            // Check if the offset is a valid integer.
            if (is_numeric($args["offset"]) && $args["offset"] < 0) {
                throw new FfbTableException("Offset must be a non-negative integer!");
            }
            $query .= ", " . $args["offset"];
        }

        // Return the query string if not executing.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

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
        $values = [];
        $query = "SELECT * FROM `scores`";

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
