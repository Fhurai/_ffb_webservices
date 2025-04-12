<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Author.php";
require_once __DIR__ . "/../builder/AuthorBuilder.php";

/**
 * Handles database operations for the Author entity.
 *
 * This class extends EntitiesTable to provide CRUD (Create, Read, Update, Delete) functionality,
 * as well as advanced querying (search, ordering, limiting) for authors. It supports soft deletion
 * via `delete_date` and includes methods for restoring or permanently removing records.
 */
class AuthorsTable extends EntitiesTable
{
    /**
     * Retrieve an Author by its unique ID.
     *
     * @param int $id The ID of the author to fetch.
     * @return Author The corresponding Author entity.
     * @throws FfbTableException If no author with the given ID exists.
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
     * Search for authors matching specific criteria.
     *
     * Supports operators (e.g., "> 5"), `LIKE` with wildcards (%), `IS NULL`, and `IS NOT NULL`.
     *
     * @param array $args Search criteria as key-value pairs (e.g., ["name" => "John%", "age" => "> 30"]).
     * @param bool $execute If false, returns the SQL query string instead of executing.
     * @return array|string Array of Author objects if executed, or the query string otherwise.
     * @throws FfbTableException If no criteria are provided, invalid columns are used, or no results found.
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

        // Parse and return the results as Author entities.
        return $this->parseEntities($rows);
    }

    /**
     * Retrieve authors ordered by specified columns and directions.
     *
     * @param array $args Order criteria as key-value pairs (e.g., ["name" => "ASC", "id" => "DESC"]).
     * @param bool $execute If false, returns the SQL query string instead of executing.
     * @return array|string Array of ordered Author objects if executed, or the query string otherwise.
     * @throws FfbTableException If no order criteria are provided, invalid columns/directions are used, or no results found.
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
     * Retrieve a limited subset of authors with optional pagination (offset).
     *
     * @param array $args Must include "limit" (int). May include "offset" (int) for pagination.
     * @param bool $execute If false, returns the SQL query string instead of executing.
     * @return array|string Array of Author objects if executed, or the query string otherwise.
     * @throws FfbTableException If invalid limit/offset values are provided or no results found.
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
     * Fetch authors with combined search, order, and limit criteria.
     *
     * @param array $args Criteria structured as:
     *   - "search" (array): Key-value search conditions.
     *   - "order" (array): Key-value order directives.
     *   - "limit" (array): Contains "limit" (int) and optionally "offset" (int).
     * @return array Array of Author objects.
     * @throws FfbTableException If no results match the criteria.
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
                    $values[":$key"] = $value;
                } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $matches)) {
                    $operator = trim($matches[1]);
                    $val = trim($matches[2]);
                    $values[":$key"] = str_replace("'", "", $val);
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
     * Insert a new Author record into the database.
     *
     * @param Author $entity The Author entity to create.
     * @return Author The created Author with its auto-generated ID.
     * @throws InvalidArgumentException If $entity is not an Author instance.
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
     * Update an existing Author record.
     *
     * @param Author $entity The Author entity with updated values.
     * @return Author The updated Author.
     * @throws InvalidArgumentException If $entity is not an Author instance.
     * @throws FfbTableException If the update fails (e.g., the author is soft-deleted).
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

        if ($result === 0) {
            throw new FfbTableException("Update failed for the author is deleted", 403);
        }

        return $entity;
    }

    /**
     * Soft-delete an Author by setting its `delete_date`.
     *
     * @param int $id The ID of the author to soft-delete.
     * @return bool True if the operation succeeded, false otherwise.
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
     * Restore a soft-deleted Author by clearing its `delete_date`.
     *
     * @param int $id The ID of the author to restore.
     * @return bool True if the operation succeeded, false otherwise.
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
     * Permanently remove a soft-deleted Author from the database.
     *
     * @param int $id The ID of the author to hard-delete.
     * @return bool True if the operation succeeded, false otherwise.
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
     * Convert a database row into an Author object.
     *
     * @param array $row Database result row.
     * @return Author Parsed Author entity.
     * @internal This method is used internally by other class methods.
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
