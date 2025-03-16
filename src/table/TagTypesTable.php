<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/ParametersTable.php";
require_once __DIR__ . "/../entity/TagType.php";

/**
 * Class TagTypesTable
 * Handles operations related to the `tag_types` table in the database.
 */
class TagTypesTable extends ParametersTable
{
    /**
     * Get a tag type by its ID.
     * @param int $id Tag type ID.
     * @return TagType The tag type object.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function get(int $id): TagType
    {
        // Prepare the query to fetch the tag type by ID.
        $query = "SELECT * FROM `tag_types` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Parse the result into a TagType object and return it.
        return $this->parseTagTypes($rows)[0];
    }

    /**
     * Find tag types based on search criteria.
     * @param array $args Search arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findSearchedBy(array $args, $execute = true): mixed
    {
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `tag_types`" : "";

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

        // Parse the result into an array of TagType objects and return it.
        return $this->parseTagTypes($rows);
    }

    /**
     * Find tag types based on order criteria.
     * @param array $args Order arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findOrderedBy(array $args, $execute = true): mixed
    {
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `tag_types`" : "";

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

        // Parse the result into an array of TagType objects and return it.
        return $this->parseTagTypes($rows);
    }

    /**
     * Find tag types based on limit criteria.
     * @param array $args Limit arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findLimitedBy(array $args, $execute = true): mixed
    {
        $values = [];
        $query = $execute ? "SELECT * FROM `tag_types`" : "";

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

        // Parse the result into an array of TagType objects and return it.
        return $this->parseTagTypes($rows);
    }

    /**
     * Find all tag types based on specified arguments.
     * @param array $args Search, order, and limit arguments.
     * @return array Array of TagType objects.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findAll(array $args): array
    {
        $values = [];
        $query = "SELECT * FROM `tag_types`";

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

        // Parse the result into an array of TagType objects and return it.
        return $this->parseTagTypes($rows);
    }

    /**
     * Parse a database row into a TagType object.
     * @param array $row The database row.
     * @return TagType The TagType object.
     */
    private function parseTagType(array $row): TagType
    {
        // Create and return a new TagType object using the data from the row.
        return new TagType($row["id"], $row["name"]);
    }

    /**
     * Parse multiple database rows into an array of TagType objects.
     * @param array $rows The database rows.
     * @return array Array of TagType objects.
     */
    private function parseTagTypes(array $rows): array
    {
        $tagTypes = [];
        foreach ($rows as $row) {
            $tagTypes[] = $this->parseTagType($row);
        }
        return $tagTypes;
    }
}
