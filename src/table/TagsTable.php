<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/TagTypesTable.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Tag.php";
require_once __DIR__ . "/../builder/TagBuilder.php";

/**
 * TagsTable class.
 * Handles database operations for the `tags` table.
 */
class TagsTable extends EntitiesTable
{
    /**
     * Get a Tag entity by its ID.
     *
     * @param int $id The ID of the tag.
     * @return Tag The Tag entity.
     * @throws FfbTableException If no data is found for the given ID.
     */
    public function get(int $id): Tag
    {
        // Prepare the query to fetch the tag by ID.
        $query = "SELECT * FROM `tags` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the result into a Tag object and return it.
        return $this->parseEntity($rows[0]);
    }

    /**
     * Find tags based on search criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The search results as an array of Tag objects or the query string.
     * @throws FfbTableException If no search arguments are provided or no data is found.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        // Ensure search arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `tags`" : "";

        // Validate that the provided columns exist in the table.
        $validColumns = $this->getTableColumns('tags');
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

        // Parse and return the results as Tag entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find tags ordered by specific criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The ordered results as an array of Tag objects or the query string.
     * @throws FfbTableException If no order arguments are provided or no data is found.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        // Ensure order arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `tags`" : "";
        $orderClauses = [];

        // Validate that the provided columns exist in the table.
        $validColumns = $this->getTableColumns('tags');
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

        // Parse and return the results as Tag entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find a limited number of tags based on criteria.
     *
     * @param array $args The limiting criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The limited results as an array of Tag objects or the query string.
     * @throws FfbTableException If the limit or offset values are invalid or no data is found.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Validate the limit value.
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        // Prepare the query with the limit value.
        $query = $execute ? "SELECT * FROM `tags` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        // Add offset if provided and valid.
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

        // Parse and return the results as Tag entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find all tags based on criteria.
     *
     * @param array $args The criteria as key-value pairs.
     * @return array The results as an array of Tag objects.
     * @throws FfbTableException If no data is found for the given criteria.
     */
    public function findAll(array $args): array
    {
        // Start with a base query to fetch all tags.
        $query = "SELECT * FROM `tags`";
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

        // Add ordering conditions if provided.
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

        // Parse and return the results as Tag entities.
        return $this->parseEntities($rows);
    }

    /**
     * Create a new Tag entity.
     *
     * @param Entity $entity The Tag entity to create.
     * @return Tag The created Tag entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Tag.
     */
    public function create(Entity $entity): Tag
    {
        // Validate that the provided entity is an instance of Tag.
        if (!$entity instanceof Tag) {
            throw new \InvalidArgumentException('Expected instance of Tag');
        }

        // Prepare the INSERT query with placeholders for the entity's properties.
        $query = "INSERT INTO `tags` (`description`, `name`, `type_id`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:description, :name, :type_id, :creation_date, :update_date, :delete_date)";
        $values = [
            ":description" => $entity->getDescription(),
            ":name" => $entity->getName(),
            ":type_id" => $entity->getTypeId(),
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        // Execute the query to insert the new entity.
        $this->executeQuery($query, $values);

        // Set the ID of the newly created entity.
        $entity->setId($this->getLastInsertId());

        // Set the TagType entity based on the type_id.
        $tagTypeTable = new TagTypesTable($this->typeConnection, $this->user);
        $entity->setTagType($tagTypeTable->get($entity->getTypeId()));

        // Return the created entity.
        return $entity;
    }

    /**
     * Update an existing Tag entity.
     *
     * @param Entity $entity The Tag entity to update.
     * @return Tag The updated Tag entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Tag.
     */
    public function update(Entity $entity): Tag
    {
        // Validate that the provided entity is an instance of Tag.
        if (!$entity instanceof Tag) {
            throw new \InvalidArgumentException('Expected instance of Tag');
        }

        // Prepare the UPDATE query with placeholders for the entity's properties.
        $query = "UPDATE `tags`
                  SET `description` = :description, `name` = :name, `type_id` = :type_id, `update_date` = :update_date
                  WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [
            ":id" => $entity->getId(),
            ":description" => $entity->getDescription(),
            ":name" => $entity->getName(),
            ":type_id" => $entity->getTypeId(),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s")
        ];

        // Execute the query to update the entity.
        $this->executeQuery($query, $values);

        // Return the updated entity.
        return $entity;
    }

    /**
     * Soft delete a Tag entity.
     * Marks a Tag entity as deleted by setting a delete date.
     *
     * @param int $id The ID of the tag to delete.
     * @return bool True if the tag was soft deleted, false otherwise.
     */
    public function delete(int $id): bool
    {
        // Prepare the query to set the delete date for the specified entity.
        $query = "UPDATE `tags` SET `delete_date` = NOW() WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [":id" => $id];

        // Execute the query and return true if the operation was successful.
        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Restore a soft-deleted Tag entity.
     * Removes the delete date from a soft-deleted Tag entity.
     *
     * @param int $id The ID of the tag to restore.
     * @return bool True if the tag was restored, false otherwise.
     */
    public function restore(int $id): bool
    {
        // Prepare the query to remove the delete date for the specified entity.
        $query = "UPDATE `tags` SET `delete_date` = NULL WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];

        // Execute the query and return true if the operation was successful.
        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Hard delete a Tag entity.
     * Permanently removes a Tag entity from the database.
     *
     * @param int $id The ID of the tag to remove.
     * @return bool True if the tag was hard deleted, false otherwise.
     */
    public function remove(int $id): bool
    {
        // Prepare the DELETE query to permanently remove the specified entity.
        $query = "DELETE FROM `tags` WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];

        // Execute the query and return true if the operation was successful.
        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Parse a database row into a Tag entity.
     *
     * @param array $row The database row to parse.
     * @return Tag The parsed Tag entity.
     */
    protected function parseEntity(array $row): Tag
    {
        $tag = (new TagBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withDescription($row["description"])
            ->withTypeId($row["type_id"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();

        // Load tag_type if type_id is valid (greater than 0)
        $typeId = $tag->getTypeId();
        if ($typeId > 0) {
            // Assuming TagTypesTable is available and uses the same connection
            $tagTypeTable = new TagTypesTable($this->typeConnection, $this->user);
            try {
                $tagType = $tagTypeTable->get($typeId);
                $tag->setTagType($tagType);
            } catch (FfbTableException $e) {
                // Handle exception (e.g., log error, set to null)
                $tag->setTagType(null);
            }
        }

        return $tag;
    }
}
