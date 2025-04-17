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
    private const NO_DATA_MESSAGE = "No data for arguments provided!";
    private const BASE_SELECT_QUERY = "SELECT * FROM `links`";
    private const DATETIME_FORMAT = "Y-m-d H:i:s";

    public function get(int $id): Link
    {
        $query = self::BASE_SELECT_QUERY . " WHERE `id` = :id";
        $values = [":id" => $id];

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException(self::NO_DATA_MESSAGE);
        }

        return $this->parseEntity($rows[0]);
    }

    public function findSearchedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? self::BASE_SELECT_QUERY : "";

        $validColumns = $this->getTableColumns('links');
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
            throw new FfbTableException(self::NO_DATA_MESSAGE);
        }

        return $this->parseEntities($rows);
    }

    public function findOrderedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? self::BASE_SELECT_QUERY : "";
        $orderClauses = [];

        $validColumns = $this->getTableColumns('links');
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
            throw new FfbTableException(self::NO_DATA_MESSAGE);
        }

        return $this->parseEntities($rows);
    }

    public function findLimitedBy(array $args, $execute = true): array|string
    {
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $query = $execute ? self::BASE_SELECT_QUERY . " LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

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
            throw new FfbTableException(self::NO_DATA_MESSAGE);
        }

        return $this->parseEntities($rows);
    }

    public function findAll(array $args): array
    {
        $query = self::BASE_SELECT_QUERY;
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
            throw new FfbTableException(self::NO_DATA_MESSAGE);
        }

        return $this->parseEntities($rows);
    }

    public function create(Entity $entity): Link
    {
        if (!$entity instanceof Link) {
            throw new \InvalidArgumentException('Expected instance of Link');
        }

        $query = "INSERT INTO `links` (`url`, `fanfiction_id`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:url, :fanfiction_id, :creation_date, :update_date, :delete_date)";
        $values = [
            ":url" => $entity->getUrl(),
            ":fanfiction_id" => $entity->getFanfictionId(),
            ":creation_date" => $entity->getCreationDate()->format(self::DATETIME_FORMAT),
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format(self::DATETIME_FORMAT) : null,
        ];

        $this->executeQuery($query, $values);
        $entity->setId($this->getLastInsertId());

        return $entity;
    }

    public function update(Entity $entity): Link
    {
        if (!$entity instanceof Link) {
            throw new \InvalidArgumentException('Expected instance of Link');
        }

        $query = "UPDATE `links`
                  SET `url` = :url, `fanfiction_id` = :fanfiction_id, `update_date` = :update_date, `delete_date` = :delete_date
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(),
            ":url" => $entity->getUrl(),
            ":fanfiction_id" => $entity->getFanfictionId(),
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format(self::DATETIME_FORMAT) : null,
        ];

        $this->executeQuery($query, $values);

        return $entity;
    }

    public function delete(int $id): bool
    {
        $query = "UPDATE `links` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];
        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    public function restore(int $id): bool
    {
        $query = "UPDATE `links` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];
        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    public function remove(int $id): bool
    {
        $query = "DELETE FROM `links` WHERE `id` = :id";
        $values = [":id" => $id];
        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    protected function parseEntity(array $row): Link
    {
        return (new LinkBuilder())
            ->withId($row["id"])
            ->withUrl($row["url"])
            ->withFanfictionId($row["fanfiction_id"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}
