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
    private const ERROR_NO_DATA = "No data for arguments provided!";
    private const QUERY_SELECT_ALL = "SELECT * FROM `languages`";
    private const DATE_FORMAT = "Y-m-d H:i:s";

    public function get(int $id): Language
    {
        $query = self::QUERY_SELECT_ALL . " WHERE `id` = :id";
        $values = [":id" => $id];
        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntity($rows[0]);
    }

    public function findSearchedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? self::QUERY_SELECT_ALL : "";

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
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findOrderedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? self::QUERY_SELECT_ALL : "";
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
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findLimitedBy(array $args, $execute = true): array|string
    {
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $query = $execute ? self::QUERY_SELECT_ALL . " LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

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
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findAll(array $args): array
    {
        $query = self::QUERY_SELECT_ALL;
        $values = [];

        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                if (str_contains($value, '%')) {
                    $values[":$key"] = $value;
                } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $matches)) {
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
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

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
            ":creation_date" => $entity->getCreationDate()->format(self::DATE_FORMAT),
            ":update_date" => $entity->getUpdateDate()->format(self::DATE_FORMAT),
            ":delete_date" => null
        ];

        $this->executeQuery($query, $values);

        $entity->setId($this->getLastInsertId());
        return $entity;
    }

    public function update(Entity $entity): Language
    {
        if (!$entity instanceof Language) {
            throw new \InvalidArgumentException('Expected instance of Language');
        }

        $query = "UPDATE `languages`
                  SET `name` = :name, `abbreviation` = :abbreviation, `update_date` = :update_date
                  WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":abbreviation" => $entity->getAbbreviation(),
            ":update_date" => $entity->getUpdateDate()->format(self::DATE_FORMAT)
        ];

        $this->executeQuery($query, $values);

        return $entity;
    }

    public function delete(int $id): bool
    {
        $query = "UPDATE `languages` SET `delete_date` = NOW() WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    public function restore(int $id): bool
    {
        $query = "UPDATE `languages` SET `delete_date` = NULL WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    public function remove(int $id): bool
    {
        $query = "DELETE FROM `languages` WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

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
