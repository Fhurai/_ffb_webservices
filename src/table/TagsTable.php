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
    private const ERR_NO_DATA = "No data for arguments provided!";
    private const SELECT_ALL_TAGS = "SELECT * FROM `tags`";
    private const DATE_FORMAT = "Y-m-d H:i:s";

    public function get(int $id): Tag
    {
        $query = "SELECT * FROM `tags` WHERE `id` = :id";
        $values = [":id" => $id];
        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException(self::ERR_NO_DATA);
        }

        return $this->parseEntity($rows[0]);
    }

    public function findSearchedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? self::SELECT_ALL_TAGS : "";

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

        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException(self::ERR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findOrderedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? self::SELECT_ALL_TAGS : "";
        $orderClauses = [];

        $validColumns = $this->getTableColumns('tags');
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
            throw new FfbTableException(self::ERR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findLimitedBy(array $args, $execute = true): array|string
    {
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $query = $execute ? self::SELECT_ALL_TAGS . " LIMIT " . (int)$args['limit'] : "LIMIT " . (int)$args['limit'];

        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException("Invalid offset value!");
            }
            $query .= " OFFSET " . (int)$args['offset'];
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query);

        if (empty($rows)) {
            throw new FfbTableException(self::ERR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findAll(array $args): array
    {
        $query = self::SELECT_ALL_TAGS;
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
                } else if (str_contains($key, "_id")) {
                    $values[":$key"] = $value;
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
            throw new FfbTableException(self::ERR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function create(Entity $entity): Tag
    {
        if (!$entity instanceof Tag) {
            throw new \InvalidArgumentException('Expected instance of Tag');
        }

        $query = "INSERT INTO `tags` (`description`, `name`, `type_id`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:description, :name, :type_id, :creation_date, :update_date, :delete_date)";
        $values = [
            ":description" => $entity->getDescription(),
            ":name" => $entity->getName(),
            ":type_id" => $entity->getTypeId(),
            ":creation_date" => $entity->getCreationDate()->format(self::DATE_FORMAT),
            ":update_date" => $entity->getUpdateDate()->format(self::DATE_FORMAT),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format(self::DATE_FORMAT) : null,
        ];

        $this->executeQuery($query, $values);
        $entity->setId($this->getLastInsertId());

        $tagTypeTable = new TagTypesTable($this->typeConnection, $this->user);
        $entity->setTagType($tagTypeTable->get($entity->getTypeId()));

        return $entity;
    }

    public function update(Entity $entity): Tag
    {
        if (!$entity instanceof Tag) {
            throw new \InvalidArgumentException('Expected instance of Tag');
        }

        $query = "UPDATE `tags`
                  SET `description` = :description, `name` = :name, `type_id` = :type_id, `update_date` = :update_date
                  WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [
            ":id" => $entity->getId(),
            ":description" => $entity->getDescription(),
            ":name" => $entity->getName(),
            ":type_id" => $entity->getTypeId(),
            ":update_date" => $entity->getUpdateDate()->format(self::DATE_FORMAT)
        ];

        $this->executeQuery($query, $values);

        return $entity;
    }

    public function delete(int $id): bool
    {
        $query = "UPDATE `tags` SET `delete_date` = NOW() WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [":id" => $id];

        return $this->executeQuery($query, $values) > 0;
    }

    public function restore(int $id): bool
    {
        $query = "UPDATE `tags` SET `delete_date` = NULL WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];

        return $this->executeQuery($query, $values) > 0;
    }

    public function remove(int $id): bool
    {
        $query = "DELETE FROM `tags` WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];

        return $this->executeQuery($query, $values) > 0;
    }

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

        $typeId = $tag->getTypeId();
        if ($typeId > 0) {
            $tagTypeTable = new TagTypesTable($this->typeConnection, $this->user);
            try {
                $tagType = $tagTypeTable->get($typeId);
                $tag->setTagType($tagType);
            } catch (FfbTableException $e) {
                $tag->setTagType(null);
            }
        }

        return $tag;
    }
}
