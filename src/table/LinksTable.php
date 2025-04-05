<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Link.php";
require_once __DIR__ . "/../builder/LinkBuilder.php";

class LinksTable extends EntitiesTable{

    /**
     * Retrieves a Link entity by its ID.
     *
     * @param int $id The ID of the Link to retrieve.
     * @return Link The Link entity.
     * @throws FfbTableException If no data is found for the provided ID.
     */
    public function get(int $id): Link
    {
        // Prepare the SQL query to select a link by its ID
        $query = "SELECT * FROM `links` WHERE `id` = :id";
        
        // Bind the ID parameter to the query
        $values = [":id" => $id];

        // Execute the query and fetch the result rows
        $rows = $this->executeQuery($query, $values);

        // If no rows are returned, throw an exception indicating no data was found
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the first row into a Link entity and return it
        return $this->parseEntity($rows[0]);
    }

    /**
     * Searches for Links based on provided arguments.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return array|string The resulting Links or the query string.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        // Initialize an empty array for query values and a flag for the first condition
        $values = [];
        $first = true;

        // Start building the query string
        $query = $execute ? "SELECT * FROM `links`" : "";

        // Iterate over the search arguments to build the WHERE clause
        foreach ($args as $key => $value) {
            if ($first) {
                $query .= " WHERE ";
                $first = false;
            } else {
                $query .= " AND ";
            }

            // Check if the value contains special operators (e.g., <, >, !, %)
            if ((strpos($value, "<") !== false) || (strpos($value, ">") !== false) || (strpos($value, "!") !== false) || (strpos($value, "%"))) {
                $array = explode(' ', $value);
                $query .= " " . $key . " " . $array[0] . " :" . $key;
                $values[":" . $key] = str_replace("'", "", $array[1]);
            } else {
                $query .= " " . $key . " = :" . $key;
                $values[":" . $key] = $value;
            }
        }

        // If execute is false, return the query string
        if (!$execute) {
            return $query;
        }

        // Execute the query and parse the result rows into Link entities
        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Orders Links based on provided arguments.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return array|string The resulting Links or the query string.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        // Initialize an empty array for query values and a flag for the first condition
        $values = [];
        $first = true;

        // Start building the query string
        $query = $execute ? "SELECT * FROM `links`" : "";

        // Iterate over the ordering arguments to build the ORDER BY clause
        foreach ($args as $key => $value) {
            if ($first) {
                $query .= " ORDER BY " . $key . " " . $value;
                $first = false;
            } else {
                $query .= "OFFSET " . $key . " " . $value;
            }
        }

        // If execute is false, return the query string
        if (!$execute) {
            return $query;
        }

        // Execute the query and parse the result rows into Link entities
        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Limits the number of Links returned based on provided arguments.
     *
     * @param array $args The limit and offset criteria.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return array|string The resulting Links or the query string.
     * @throws FfbTableException If no limit is provided.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Initialize an empty array for query values
        $values = [];

        // Start building the query string
        $query = $execute ? "SELECT * FROM `links`" : "";

        // Add the LIMIT clause if provided in the arguments
        if (!empty($args) && is_array($args) && array_key_exists("limit", $args)) {
            $query .= " LIMIT " . $args["limit"];
        } else {
            throw new FfbTableException("No limit provided!");
        }

        // Add the OFFSET clause if provided in the arguments
        if (!empty($args) && is_array($args) && array_key_exists("offset", $args)) {
            $query .= ", " . $args["offset"];
        }

        // If execute is false, return the query string
        if (!$execute) {
            return $query;
        }

        // Execute the query and parse the result rows into Link entities
        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Retrieves all Links based on provided arguments.
     *
     * @param array $args The search, order, and limit criteria.
     * @return array The resulting Links.
     */
    public function findAll(array $args): array
    {
        // Initialize an empty array for query values
        $values = [];

        // Start building the base query string
        $query = "SELECT * FROM `links`";

        // Add the search conditions if provided in the arguments
        if (array_key_exists("search", $args)) {
            $query .= $this->findSearchedBy($args["search"], false);
            foreach (array_keys($args["search"]) as $key) {
                $array = explode(' ', $args["search"][$key]);
                $values[":" . $key] = str_replace("'", "", $array[1]);
            }
        }

        // Add the ordering conditions if provided in the arguments
        if (array_key_exists("order", $args)) {
            $query .= $this->findOrderedBy($args["order"], false);
        }

        // Add the limit and offset conditions if provided in the arguments
        if (array_key_exists("limit", $args)) {
            $query .= $this->findLimitedBy($args["limit"], false);
        }

        // Execute the query and parse the result rows into Link entities
        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Creates a new Link entity in the database.
     *
     * @param Entity $entity The Link entity to create.
     * @return Link The created Link entity with its ID set.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Link.
     */
    public function create(Entity $entity): Link
    {
        // Validate that the provided entity is an instance of Link
        if (!$entity instanceof Link) {
            throw new \InvalidArgumentException('Expected instance of Link');
        }
    
        // Prepare the SQL query to insert a new Link entity
        $query = "INSERT INTO `links` (`url`, `fanfiction_id`, `creation_date`, `update_date`, `delete_date`) 
                  VALUES (:url, :fanfiction_id, :creation_date, :update_date, :delete_date)";
        
        // Bind the entity properties to the query parameters
        $values = [
            ":url" => $entity->getUrl(),
            ":fanfiction_id" => $entity->getFanfictionId(),
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];
    
        // Execute the query to insert the new Link entity
        $this->executeQuery($query, $values);
    
        // Set the ID of the entity to the last inserted ID
        $entity->setId($this->getLastInsertId());
        
        // Return the created Link entity
        return $entity;
    }

    /**
     * Updates an existing Link entity in the database.
     *
     * @param Entity $entity The Link entity to update.
     * @return Link The updated Link entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Link.
     */
    public function update(Entity $entity): Link
    {
        // Validate that the provided entity is an instance of Link
        if (!$entity instanceof Link) {
            throw new \InvalidArgumentException('Expected instance of Link');
        }

        // Prepare the SQL query to update an existing Link entity
        $query = "UPDATE `links` 
                  SET `url` = :url, `fanfiction_id` = :fanfiction_id, `update_date` = :update_date, `delete_date` = :delete_date 
                  WHERE `id` = :id";
        
        // Bind the entity properties to the query parameters
        $values = [
            ":id" => $entity->getId(),
            ":url" => $entity->getUrl(),
            ":fanfiction_id" => $entity->getFanfictionId(),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null
        ];

        // Execute the query to update the Link entity
        $this->executeQuery($query, $values);

        // Return the updated Link entity
        return $entity;
    }

    /**
     * Soft deletes a Link entity by setting its delete_date to the current timestamp.
     *
     * @param int $id The ID of the Link to delete.
     * @return bool True if the deletion was successful, false otherwise.
     */
    public function delete(int $id): bool
    {
        // Prepare the SQL query to soft delete a Link entity by setting its delete_date
        $query = "UPDATE `links` SET `delete_date` = NOW() WHERE `id` = :id";
        
        // Bind the ID parameter to the query
        $values = [":id" => $id];

        // Execute the query and check the number of affected rows
        $result = $this->executeQuery($query, $values);

        // Return true if at least one row was affected, false otherwise
        return $result > 0;
    }

    /**
     * Restores a soft-deleted Link entity by setting its delete_date to NULL.
     *
     * @param int $id The ID of the Link to restore.
     * @return bool True if the restoration was successful, false otherwise.
     */
    public function restore(int $id): bool
    {
        // Prepare the SQL query to restore a soft-deleted Link entity by setting its delete_date to NULL
        $query = "UPDATE `links` SET `delete_date` = NULL WHERE `id` = :id";
        
        // Bind the ID parameter to the query
        $values = [":id" => $id];

        // Execute the query and check the number of affected rows
        $result = $this->executeQuery($query, $values);

        // Return true if at least one row was affected, false otherwise
        return $result > 0;
    }

    /**
     * Permanently removes a Link entity from the database.
     *
     * @param int $id The ID of the Link to remove.
     * @return bool True if the removal was successful, false otherwise.
     */
    public function remove(int $id): bool
    {
        // Prepare the SQL query to permanently delete a Link entity
        $query = "DELETE FROM `links` WHERE `id` = :id";
        
        // Bind the ID parameter to the query
        $values = [":id" => $id];

        // Execute the query and check the number of affected rows
        $result = $this->executeQuery($query, $values);

        // Return true if at least one row was affected, false otherwise
        return $result > 0;
    }

    /**
     * Parses a database row into a Link entity.
     *
     * @param array $row The database row to parse.
     * @return Link The parsed Link entity.
     */
    protected function parseEntity(array $row): Link
    {
        // Use the LinkBuilder to construct a Link entity from the database row
        return (new LinkBuilder())
            ->withId($row["id"])
            ->withUrl($row["url"])
            ->withFanfictionId($row["fanfiction_id"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}