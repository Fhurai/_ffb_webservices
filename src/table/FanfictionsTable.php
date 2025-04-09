<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Fanfiction.php";
require_once __DIR__ . "/../builder/FanfictionBuilder.php";

/**
 * FanfictionsTable class.
 * Handles database operations for the Fanfiction entity, including CRUD operations
 * and managing associations such as fandoms, characters, relations, and tags.
 */
class FanfictionsTable extends EntitiesTable
{
    /**
     * Retrieve a Fanfiction entity by its ID.
     *
     * @param int $id The ID of the Fanfiction.
     * @return Fanfiction The retrieved Fanfiction entity.
     * @throws FfbTableException If no data is found for the given ID.
     */
    public function get(int $id): Fanfiction
    {
        // Prepare the SQL query to fetch a fanfiction by its ID
        $query = "SELECT * FROM `fanfictions` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the result into a Fanfiction entity and return it
        return $this->parseEntity($rows[0]);
    }

    /**
     * Search for Fanfictions based on specific criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The search results as an array of Fanfiction objects or the query string.
     * @throws FfbTableException If no search arguments are provided or no data is found.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        // Validate that search arguments are provided
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `fanfictions`" : "";

        // Validate column names against the database schema
        $validColumns = $this->getTableColumns('fanfictions');
        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
        }

        // Build the WHERE clause based on the search arguments
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

        // Append the WHERE clause to the query
        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        // Return the query string if execution is not required
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the results
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the results into Fanfiction entities and return them
        return $this->parseEntities($rows);
    }

    /**
     * Retrieve Fanfictions ordered by specific criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The ordered results as an array of Fanfiction objects or the query string.
     * @throws FfbTableException If no order arguments are provided or no data is found.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        // Validate that order arguments are provided
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `fanfictions`" : "";
        $orderClauses = [];

        // Validate column names and order directions
        $validColumns = $this->getTableColumns('fanfictions');
        foreach ($args as $column => $direction) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException("Invalid order direction: '$direction'");
            }
            $orderClauses[] = "$column $direction";
        }

        // Append the ORDER BY clause to the query
        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
        }

        // Return the query string if execution is not required
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the results
        $rows = $this->executeQuery($query);

        // Throw an exception if no data is found
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the results into Fanfiction entities and return them
        return $this->parseEntities($rows);
    }

    /**
     * Retrieve a limited number of Fanfictions.
     *
     * @param array $args The limiting criteria, including 'limit' and optional 'offset'.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The limited results as an array of Fanfiction objects or the query string.
     * @throws FfbTableException If the limit or offset is invalid or no data is found.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Validate the limit argument
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        // Build the LIMIT clause
        $query = $execute ? "SELECT * FROM `fanfictions` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        // Append the OFFSET clause if provided
        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException("Invalid offset value!");
            }
            $query .= " OFFSET " . (int) $args['offset'];
        }

        // Return the query string if execution is not required
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the results
        $rows = $this->executeQuery($query);

        // Throw an exception if no data is found
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the results into Fanfiction entities and return them
        return $this->parseEntities($rows);
    }

    /**
     * Retrieve all Fanfictions based on criteria.
     *
     * @param array $args The criteria, including search, order, and limit options.
     * @return array The results as an array of Fanfiction objects.
     * @throws FfbTableException If no data is found.
     */
    public function findAll(array $args): array
    {
        // Start with the base query to select all fanfictions
        $query = "SELECT * FROM `fanfictions`";
        $values = [];

        // Append search conditions if provided
        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                $values[":$key"] = str_replace("'", "", explode(' ', $value)[0]);
            }
        }

        // Append order conditions if provided
        if (!empty($args['order'])) {
            $orderQuery = $this->findOrderedBy($args['order'], false);
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        // Append limit conditions if provided
        if (!empty($args['limit'])) {
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        // Execute the final query and fetch the results
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the results into Fanfiction entities and return them
        return $this->parseEntities($rows);
    }

    /**
     * Create a new Fanfiction entity in the database.
     *
     * @param Entity $entity The Fanfiction entity to create.
     * @return Fanfiction The created Fanfiction entity with its ID set.
     * @throws \InvalidArgumentException If the provided entity is not a Fanfiction.
     */
    public function create(Entity $entity): Fanfiction
    {
        // Ensure the provided entity is an instance of Fanfiction
        if (!$entity instanceof Fanfiction) {
            throw new \InvalidArgumentException('Expected instance of Fanfiction');
        }

        // SQL query to insert a new fanfiction record
        $query = "INSERT INTO `fanfictions` (`name`, `author_id`, `rating_id`, `description`, `language_id`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:name, :author_id, :rating_id, :description, :language_id, :creation_date, :update_date, :delete_date)";
        // Prepare the values for the query using the entity's properties
        $values = [
            ":name" => $entity->getName(),
            ":author_id" => $entity->getAuthorId(),
            ":rating_id" => $entity->getRatingId(),
            ":description" => $entity->getDescription(),
            ":language_id" => $entity->getLanguageId(),
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        // Execute the query to insert the record
        $this->executeQuery($query, $values);
        // Set the ID of the entity to the last inserted ID
        $entity->setId($this->getLastInsertId());

        // Update the associations (e.g., fandoms, characters, tags) for the entity
        $this->updateAssociations($entity);

        // Return the created entity
        return $entity;
    }

    /**
     * Update an existing Fanfiction entity in the database.
     *
     * @param Entity $entity The Fanfiction entity to update.
     * @return Fanfiction The updated Fanfiction entity.
     * @throws \InvalidArgumentException If the provided entity is not a Fanfiction.
     */
    public function update(Entity $entity): Fanfiction
    {
        // Ensure the provided entity is an instance of Fanfiction
        if (!$entity instanceof Fanfiction) {
            throw new \InvalidArgumentException('Expected instance of Fanfiction');
        }

        // SQL query to update the fanfiction record
        $query = "UPDATE `fanfictions`
                  SET `name` = :name, `author_id` = :author_id, `rating_id` = :rating_id, `description` = :description, `language_id` = :language_id, `update_date` = :update_date, `delete_date` = :delete_date
                  WHERE `id` = :id";
        // Prepare the values for the query using the entity's properties
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":author_id" => $entity->getAuthorId(),
            ":rating_id" => $entity->getRatingId(),
            ":description" => $entity->getDescription(),
            ":language_id" => $entity->getLanguageId(),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        // Execute the query to update the record
        $this->executeQuery($query, $values);

        // Update the associations (e.g., fandoms, characters, tags) for the entity
        $this->updateAssociations($entity);

        // Return the updated entity
        return $entity;
    }

    /**
     * Update associations for a Fanfiction entity.
     *
     * @param Fanfiction $entity The Fanfiction entity whose associations are to be updated.
     * @return void
     */
    private function updateAssociations(Fanfiction $entity): void
    {
        // Update the association table for fandoms
        if($entity->hasFandoms()) {
            $this->updateAssociationTable('fanfiction_fandoms', 'fandom_id', $entity->getId(), $entity->getFandoms());
        }
        // Update the association table for characters
        if($entity->hasCharacters()){
            $this->updateAssociationTable('fanfiction_characters', 'character_id', $entity->getId(), $entity->getCharacters());
        }
        // Update the association table for relations
        if($entity->hasRelations()){
            $this->updateAssociationTable('fanfiction_relations', 'relation_id', $entity->getId(), $entity->getRelations());
        }
        // Update the association table for tags
        if($entity->hasTags()){
            $this->updateAssociationTable('fanfiction_tags', 'tag_id', $entity->getId(), $entity->getTags());
        }
    }

    /**
     * Update a specific association table for a Fanfiction entity.
     *
     * @param string $table The name of the association table.
     * @param string $column The column name for the associated entity.
     * @param int $fanfictionId The ID of the Fanfiction entity.
     * @param array|null $items The associated items to update.
     * @return void
     */
    private function updateAssociationTable(string $table, string $column, int $fanfictionId, ?array $items): void
    {
        // Delete all existing associations for the given fanfiction ID
        $queryDelete = "DELETE FROM `$table` WHERE `fanfiction_id` = :fanfiction_id";
        $this->executeQuery($queryDelete, [":fanfiction_id" => $fanfictionId]);

        // If there are new items to associate, insert them into the association table
        if ($items) {
            $queryInsert = "INSERT INTO `$table` (`fanfiction_id`, `$column`) VALUES (:fanfiction_id, :item_id)";
            foreach ($items as $item) {
                // Execute the insert query for each associated item
                $this->executeQuery($queryInsert, [
                    ":fanfiction_id" => $fanfictionId,
                    ":item_id" => $item->getId(),
                ]);
            }
        }
    }

    /**
     * Soft delete a Fanfiction entity by setting its delete date.
     *
     * @param int $id The ID of the Fanfiction to delete.
     * @return bool True if the entity was soft deleted, false otherwise.
     */
    public function delete(int $id): bool
    {
        // SQL query to set the delete date for the fanfiction record
        $query = "UPDATE `fanfictions` SET `delete_date` = NOW() WHERE `id` = :id";
        // Prepare the values for the query
        $values = [":id" => $id];
        // Execute the query and check the number of affected rows
        $result = $this->executeQuery($query, $values);
        // Return true if at least one row was affected, otherwise false
        return $result > 0;
    }

    /**
     * Restore a soft-deleted Fanfiction entity by removing its delete date.
     *
     * @param int $id The ID of the Fanfiction to restore.
     * @return bool True if the entity was restored, false otherwise.
     */
    public function restore(int $id): bool
    {
        // SQL query to remove the delete date for the fanfiction record
        $query = "UPDATE `fanfictions` SET `delete_date` = NULL WHERE `id` = :id";
        // Prepare the values for the query
        $values = [":id" => $id];
        // Execute the query and check the number of affected rows
        $result = $this->executeQuery($query, $values);
        // Return true if at least one row was affected, otherwise false
        return $result > 0;
    }

    /**
     * Permanently delete a Fanfiction entity from the database.
     *
     * @param int $id The ID of the Fanfiction to remove.
     * @return bool True if the entity was removed, false otherwise.
     */
    public function remove(int $id): bool
    {
        // SQL query to delete the fanfiction record by its ID
        $query = "DELETE FROM `fanfictions` WHERE `id` = :id";
        // Prepare the values for the query
        $values = [":id" => $id];
        // Execute the query and check the number of affected rows
        $result = $this->executeQuery($query, $values);
        // Return true if at least one row was affected, otherwise false
        return $result > 0;
    }

    /**
     * Parse a database row into a Fanfiction entity.
     *
     * @param array $row The database row to parse.
     * @return Fanfiction The parsed Fanfiction entity.
     */
    protected function parseEntity(array $row): Fanfiction
    {
        // Use the FanfictionBuilder to construct a Fanfiction entity from the database row
        return (new FanfictionBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withAuthorId($row["author_id"])
            ->withRatingId($row["rating_id"])
            ->withDescription($row["description"])
            ->withLanguageId($row["language_id"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}
