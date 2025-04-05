<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Author.php";
require_once __DIR__ . "/../builder/AuthorBuilder.php";

class AuthorsTable extends EntitiesTable{

    /**
     * Get an entity by its ID.
     * Retrieves an Author entity from the database by its unique identifier.
     *
     * @param int $id The ID of the entity.
     * @return Author The entity object.
     */
    public function get(int $id): Author
    {
        // Prepare the query to fetch the author by ID.
        // Bind the ID parameter to ensure the correct entity is retrieved.
        // Execute the query and fetch the result from the database.
        // Parse the result into an Author object and return it.
        $query = "SELECT * FROM `authors` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the result into a Author object and return it.
        return $this->parseEntity($rows[0]);
    }

    /**
     * Find entities based on search criteria.
     * Searches for Author entities in the database that match the given criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array The search results as an array of Author objects.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        // Build the query dynamically based on the provided search criteria.
        // Use placeholders to prevent SQL injection.
        // Execute the query if $execute is true, otherwise return the query string.
        // Parse the results into an array of Author objects and return them.
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `authors`" : "";

        foreach ($args as $key => $value) {
            if ($first) {
                $query .= " WHERE ";
                $first = false;
            } else {
                $query .= " AND ";
            }

            if ((strpos($value, "<") !== false) || (strpos($value, ">") !== false) || (strpos($value, "!") !== false) || (strpos($value, "%"))) {
                $array = explode(' ', $value);
                $query .= " " . $key . " " . $array[0] . " :" . $key;
                $values[":" . $key] = str_replace("'", "", $array[1]);
            } else {
                $query .= " " . $key . " = :" . $key;
                $values[":" . $key] = $value;
            }
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Find entities ordered by specific criteria.
     * Retrieves Author entities from the database ordered by the specified criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array The ordered results as an array of Author objects.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        // Construct the query to include ORDER BY clauses based on the criteria.
        // Ensure proper ordering syntax to avoid SQL errors.
        // Execute the query if $execute is true, otherwise return the query string.
        // Parse the results into an array of Author objects and return them.
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `authors`" : "";

        foreach ($args as $key => $value) {
            if ($first) {
                $query .= " ORDER BY " . $key . " " . $value;
                $first = false;
            } else {
                $query .= "OFFSET " . $key . " " . $value;
            }
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Find a limited number of entities based on criteria.
     * Retrieves a limited number of Author entities from the database based on the given criteria.
     *
     * @param array $args The limiting criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array The limited results as an array of Author objects.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Add LIMIT and OFFSET clauses to the query based on the provided criteria.
        // Validate that a limit is provided to avoid errors.
        // Execute the query if $execute is true, otherwise return the query string.
        // Parse the results into an array of Author objects and return them.
        $values = [];
        $query = $execute ? "SELECT * FROM `authors`" : "";

        if (!empty($args) && is_array($args) && array_key_exists("limit", $args)) {
            $query .= " LIMIT " . $args["limit"];
        } else {
            throw new FfbTableException("No limit provided!");
        }

        if (!empty($args) && is_array($args) && array_key_exists("offset", $args)) {
            $query .= ", " . $args["offset"];
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Find all entities based on criteria.
     * Retrieves all Author entities from the database that match the given criteria.
     *
     * @param array $args The criteria as key-value pairs.
     * @return array The results as an array of Author objects.
     */
    public function findAll(array $args): array
    {
        // Combine search, order, and limit criteria into a single query.
        // Use helper methods to build each part of the query dynamically.
        // Execute the query and fetch the results from the database.
        // Parse the results into an array of Author objects and return them.
        $values = [];
        $query = "SELECT * FROM `authors`";

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

        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Create a new entity.
     * Inserts a new Author entity into the database.
     *
     * @param Author $entity The entity to create.
     * @return Author The created entity.
     */
    public function create(Entity $entity): Author
    {
        // Validate that the provided entity is an instance of Author.
        // Prepare the INSERT query with placeholders for the entity's properties.
        // Bind the entity's properties to the query parameters.
        // Execute the query and set the ID of the newly created entity.
        // Return the created entity.
        if (!$entity instanceof Author) {
            throw new \InvalidArgumentException('Expected instance of Author');
        }
    
        $query = "INSERT INTO `authors` (`name`, `creation_date`, `update_date`, `delete_date`) 
                  VALUES (:name, :creation_date, :update_date, :delete_date)";
        $values = [
            ":name" => $entity->getName(),
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];
    
        $this->executeQuery($query, $values);
    
        $entity->setId($this->getLastInsertId());
        return $entity;
    }

    /**
     * Update an existing entity.
     * Updates the properties of an existing Author entity in the database.
     *
     * @param Author $entity The entity to update.
     * @return Author The updated entity.
     */
    public function update(Entity $entity): Author
    {
        // Validate that the provided entity is an instance of Author.
        // Prepare the UPDATE query with placeholders for the entity's properties.
        // Bind the entity's properties to the query parameters.
        // Execute the query to update the entity in the database.
        // Return the updated entity.
        if (!$entity instanceof Author) {
            throw new \InvalidArgumentException('Expected instance of Author');
        }

        $query = "UPDATE `authors` 
                  SET `name` = :name, `update_date` = :update_date, `delete_date` = :delete_date 
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null
        ];

        $this->executeQuery($query, $values);

        return $entity;
    }

    /**
     * Soft delete an entity.
     * Marks an Author entity as deleted by setting a delete date.
     *
     * @param int $id The ID of the entity to delete.
     * @return bool True if the entity was soft deleted, false otherwise.
     */
    public function delete(int $id): bool
    {
        // Prepare the query to set the delete date for the specified entity.
        // Bind the ID parameter to ensure the correct entity is updated.
        // Execute the query and return true if the operation was successful.
        $query = "UPDATE `authors` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Restore a soft-deleted entity.
     * Removes the delete date from a soft-deleted Author entity.
     *
     * @param int $id The ID of the entity to restore.
     * @return bool True if the entity was restored, false otherwise.
     */
    public function restore(int $id): bool
    {
        // Prepare the query to remove the delete date for the specified entity.
        // Bind the ID parameter to ensure the correct entity is updated.
        // Execute the query and return true if the operation was successful.
        $query = "UPDATE `authors` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Hard delete an entity.
     * Permanently removes an Author entity from the database.
     *
     * @param int $id The ID of the entity to remove.
     * @return bool True if the entity was hard deleted, false otherwise.
     */
    public function remove(int $id): bool
    {
        // Prepare the DELETE query to permanently remove the specified entity.
        // Bind the ID parameter to ensure the correct entity is deleted.
        // Execute the query and return true if the operation was successful.
        $query = "DELETE FROM `authors` WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Parse a database row into an Author entity.
     * Converts a database row into an Author object.
     *
     * @param array $row The database row to parse.
     * @return Author The parsed Author entity.
     */
    protected function parseEntity(array $row): Author
    {
        // Map the database row fields to the properties of an Author object.
        // Use the AuthorBuilder to construct the Author object.
        // Return the constructed Author object.
        return (new AuthorBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}