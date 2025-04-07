<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Fandom.php";
require_once __DIR__ . "/../builder/FandomBuilder.php";

/**
 * FandomsTable class.
 * Handles database operations for the Fandom entity.
 */
class FandomsTable extends EntitiesTable
{
    /**
     * Retrieve a Fandom entity by its ID.
     *
     * @param int $id The ID of the fandom.
     * @return Fandom The retrieved Fandom entity.
     * @throws FfbTableException If no data is found for the given ID.
     */
    public function get(int $id): Fandom
    {
        $query = "SELECT * FROM `fandoms` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the result into a Fandom object and return it.
        return $this->parseEntity($rows[0]);
    }

    /**
     * Search for Fandom entities based on criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The search results or the query string if not executed.
     * @throws FfbTableException If no search arguments are provided or invalid columns are used.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `fandoms`" : "";

        $validColumns = $this->getTableColumns('fandoms');
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
            } elseif (preg_match('/[<>=!]/', $value)) {
                [$operator, $val] = explode(' ', $value, 2);
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
     * Retrieve Fandom entities ordered by specific criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The ordered results or the query string if not executed.
     * @throws FfbTableException If no order arguments are provided or invalid columns are used.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `fandoms`" : "";
        $orderClauses = [];

        $validColumns = $this->getTableColumns('fandoms');
        foreach ($args as $column => $direction) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException("Invalid order direction: '$direction'");
            }
            $orderClauses[] = "$column $direction";
        }

        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
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
     * Retrieve a limited number of Fandom entities.
     *
     * @param array $args The limiting criteria (e.g., limit, offset).
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The limited results or the query string if not executed.
     * @throws FfbTableException If invalid or missing limit/offset values are provided.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $query = $execute ? "SELECT * FROM `fandoms` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

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
     * Retrieve all Fandom entities based on criteria.
     *
     * @param array $args The criteria for search, order, and limit.
     * @return array The results as an array of Fandom objects.
     * @throws FfbTableException If no data is found for the given criteria.
     */
    public function findAll(array $args): array
    {
        $query = "SELECT * FROM `fandoms`";
        $values = [];

        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                $values[":$key"] = str_replace("'", "", explode(' ', $value)[0]);
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
     * Create a new Fandom entity in the database.
     *
     * @param Entity $entity The Fandom entity to create.
     * @return Fandom The created Fandom entity with its ID set.
     * @throws \InvalidArgumentException If the provided entity is not a Fandom.
     */
    public function create(Entity $entity): Fandom
    {
        if (!$entity instanceof Fandom) {
            throw new \InvalidArgumentException('Expected instance of Fandom');
        }

        $query = "INSERT INTO `fandoms` (`name`, `creation_date`, `update_date`, `delete_date`)
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
     * Update an existing Fandom entity in the database.
     *
     * @param Entity $entity The Fandom entity to update.
     * @return Fandom The updated Fandom entity.
     * @throws \InvalidArgumentException If the provided entity is not a Fandom.
     */
    public function update(Entity $entity): Fandom
    {
        if (!$entity instanceof Fandom) {
            throw new \InvalidArgumentException('Expected instance of Fandom');
        }

        $query = "UPDATE `fandoms`
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
     * Soft delete a Fandom entity by setting its delete date.
     *
     * @param int $id The ID of the Fandom to delete.
     * @return bool True if the operation was successful, false otherwise.
     */
    public function delete(int $id): bool
    {
        $query = "UPDATE `fandoms` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Restore a soft-deleted Fandom entity by removing its delete date.
     *
     * @param int $id The ID of the Fandom to restore.
     * @return bool True if the operation was successful, false otherwise.
     */
    public function restore(int $id): bool
    {
        $query = "UPDATE `fandoms` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Permanently delete a Fandom entity from the database.
     *
     * @param int $id The ID of the Fandom to remove.
     * @return bool True if the operation was successful, false otherwise.
     */
    public function remove(int $id): bool
    {
        $query = "DELETE FROM `fandoms` WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Parse a database row into a Fandom entity.
     *
     * @param array $row The database row to parse.
     * @return Fandom The parsed Fandom entity.
     */
    protected function parseEntity(array $row): Fandom
    {
        return (new FandomBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}
