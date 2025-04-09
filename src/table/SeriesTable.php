<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Series.php";
require_once __DIR__ . "/../builder/SeriesBuilder.php";

/**
 * SeriesTable class.
 * Handles database operations for the Series entity, including CRUD operations
 * and managing associations such as fanfictions.
 */
class SeriesTable extends EntitiesTable
{
    /**
     * Retrieve a Series entity by its ID.
     *
     * @param int $id The ID of the Series.
     * @return Series The retrieved Series entity.
     * @throws FfbTableException If no data is found for the given ID.
     */
    public function get(int $id): Series
    {
        // Prepare the query to fetch a series by its ID.
        $query = "SELECT * FROM `series` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the results.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the result into a Series entity and return it.
        return $this->parseEntity($rows[0]);
    }

    /**
     * Search for Series based on specific criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The search results as an array of Series objects or the query string.
     * @throws FfbTableException If no search arguments are provided or no data is found.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        // Validate that search arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `series`" : "";

        // Validate column names against the table schema.
        $validColumns = $this->getTableColumns('series');
        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
        }

        // Build query conditions based on the search arguments.
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

        // Append conditions to the query.
        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        // Return the query string if execution is not required.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the results.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the results into Series entities and return them.
        return $this->parseEntities($rows);
    }

    /**
     * Retrieve Series ordered by specific criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The ordered results as an array of Series objects or the query string.
     * @throws FfbTableException If no order arguments are provided or no data is found.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        // Validate that order arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `series`" : "";
        $orderClauses = [];

        // Validate column names and order directions.
        $validColumns = $this->getTableColumns('series');
        foreach ($args as $column => $direction) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException("Invalid order direction: '$direction'");
            }
            $orderClauses[] = "$column $direction";
        }

        // Append order clauses to the query.
        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
        }

        // Return the query string if execution is not required.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch the results.
        $rows = $this->executeQuery($query);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the results into Series entities and return them.
        return $this->parseEntities($rows);
    }

    /**
     * Retrieve a limited number of Series.
     *
     * @param array $args The limiting criteria, including 'limit' and optional 'offset'.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The limited results as an array of Series objects or the query string.
     * @throws FfbTableException If the limit or offset is invalid or no data is found.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Validate the limit value.
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        // Build the query with the limit value.
        $query = $execute ? "SELECT * FROM `series` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        // Append the offset value if provided and valid.
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

        // Execute the query and fetch the results.
        $rows = $this->executeQuery($query);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the results into Series entities and return them.
        return $this->parseEntities($rows);
    }

    /**
     * Retrieve all Series based on criteria.
     *
     * @param array $args The criteria, including search, order, and limit options.
     * @return array The results as an array of Series objects.
     * @throws FfbTableException If no data is found.
     */
    public function findAll(array $args): array
    {
        // Initialize the base query and values array.
        $query = "SELECT * FROM `series`";
        $values = [];

        // Append search conditions if provided.
        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                $values[":$key"] = str_replace("'", "", explode(' ', $value)[0]);
            }
        }

        // Append order conditions if provided.
        if (!empty($args['order'])) {
            $orderQuery = $this->findOrderedBy($args['order'], false);
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        // Append limit conditions if provided.
        if (!empty($args['limit'])) {
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        // Execute the query and fetch the results.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the results into Series entities and return them.
        return $this->parseEntities($rows);
    }

    /**
     * Create a new Series entity in the database.
     *
     * @param Entity $entity The Series entity to create.
     * @return Series The created Series entity with its ID set.
     * @throws \InvalidArgumentException If the provided entity is not a Series.
     */
    public function create(Entity $entity): Series
    {
        if (!$entity instanceof Series) {
            throw new \InvalidArgumentException('Expected instance of Series');
        }

        // Prepare the query to insert a new Series entity.
        $query = "INSERT INTO `series` (`name`, `description`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:name, :description, :creation_date, :update_date, :delete_date)";
        $values = [
            ":name" => $entity->getName(),
            ":description" => $entity->getDescription(),
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        // Execute the query to insert the entity.
        $this->executeQuery($query, $values);

        // Set the ID of the newly created entity.
        $entity->setId($this->getLastInsertId());

        // Update associations for the entity.
        $this->updateAssociations($entity);

        return $entity;
    }

    /**
     * Update an existing Series entity in the database.
     *
     * @param Entity $entity The Series entity to update.
     * @return Series The updated Series entity.
     * @throws \InvalidArgumentException If the provided entity is not a Series.
     */
    public function update(Entity $entity): Series
    {
        if (!$entity instanceof Series) {
            throw new \InvalidArgumentException('Expected instance of Series');
        }

        // Prepare the query to update the Series entity.
        $query = "UPDATE `series`
                  SET `name` = :name, `description` = :description, `update_date` = :update_date, `delete_date` = :delete_date
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":description" => $entity->getDescription(),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        // Execute the query to update the entity.
        $this->executeQuery($query, $values);

        // Update associations for the entity.
        $this->updateAssociations($entity);

        return $entity;
    }

    /**
     * Update associations for a Series entity.
     *
     * @param Series $entity The Series entity whose associations are to be updated.
     * @return void
     */
    private function updateAssociations(Series $entity): void
    {
        // Update fanfiction associations if the entity has fanfictions.
        if ($entity->hasFanfictions()) {
            $this->updateAssociationTable('series_fanfictions', 'fanfiction_id', $entity->getId(), $entity->getFanfictions());
        }
    }

    /**
     * Update a specific association table for a Series entity.
     *
     * @param string $table The name of the association table.
     * @param string $column The column name for the associated entity.
     * @param int $seriesId The ID of the Series entity.
     * @param array|null $items The associated items to update.
     * @return void
     */
    private function updateAssociationTable(string $table, string $column, int $seriesId, ?array $items): void
    {
        // Delete existing associations for the Series entity.
        $queryDelete = "DELETE FROM `$table` WHERE `series_id` = :series_id";
        $this->executeQuery($queryDelete, [":series_id" => $seriesId]);

        // Insert new associations if items are provided.
        if ($items) {
            $queryInsert = "INSERT INTO `$table` (`series_id`, `$column`) VALUES (:series_id, :item_id)";
            foreach ($items as $item) {
                $this->executeQuery($queryInsert, [
                    ":series_id" => $seriesId,
                    ":item_id" => $item->getId(),
                ]);
            }
        }
    }

    /**
     * Soft delete a Series entity by setting its delete date.
     *
     * @param int $id The ID of the Series to delete.
     * @return bool True if the entity was soft deleted, false otherwise.
     */
    public function delete(int $id): bool
    {
        // Prepare the query to soft delete the Series entity.
        $query = "UPDATE `series` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and return whether any rows were affected.
        $result = $this->executeQuery($query, $values);
        return $result > 0;
    }

    /**
     * Restore a soft-deleted Series entity by removing its delete date.
     *
     * @param int $id The ID of the Series to restore.
     * @return bool True if the entity was restored, false otherwise.
     */
    public function restore(int $id): bool
    {
        // Prepare the query to restore the Series entity.
        $query = "UPDATE `series` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and return whether any rows were affected.
        $result = $this->executeQuery($query, $values);
        return $result > 0;
    }

    /**
     * Permanently delete a Series entity from the database.
     *
     * @param int $id The ID of the Series to remove.
     * @return bool True if the entity was removed, false otherwise.
     */
    public function remove(int $id): bool
    {
        // Prepare the query to permanently delete the Series entity.
        $query = "DELETE FROM `series` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and return whether any rows were affected.
        $result = $this->executeQuery($query, $values);
        return $result > 0;
    }

    /**
     * Parse a database row into a Series entity.
     *
     * @param array $row The database row to parse.
     * @return Series The parsed Series entity.
     */
    protected function parseEntity(array $row): Series
    {
        // Use the SeriesBuilder to construct a Series entity from the database row.
        return (new SeriesBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withDescription($row["description"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}
