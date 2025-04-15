<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Relation.php";
require_once __DIR__ . "/../builder/RelationBuilder.php";
require_once __DIR__ . "/../builder/CharacterBuilder.php";

/**
 * Class RelationsTable
 * Handles database operations for the `relations` table.
 */
class RelationsTable extends EntitiesTable
{
    /**
     * Retrieves a single Relation entity by its ID.
     *
     * @param int $id The ID of the relation to retrieve.
     * @return Relation The retrieved Relation entity.
     * @throws FfbTableException If no data is found for the given ID.
     */
    public function get(int $id): Relation
    {
        $query = "SELECT * FROM `relations` WHERE `id` = :id";
        $values = [":id" => $id];
        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        return $this->parseEntity($rows[0]);
    }

    /**
     * Searches for relations based on the provided arguments.
     *
     * @param array $args Search criteria as column-value pairs.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return array|string The result set as an array or the query string.
     * @throws FfbTableException If no search arguments are provided or invalid column names are used.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `relations`" : "";
        $validColumns = $this->getTableColumns('relations');

        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
        }

        $conditions = [];
        $conditions = [];
        foreach ($args as $key => $value) {
            if (str_contains($value, '%')) {
                $conditions[] = "$key LIKE :$key";
                $values[":$key"] = $value;
            } elseif (str_contains(strtolower($value), 'null')) {
                $conditions[] = "$key IS NULL";
            } elseif (str_contains(strtolower($value), 'not null')) {
                $conditions[] = "$key IS NOT NULL";
            } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $matches)) {
                $operator = trim($matches[1]);
                $val = trim($matches[2]);
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
            throw new FfbTableException("No data for arguments provided!");
        }

        return $this->parseEntities($rows);
    }

    /**
     * Retrieves relations ordered by specified columns and directions.
     *
     * @param array $args Order criteria as column-direction pairs.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return array|string The result set as an array or the query string.
     * @throws FfbTableException If no order arguments are provided or invalid column names/directions are used.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        // Initialize the base query if execution is required
        $query = $execute ? "SELECT * FROM `relations`" : "";
        $orderClauses = [];
        $validColumns = $this->getTableColumns('relations'); // Retrieve valid column names for the table

        foreach ($args as $column => $direction) {
            // Validate column names against the table schema
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            // Validate sorting direction (ASC or DESC)
            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException("Invalid order direction: '$direction'");
            }
            // Add the column and direction to the ORDER BY clause
            $orderClauses[] = "$column $direction";
        }

        // Append the ORDER BY clause to the query if there are valid clauses
        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
        }

        // Return the query string if execution is not required
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch results
        $rows = $this->executeQuery($query);

        // Throw an exception if no results are found
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the result set as an array of entities
        return $this->parseEntities($rows);
    }

    /**
     * Retrieves a limited number of relations with optional offset.
     *
     * @param array $args Limit and offset values.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return array|string The result set as an array or the query string.
     * @throws FfbTableException If invalid or missing limit/offset values are provided.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Validate the 'limit' argument
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        // Start building the query with the LIMIT clause
        $query = $execute ? "SELECT * FROM `relations` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        // Add an OFFSET clause if provided and valid
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

        // Execute the query and fetch results
        $rows = $this->executeQuery($query);

        // Throw an exception if no results are found
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the result set as an array of entities
        return $this->parseEntities($rows);
    }

    /**
     * Retrieves all relations based on search, order, and limit criteria.
     *
     * @param array $args Combined search, order, and limit arguments.
     * @return array The result set as an array of Relation entities.
     * @throws FfbTableException If no data is found for the given criteria.
     */
    public function findAll(array $args): array
    {
        $query = "SELECT * FROM `relations`";
        $values = [];

        // Add search conditions if provided
        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                if (str_contains($value, '%')) {
                    $values[":$key"] = $value;
                } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $matches)) {
                    $val = trim($matches[2]);
                    $values[":$key"] = str_replace("'", "", $val);
                }else if(str_contains($key, "_id")){
                    $values[":$key"] = $value;
                }
            }
        }

        // Add order conditions if provided
        if (!empty($args['order'])) {
            $orderQuery = $this->findOrderedBy($args['order'], false); // Generate order query
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY")); // Append order conditions
        }

        // Add limit and offset if provided
        if (!empty($args['limit'])) {
            $limitQuery = $this->findLimitedBy($args['limit'], false); // Generate limit query
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT")); // Append limit and offset
        }

        // Execute the query with the constructed conditions
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no results are found
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the result set as an array of entities
        return $this->parseEntities($rows);
    }

    /**
     * Creates a new Relation entity in the database.
     *
     * @param Entity $entity The Relation entity to create.
     * @return Relation The created Relation entity with its ID set.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Relation.
     */
    public function create(Entity $entity): Relation
    {
        if (!$entity instanceof Relation) {
            throw new \InvalidArgumentException('Expected instance of Relation');
        }

        // Prepare the INSERT query with placeholders for values
        $query = "INSERT INTO `relations` (`name`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:name, :creation_date, :update_date, :delete_date)";
        $values = [
            ":name" => $entity->getName(), // Bind the name of the relation
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"), // Format creation date
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"), // Format update date
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null, // Handle nullable delete date
        ];

        // Execute the query to insert the new relation
        $this->executeQuery($query, $values);

        // Set the ID of the newly created entity
        $entity->setId($this->getLastInsertId());

        // Update associations for the entity.
        $this->updateAssociations($entity);

        return $entity;
    }

    /**
     * Updates an existing Relation entity in the database.
     *
     * @param Entity $entity The Relation entity to update.
     * @return Relation The updated Relation entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Relation.
     */
    public function update(Entity $entity): Relation
    {
        if (!$entity instanceof Relation) {
            throw new \InvalidArgumentException('Expected instance of Relation');
        }

        // Prepare the UPDATE query with placeholders for values
        $query = "UPDATE `relations`
                  SET `name` = :name, `update_date` = :update_date
                  WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [
            ":id" => $entity->getId(), // Bind the ID of the relation to update
            ":name" => $entity->getName(), // Bind the updated name
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"), // Format update date
        ];

        // Execute the query to update the relation
        $this->executeQuery($query, $values);

        // Update associations for the entity.
        $this->updateAssociations($entity);

        return $entity;
    }

    /**
     * Soft-deletes a Relation entity by setting its delete_date.
     *
     * @param int $id The ID of the relation to delete.
     * @return bool True if the operation was successful, false otherwise.
     */
    public function delete(int $id): bool
    {
        // Prepare the query to soft-delete a relation by setting its delete_date
        $query = "UPDATE `relations` SET `delete_date` = NOW() WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [":id" => $id]; // Bind the ID of the relation to delete

        // Execute the query and check if any rows were affected
        $result = $this->executeQuery($query, $values);

        return $result > 0; // Return true if the operation was successful
    }

    /**
     * Restores a soft-deleted Relation entity by clearing its delete_date.
     *
     * @param int $id The ID of the relation to restore.
     * @return bool True if the operation was successful, false otherwise.
     */
    public function restore(int $id): bool
    {
        // Prepare the query to restore a soft-deleted relation by clearing its delete_date
        $query = "UPDATE `relations` SET `delete_date` = NULL WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id]; // Bind the ID of the relation to restore

        // Execute the query and check if any rows were affected
        $result = $this->executeQuery($query, $values);

        return $result > 0; // Return true if the operation was successful
    }

    /**
     * Permanently removes a Relation entity from the database.
     *
     * @param int $id The ID of the relation to remove.
     * @return bool True if the operation was successful, false otherwise.
     */
    public function remove(int $id): bool
    {
        // Prepare the query to permanently delete a relation
        $query = "DELETE FROM `relations` WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id]; // Bind the ID of the relation to remove

        // Execute the query and check if any rows were affected
        $result = $this->executeQuery($query, $values);

        return $result > 0; // Return true if the operation was successful
    }

    /**
     * Parses a database row into a Relation entity.
     *
     * @param array $row The database row to parse.
     * @return Relation The parsed Relation entity.
     */
    protected function parseEntity(array $row): Relation
    {
        // Initialize a RelationBuilder with the basic attributes of the relation
        $relationBuilder = (new RelationBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"]);

        // Query to fetch associated characters for the relation
        $query = "SELECT `characters`.* FROM `relations_characters`
                  INNER JOIN `characters` ON `relations_characters`.`character_id` = `characters`.`id`
                  WHERE `relation_id` = :id";
        $values = [":id" => $row["id"]]; // Bind the relation ID

        // Execute the query to fetch characters
        $characters = $this->executeQuery($query, $values);

        // Add each character to the RelationBuilder
        if (!empty($characters)) {
            foreach ($characters as $character) {
                $relationBuilder->addCharacter((new CharacterBuilder())
                    ->withId($character["id"])
                    ->withName($character["name"])
                    ->withFandomId($character["fandom_id"])
                    ->withCreationDate($character["creation_date"])
                    ->withUpdateDate($character["update_date"])
                    ->withDeleteDate($character["delete_date"])
                    ->build());
            }
        }

        // Build and return the Relation entity
        return $relationBuilder->build();
    }

    /**
     * Update associations for a Relation entity.
     *
     * @param Relation $entity The Relation entity whose associations are to be updated.
     * @return void
     */
    private function updateAssociations(Relation $entity): void
    {
        // Update character associations if the entity has characters.
        if ($entity->hasCharacters()) {
            $this->updateAssociationTable('relations_characters', 'character_id', $entity->getId(), $entity->getCharacters());
        }
    }

    /**
     * Update a specific association table for a Relation entity.
     *
     * @param string $table The name of the association table.
     * @param string $column The column name for the associated entity.
     * @param int $relationId The ID of the Relation entity.
     * @param array|null $items The associated items to update.
     * @return void
     */
    private function updateAssociationTable(string $table, string $column, int $relationId, ?array $items): void
    {
        // Delete existing associations for the Relation entity.
        $queryDelete = "DELETE FROM `$table` WHERE `relation_id` = :relation_id";
        $this->executeQuery($queryDelete, [":relation_id" => $relationId]);

        // Insert new associations if items are provided.
        if ($items) {
            $queryInsert = "INSERT INTO `$table` (`relation_id`, `$column`) VALUES (:relation_id, :item_id)";
            foreach ($items as $item) {
                $this->executeQuery($queryInsert, [
                    ":relation_id" => $relationId,
                    ":item_id" => $item->getId(),
                ]);
            }
        }
    }
}
