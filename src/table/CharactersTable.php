<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/FandomsTable.php";
require_once __DIR__ . "/../entity/Character.php";
require_once __DIR__ . "/../builder/CharacterBuilder.php";

/**
 * CharactersTable class.
 * Handles database operations for the `characters` table.
 */
class CharactersTable extends EntitiesTable
{
    /**
     * Get a Character entity by its ID.
     *
     * @param int $id The ID of the character.
     * @return Character The Character entity.
     * @throws FfbTableException If no data is found for the given ID.
     */
    public function get(int $id): Character
    {
        // Prepare the SQL query to fetch a character by its ID.
        $query = "SELECT * FROM `characters` WHERE `id` = :id";

        // Bind the ID parameter to the query.
        $values = [":id" => $id];

        // Execute the query and fetch the result as an array of rows.
        $rows = $this->executeQuery($query, $values);

        // If no rows are returned, throw an exception indicating no data was found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the first row into a Character entity using the parseEntity method.
        return $this->parseEntity($rows[0]);
    }

    /**
     * Find characters based on search criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The search results as an array of Character objects or the query string.
     * @throws FfbTableException If no search arguments are provided or invalid columns are used.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        // Ensure search arguments are provided; otherwise, throw an exception.
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        // Initialize an empty array for query values and the base query string.
        $values = [];
        $query = $execute ? "SELECT * FROM `characters`" : "";

        // Validate that all provided columns exist in the `characters` table.
        $validColumns = $this->getTableColumns('characters');
        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
        }

        // Build the WHERE conditions based on the provided arguments.
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

        // Append the WHERE conditions to the query if any exist.
        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        // If execution is not required, return the query string.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the results.
        $rows = $this->executeQuery($query, $values);

        // If no rows are returned, throw an exception indicating no data was found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the rows into an array of Character entities and return them.
        return $this->parseEntities($rows);
    }

    /**
     * Find characters ordered by specific criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The ordered results as an array of Character objects or the query string.
     * @throws FfbTableException If no order arguments are provided or invalid columns/directions are used.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        // Ensure order arguments are provided; otherwise, throw an exception.
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        // Initialize the base query string and an array for order clauses.
        $query = $execute ? "SELECT * FROM `characters`" : "";
        $orderClauses = [];

        // Validate that all provided columns exist in the `characters` table.
        $validColumns = $this->getTableColumns('characters');
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

        // Append the ORDER BY clause to the query if any order clauses exist.
        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
        }

        // If execution is not required, return the query string.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the results.
        $rows = $this->executeQuery($query);

        // If no rows are returned, throw an exception indicating no data was found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the rows into an array of Character entities and return them.
        return $this->parseEntities($rows);
    }

    /**
     * Find a limited number of characters based on criteria.
     *
     * @param array $args The limiting criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The limited results as an array of Character objects or the query string.
     * @throws FfbTableException If invalid or missing limit/offset values are provided.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Validate the limit value.
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        // Prepare the query with the limit value.
        $query = $execute ? "SELECT * FROM `characters` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        // Add an offset if provided and valid.
        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException("Invalid offset value!");
            }
            $query .= " OFFSET " . (int) $args['offset'];
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

        // Parse and return the results as Character entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find all characters based on criteria.
     *
     * @param array $args The criteria as key-value pairs.
     * @return array The results as an array of Character objects.
     * @throws FfbTableException If no data is found for the given criteria.
     */
    public function findAll(array $args): array
    {
        // Start with a base query to fetch all characters.
        $query = "SELECT * FROM `characters`";
        $values = [];

        // Add search conditions if provided.
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

        // Add ordering if provided.
        if (!empty($args['order'])) {
            $orderQuery = $this->findOrderedBy($args['order'], false);
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        // Add limit and offset if provided.
        if (!empty($args['limit'])) {
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        // Execute the query and fetch results.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no results are found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the results as Character entities.
        return $this->parseEntities($rows);
    }

    /**
     * Create a new Character entity.
     *
     * @param Entity $entity The Character entity to create.
     * @return Character The created Character entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Character.
     */
    public function create(Entity $entity): Character
    {
        if (!$entity instanceof Character) {
            throw new \InvalidArgumentException('Expected instance of Character');
        }

        $query = "INSERT INTO `characters` (`name`, `fandom_id`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:name, :fandom_id, :creation_date, :update_date, :delete_date)";
        $values = [
            ":name" => $entity->getName(),
            ":fandom_id" => $entity->getFandomId(),
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        // Execute the query to insert the new entity.
        $this->executeQuery($query, $values);

        // Set the ID of the newly created entity.
        $entity->setId($this->getLastInsertId());

        // Set the fandom for the entity if it exists.
        $fandomTable = new FandomsTable($this->typeConnection, $this->user);
        $entity->setFandom($fandomTable->get($entity->getFandomId()));

        return $entity;
    }

    /**
     * Update an existing Character entity.
     *
     * @param Entity $entity The Character entity to update.
     * @return Character The updated Character entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Character.
     */
    public function update(Entity $entity): Character
    {
        if (!$entity instanceof Character) {
            throw new \InvalidArgumentException('Expected instance of Character');
        }

        $query = "UPDATE `characters`
                  SET `name` = :name, `fandom_id` = :fandom_id, `update_date` = :update_date, `delete_date` = :delete_date
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":fandom_id" => $entity->getFandomId(),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null
        ];

        $this->executeQuery($query, $values);
        return $entity;
    }

    /**
     * Soft delete a Character entity.
     * Marks a Character entity as deleted by setting a delete date.
     *
     * @param int $id The ID of the character to delete.
     * @return bool True if the character was soft deleted, false otherwise.
     */
    public function delete(int $id): bool
    {
        // Prepare the query to set the delete date for the specified character.
        $query = "UPDATE `characters` SET `delete_date` = NOW() WHERE `id` = :id";

        // Bind the ID parameter to the query.
        $values = [":id" => $id];

        // Execute the query and check the number of affected rows.
        $result = $this->executeQuery($query, $values);

        // Return true if at least one row was affected, otherwise false.
        return $result > 0;
    }

    /**
     * Restore a soft-deleted Character entity.
     * Removes the delete date from a soft-deleted Character entity.
     *
     * @param int $id The ID of the character to restore.
     * @return bool True if the character was restored, false otherwise.
     */
    public function restore(int $id): bool
    {
        // Prepare the query to remove the delete date for the specified character.
        $query = "UPDATE `characters` SET `delete_date` = NULL WHERE `id` = :id";

        // Bind the ID parameter to the query.
        $values = [":id" => $id];

        // Execute the query and check the number of affected rows.
        $result = $this->executeQuery($query, $values);

        // Return true if at least one row was affected, otherwise false.
        return $result > 0;
    }

    /**
     * Hard delete a Character entity.
     * Permanently removes a Character entity from the database.
     *
     * @param int $id The ID of the character to remove.
     * @return bool True if the character was hard deleted, false otherwise.
     */
    public function remove(int $id): bool
    {
        // Prepare the query to permanently delete the specified character.
        $query = "DELETE FROM `characters` WHERE `id` = :id";

        // Bind the ID parameter to the query.
        $values = [":id" => $id];

        // Execute the query and check the number of affected rows.
        $result = $this->executeQuery($query, $values);

        // Return true if at least one row was affected, otherwise false.
        return $result > 0;
    }

    /**
     * Parse a database row into a Character entity.
     * Converts a database row into a Character object.
     *
     * @param array $row The database row to parse.
     * @return Character The parsed Character entity.
     */
    protected function parseEntity(array $row): Character
    {
        $character = (new CharacterBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withFandomId($row["fandom_id"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();

        // Load fandom if fandom_id is valid (greater than 0)
        $fandomId = $character->getFandomId();
        if ($fandomId > 0) {
            // Assuming FandomsTable is available and uses the same connection
            $fandomTable = new FandomsTable($this->typeConnection, $this->user);
            try {
                $fandom = $fandomTable->get($fandomId);
                $character->setFandom($fandom);
            } catch (FfbTableException $e) {
                // Handle exception (e.g., log error, set to null)
                $character->setFandom(null);
            }
        }

        return $character;
    }
}
