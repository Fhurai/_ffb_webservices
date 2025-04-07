<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Link.php";
require_once __DIR__ . "/../builder/LinkBuilder.php";

/**
 * LinksTable class
 *
 * This class provides methods to interact with the `links` table in the database.
 * It supports CRUD operations and various query methods for the `Link` entity.
 */
class LinksTable extends EntitiesTable
{
    /**
     * Get a Link entity by its ID.
     *
     * @param int $id The ID of the Link entity.
     * @return Link The Link entity object.
     * @throws FfbTableException If no data is found for the provided ID.
     */
    public function get(int $id): Link
    {
        // Prepare the SQL query to fetch the link by ID.
        $query = "SELECT * FROM `links` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no rows are returned.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the result into a Link object and return it.
        return $this->parseEntity($rows[0]);
    }

    /**
     * Find Link entities based on search criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The search results as an array of Link objects or the query string.
     * @throws FfbTableException If no search arguments are provided or no data is found.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        // Ensure search arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `links`" : "";

        // Validate that the provided columns exist in the table.
        $validColumns = $this->getTableColumns('links');
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

        // Parse and return the results as Link entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find Link entities ordered by specific criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The ordered results as an array of Link objects or the query string.
     * @throws FfbTableException If no order arguments are provided or no data is found.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        // Ensure order arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `links`" : "";
        $orderClauses = [];

        // Validate that the provided columns exist in the table.
        $validColumns = $this->getTableColumns('links');
        foreach ($args as $column => $direction) {
            // Validate the column name and order direction.
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
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

        // Parse and return the results as Link entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find a limited number of Link entities.
     *
     * @param array $args The limiting criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The limited results as an array of Link objects or the query string.
     * @throws FfbTableException If invalid or missing limit/offset values are provided or no data is found.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Validate the limit value.
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        // Prepare the query with the limit value.
        $query = $execute ? "SELECT * FROM `links` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        // Add an offset if provided.
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

        // Parse and return the results as Link entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find all Link entities based on criteria.
     *
     * @param array $args The criteria as key-value pairs.
     * @return array The results as an array of Link objects.
     * @throws FfbTableException If no data is found for the provided criteria.
     */
    public function findAll(array $args): array
    {
        $query = "SELECT * FROM `links`";
        $values = [];

        if (!empty($args['search'])) {
            // Generate the search query and append it to the main query.
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);

            // Prepare the values for the search query.
            foreach ($args['search'] as $key => $value) {
                $values[":$key"] = str_replace("'", "", explode(' ', $value)[0]);
            }
        }

        if (!empty($args['order'])) {
            // Generate the order query and append it to the main query.
            $orderQuery = $this->findOrderedBy($args['order'], false);
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        if (!empty($args['limit'])) {
            // Generate the limit query and append it to the main query.
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        // Execute the query and fetch results.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no results are found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the results as Link entities.
        return $this->parseEntities($rows);
    }

    /**
     * Create a new Link entity.
     *
     * @param Entity $entity The Link entity to create.
     * @return Link The created Link entity.
     * @throws InvalidArgumentException If the provided entity is not an instance of Link.
     */
    public function create(Entity $entity): Link
    {
        // Ensure the provided entity is an instance of Link.
        if (!$entity instanceof Link) {
            throw new \InvalidArgumentException('Expected instance of Link');
        }

        // Prepare the SQL query to insert a new Link entity.
        $query = "INSERT INTO `links` (`url`, `fanfiction_id`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:url, :fanfiction_id, :creation_date, :update_date, :delete_date)";
        $values = [
            ":url" => $entity->getUrl(), // Bind the URL value.
            ":fanfiction_id" => $entity->getFanfictionId(), // Bind the fanfiction ID.
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"), // Bind the creation date.
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"), // Bind the update date.
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null, // Bind the delete date if it exists.
        ];

        // Execute the query to insert the new entity.
        $this->executeQuery($query, $values);

        // Set the ID of the newly created entity.
        $entity->setId($this->getLastInsertId());

        // Return the created Link entity.
        return $entity;
    }

    /**
     * Update an existing Link entity.
     *
     * @param Entity $entity The Link entity to update.
     * @return Link The updated Link entity.
     * @throws InvalidArgumentException If the provided entity is not an instance of Link.
     */
    public function update(Entity $entity): Link
    {
        // Ensure the provided entity is an instance of Link.
        if (!$entity instanceof Link) {
            throw new \InvalidArgumentException('Expected instance of Link');
        }

        // Prepare the SQL query to update an existing Link entity.
        $query = "UPDATE `links`
                  SET `url` = :url, `fanfiction_id` = :fanfiction_id, `update_date` = :update_date, `delete_date` = :delete_date
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(), // Bind the ID of the entity to update.
            ":url" => $entity->getUrl(), // Bind the updated URL value.
            ":fanfiction_id" => $entity->getFanfictionId(), // Bind the updated fanfiction ID.
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"), // Bind the updated date.
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null, // Bind the delete date if it exists.
        ];

        // Execute the query to update the entity.
        $this->executeQuery($query, $values);

        // Return the updated Link entity.
        return $entity;
    }

    /**
     * Soft delete a Link entity.
     *
     * @param int $id The ID of the Link entity to delete.
     * @return bool True if the entity was soft deleted, false otherwise.
     */
    public function delete(int $id): bool
    {
        // Prepare the SQL query to soft delete a Link entity by setting the delete date.
        $query = "UPDATE `links` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id]; // Bind the ID of the entity to delete.

        // Execute the query and check if any rows were affected.
        $result = $this->executeQuery($query, $values);

        // Return true if the entity was successfully soft deleted, false otherwise.
        return $result > 0;
    }

    /**
     * Restore a soft-deleted Link entity.
     *
     * @param int $id The ID of the Link entity to restore.
     * @return bool True if the entity was restored, false otherwise.
     */
    public function restore(int $id): bool
    {
        // Prepare the SQL query to restore a soft-deleted Link entity by removing the delete date.
        $query = "UPDATE `links` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id]; // Bind the ID of the entity to restore.

        // Execute the query and check if any rows were affected.
        $result = $this->executeQuery($query, $values);

        // Return true if the entity was successfully restored, false otherwise.
        return $result > 0;
    }

    /**
     * Hard delete a Link entity.
     *
     * @param int $id The ID of the Link entity to remove.
     * @return bool True if the entity was hard deleted, false otherwise.
     */
    public function remove(int $id): bool
    {
        // Prepare the SQL query to permanently delete a Link entity.
        $query = "DELETE FROM `links` WHERE `id` = :id";
        $values = [":id" => $id]; // Bind the ID of the entity to delete.

        // Execute the query and check if any rows were affected.
        $result = $this->executeQuery($query, $values);

        // Return true if the entity was successfully deleted, false otherwise.
        return $result > 0;
    }

    /**
     * Parse a database row into a Link entity.
     *
     * @param array $row The database row to parse.
     * @return Link The parsed Link entity.
     */
    protected function parseEntity(array $row): Link
    {
        // Use the LinkBuilder to construct a Link entity from the database row.
        return (new LinkBuilder())
            ->withId($row["id"]) // Set the ID.
            ->withUrl($row["url"]) // Set the URL.
            ->withFanfictionId($row["fanfiction_id"]) // Set the fanfiction ID.
            ->withCreationDate($row["creation_date"]) // Set the creation date.
            ->withUpdateDate($row["update_date"]) // Set the update date.
            ->withDeleteDate($row["delete_date"]) // Set the delete date if it exists.
            ->build(); // Build and return the Link entity.
    }
}
