<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Language.php";
require_once __DIR__ . "/../builder/LanguageBuilder.php";

/**
 * LanguagesTable class.
 * Handles database operations for the `languages` table.
 */
class LanguagesTable extends EntitiesTable
{
    /**
     * Get a Language entity by its ID.
     *
     * @param int $id The ID of the language.
     * @return Language The Language entity.
     * @throws FfbTableException If no data is found for the given ID.
     */
    public function get(int $id): Language
    {
        $query = "SELECT * FROM `languages` WHERE `id` = :id";
        $values = [":id" => $id];
        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        return $this->parseEntity($rows[0]);
    }

    /**
     * Find languages based on search criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The search results as an array of Language objects or the query string.
     * @throws FfbTableException If no search arguments are provided or invalid columns are used.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `languages`" : "";

        $validColumns = $this->getTableColumns('languages');
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
     * Find languages ordered by specific criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The ordered results as an array of Language objects or the query string.
     * @throws FfbTableException If no order arguments are provided or invalid columns/directions are used.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `languages`" : "";
        $orderClauses = [];

        $validColumns = $this->getTableColumns('languages');
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
     * Find a limited number of languages based on criteria.
     *
     * @param array $args The limiting criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The limited results as an array of Language objects or the query string.
     * @throws FfbTableException If invalid or missing limit/offset values are provided.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $query = $execute ? "SELECT * FROM `languages` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

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
     * Find all languages based on criteria.
     *
     * @param array $args The criteria as key-value pairs.
     * @return array The results as an array of Language objects.
     * @throws FfbTableException If no data is found for the given criteria.
     */
    public function findAll(array $args): array
    {
        $query = "SELECT * FROM `languages`";
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
     * Create a new Language entity.
     *
     * @param Entity $entity The Language entity to create.
     * @return Language The created Language entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Language.
     */
    public function create(Entity $entity): Language
    {
        if (!$entity instanceof Language) {
            throw new \InvalidArgumentException('Expected instance of Language');
        }

        $query = "INSERT INTO `languages` (`name`, `abbreviation`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:name, :abbreviation, :creation_date, :update_date, :delete_date)";
        $values = [
            ":name" => $entity->getName(),
            ":abbreviation" => $entity->getAbbreviation(),
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        $this->executeQuery($query, $values);

        $entity->setId($this->getLastInsertId());
        return $entity;
    }

    /**
     * Update an existing Language entity.
     *
     * @param Entity $entity The Language entity to update.
     * @return Language The updated Language entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of Language.
     */
    public function update(Entity $entity): Language
    {
        if (!$entity instanceof Language) {
            throw new \InvalidArgumentException('Expected instance of Language');
        }

        $query = "UPDATE `languages`
                  SET `name` = :name, `abbreviation` = :abbreviation, `update_date` = :update_date, `delete_date` = :delete_date
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":abbreviation" => $entity->getAbbreviation(),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null
        ];

        $this->executeQuery($query, $values);

        return $entity;
    }

    /**
     * Soft delete a Language entity.
     * Marks a Language entity as deleted by setting a delete date.
     *
     * @param int $id The ID of the Language entity to delete.
     * @return bool True if the entity was soft deleted, false otherwise.
     */
    public function delete(int $id): bool
    {
        $query = "UPDATE `languages` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Restore a soft-deleted Language entity.
     * Removes the delete date from a soft-deleted Language entity.
     *
     * @param int $id The ID of the Language entity to restore.
     * @return bool True if the entity was restored, false otherwise.
     */
    public function restore(int $id): bool
    {
        $query = "UPDATE `languages` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Hard delete a Language entity.
     * Permanently removes a Language entity from the database.
     *
     * @param int $id The ID of the Language entity to remove.
     * @return bool True if the entity was hard deleted, false otherwise.
     */
    public function remove(int $id): bool
    {
        $query = "DELETE FROM `languages` WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Parse a database row into a Language entity.
     * Converts a database row into a Language object.
     *
     * @param array $row The database row to parse.
     * @return Language The parsed Language entity.
     */
    protected function parseEntity(array $row): Language
    {
        return (new LanguageBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withAbbreviation($row["abbreviation"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}
