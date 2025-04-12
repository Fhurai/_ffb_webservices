<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Author.php";
require_once __DIR__ . "/../builder/AuthorBuilder.php";

class AuthorsTable extends EntitiesTable
{
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
        // Ensure search arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `authors`" : "";

        // Validate that the provided columns exist in the table.
        $validColumns = $this->getTableColumns('authors');
        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
        }

        $conditions = [];
        foreach ($args as $key => $value) {
            // Handle LIKE conditions for partial matches.
            if (str_contains($value, '%')) {
                $conditions[] = "$key LIKE :$key";
                $values[":$key"] = $value;
            } else if (str_contains(strtolower($value), 'null')){
                $conditions[] = "$key IS NULL";
            } elseif (str_contains(strtolower($value), 'not null')) {
                $conditions[] = "$key IS NOT NULL";
            } elseif (str_contains(strtolower($value), 'in')) {
                $values[":$key"] = str_replace("'", "", explode(' ', $value)[1]);
                if (is_array($values[":$key"])) {
                    $conditions[] = "$key IN (" . implode(',', array_map(fn($v) => "'$v'", $values[":$key"])) . ")";
                }
                // Handle operators like <, >, =, etc.
            } elseif (preg_match('/[<>=!]/', $value)) {
                [$operator, $val] = explode(' ', $value, 2);
                $conditions[] = "$key $operator :$key";
                $values[":$key"] = str_replace("'", "", $val);
                // Handle exact matches.
            } else {
                $conditions[] = "$key = :$key";
                $values[":$key"] = $value;
            }
        }

        // Append conditions to the query if any exist.
        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        // Return the query string if execution is not required.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch results.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no results are found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the results as Author entities.
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
        // Ensure order arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `authors`" : "";
        $orderClauses = [];

        // Validate that the provided columns exist in the table.
        $validColumns = $this->getTableColumns('authors');
        foreach ($args as $column => $direction) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            // Validate the order direction (ASC or DESC).
            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException("Invalid order direction: '$direction'");
            }
            $orderClauses[] = "$column $direction";
        }

        // Append order clauses to the query if any exist.
        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
        }

        // Return the query string if execution is not required.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch results.
        $rows = $this->executeQuery($query);

        // Throw an exception if no results are found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the results as Author entities.
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
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $query = $execute ? "SELECT * FROM `authors` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException("Invalid offset value!");
            }
            $query .= " OFFSET " . (int) $args['offset'];
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query);

        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

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
        $query = "SELECT * FROM `authors`";
        $values = [];

        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                if (str_contains($value, '%')) {
                    $values[":$key"] = str_replace("'", "", explode(' ', $value)[0]);
                }
            }
        }

        if (!empty($args['order'])) {
            $orderQuery = $this->findOrderedBy($args['order'], false);
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        if (!empty($args['limit'])) {
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

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
            ":delete_date" => null,
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
                  SET `name` = :name, `update_date` = :update_date
                  WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":update_date" => (new DateTime("now", new DateTimeZone("Europe/Paris")))->format("Y-m-d H:i:s")
        ];

        $result = $this->executeQuery($query, $values);

        if($result === 0){
            throw new FfbTableException("Update failed for the author is deleted", 403);
        }

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
        $query = "UPDATE `authors` SET `delete_date` = NOW() WHERE `id` = :id AND `delete_date` IS NULL";
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
        $query = "UPDATE `authors` SET `delete_date` = NULL WHERE `id` = :id AND `delete_date` IS NOT NULL";
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
        $query = "DELETE FROM `authors` WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result === 1;
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
        return (new AuthorBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}
