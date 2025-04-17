<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Author.php";
require_once __DIR__ . "/../builder/AuthorBuilder.php";

/**
 * Handles database operations for the Author entity.
 */
class AuthorsTable extends EntitiesTable
{
    private const TABLE_NAME = '`authors`';
    private const DATE_FORMAT = 'Y-m-d H:i:s';
    private const DEFAULT_SELECT_QUERY = 'SELECT * FROM `authors`';
    private const NO_DATA_EXCEPTION = 'No data for arguments provided!';

    public function get(int $id): Author
    {
        $query = self::DEFAULT_SELECT_QUERY . " WHERE `id` = :id";
        $values = [":id" => $id];

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException(self::NO_DATA_EXCEPTION);
        }

        return $this->parseEntity($rows[0]);
    }

    public function findSearchedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? self::DEFAULT_SELECT_QUERY : "";

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

        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException(self::NO_DATA_EXCEPTION);
        }

        return $this->parseEntities($rows);
    }

    public function findOrderedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? self::DEFAULT_SELECT_QUERY : "";
        $orderClauses = [];

        $validColumns = $this->getTableColumns('authors');
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
            throw new FfbTableException(self::NO_DATA_EXCEPTION);
        }

        return $this->parseEntities($rows);
    }

    public function findLimitedBy(array $args, $execute = true): array|string
    {
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $query = $execute ? self::DEFAULT_SELECT_QUERY . " LIMIT " . (int) $args['limit'] : "LIMIT " . (int) $args['limit'];

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
            throw new FfbTableException(self::NO_DATA_EXCEPTION);
        }

        return $this->parseEntities($rows);
    }

    public function findAll(array $args): array
    {
        $query = self::DEFAULT_SELECT_QUERY;
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
            throw new FfbTableException(self::NO_DATA_EXCEPTION);
        }

        return $this->parseEntities($rows);
    }

    public function create(Entity $entity): Author
    {
        if (!$entity instanceof Author) {
            throw new \InvalidArgumentException('Expected instance of Author');
        }

        $query = "INSERT INTO `authors` (`name`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:name, :creation_date, :update_date, :delete_date)";
        $values = [
            ":name" => $entity->getName(),
            ":creation_date" => $entity->getCreationDate()->format(self::DATE_FORMAT),
            ":update_date" => $entity->getUpdateDate()->format(self::DATE_FORMAT),
            ":delete_date" => null,
        ];

        $this->executeQuery($query, $values);
        $entity->setId($this->getLastInsertId());

        return $entity;
    }

    public function update(Entity $entity): Author
    {
        if (!$entity instanceof Author) {
            throw new \InvalidArgumentException('Expected instance of Author');
        }

        $query = "UPDATE `authors`
                  SET `name` = :name, `update_date` = :update_date
                  WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":update_date" => (new DateTime("now", new DateTimeZone("Europe/Paris")))->format(self::DATE_FORMAT)
        ];

        $result = $this->executeQuery($query, $values);

        if ($result === 0) {
            throw new FfbTableException("Update failed for the author is deleted", 403);
        }

        return $entity;
    }

    public function delete(int $id): bool
    {
        $query = "UPDATE `authors` SET `delete_date` = NOW() WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    public function restore(int $id): bool
    {
        $query = "UPDATE `authors` SET `delete_date` = NULL WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    public function remove(int $id): bool
    {
        $query = "DELETE FROM `authors` WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result === 1;
    }

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
