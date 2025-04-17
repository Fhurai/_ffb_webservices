<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Relation.php";
require_once __DIR__ . "/../builder/RelationBuilder.php";
require_once __DIR__ . "/../builder/CharacterBuilder.php";

/**
 * Class RelationsTable
 * Handles database operations for the `relations` table.
 */
class RelationsTable extends EntitiesTable
{
    private const ERR_NO_DATA = "No data for arguments provided!";
    private const ERR_INVALID_COLUMN = "Invalid column name: '%s'";
    private const ERR_INVALID_DIRECTION = "Invalid order direction: '%s'";
    private const ERR_INVALID_LIMIT = "Invalid or missing limit value!";
    private const ERR_INVALID_OFFSET = "Invalid offset value!";
    private const ERR_INVALID_ENTITY = 'Expected instance of Relation';
    private const BASE_QUERY = "SELECT * FROM `relations`";
    private const DATETIME_FORMAT = "Y-m-d H:i:s";

    public function get(int $id): Relation
    {
        $query = self::BASE_QUERY . " WHERE `id` = :id";
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
        $query = $execute ? self::BASE_QUERY : "";
        $validColumns = $this->getTableColumns('relations');

        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException(sprintf(self::ERR_INVALID_COLUMN, $column));
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

        $query = $execute ? self::BASE_QUERY : "";
        $orderClauses = [];
        $validColumns = $this->getTableColumns('relations');

        foreach ($args as $column => $direction) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException(sprintf(self::ERR_INVALID_COLUMN, $column));
            }

            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException(sprintf(self::ERR_INVALID_DIRECTION, $direction));
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
            throw new FfbTableException(self::ERR_INVALID_LIMIT);
        }

        $query = $execute ? self::BASE_QUERY . " LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException(self::ERR_INVALID_OFFSET);
            }
            $query .= " OFFSET " . (int) $args['offset'];
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
        $query = self::BASE_QUERY;
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
                } elseif (str_contains($key, "_id")) {
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

    public function create(Entity $entity): Relation
    {
        if (!$entity instanceof Relation) {
            throw new \InvalidArgumentException(self::ERR_INVALID_ENTITY);
        }

        $query = "INSERT INTO `relations` (`name`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:name, :creation_date, :update_date, :delete_date)";
        $values = [
            ":name" => $entity->getName(),
            ":creation_date" => $entity->getCreationDate()->format(self::DATETIME_FORMAT),
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format(self::DATETIME_FORMAT) : null,
        ];

        $this->executeQuery($query, $values);
        $entity->setId($this->getLastInsertId());

        $this->updateAssociations($entity);

        return $entity;
    }

    public function update(Entity $entity): Relation
    {
        if (!$entity instanceof Relation) {
            throw new \InvalidArgumentException(self::ERR_INVALID_ENTITY);
        }

        $query = "UPDATE `relations`
                  SET `name` = :name, `update_date` = :update_date
                  WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT),
        ];

        $this->executeQuery($query, $values);
        $this->updateAssociations($entity);

        return $entity;
    }

    public function delete(int $id): bool
    {
        $query = "UPDATE `relations` SET `delete_date` = NOW() WHERE `id` = :id AND `delete_date` IS NULL";
        $result = $this->executeQuery($query, [":id" => $id]);
        return $result > 0;
    }

    public function restore(int $id): bool
    {
        $query = "UPDATE `relations` SET `delete_date` = NULL WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $result = $this->executeQuery($query, [":id" => $id]);
        return $result > 0;
    }

    public function remove(int $id): bool
    {
        $query = "DELETE FROM `relations` WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $result = $this->executeQuery($query, [":id" => $id]);
        return $result > 0;
    }

    protected function parseEntity(array $row): Relation
    {
        $relationBuilder = (new RelationBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"]);

        $query = "SELECT `characters`.* FROM `relations_characters`
                  INNER JOIN `characters` ON `relations_characters`.`character_id` = `characters`.`id`
                  WHERE `relation_id` = :id";
        $characters = $this->executeQuery($query, [":id" => $row["id"]]);

        if (!empty($characters)) {
            foreach ($characters as $character) {
                $relationBuilder->addCharacter((new CharacterBuilder())
                    ->withId($character["id"])
                    ->withName($character["name"])
                    ->withFandomId($character["fandom_id"])
                    ->withCreationDate($character["creation_date"])
                    ->withUpdateDate($character["update_date"])
                    ->withDeleteDate($character["delete_date"])
                    ->build());
            }
        }

        return $relationBuilder->build();
    }

    private function updateAssociations(Relation $entity): void
    {
        if ($entity->hasCharacters()) {
            $this->updateAssociationTable('relations_characters', 'character_id', $entity->getId(), $entity->getCharacters());
        }
    }

    private function updateAssociationTable(string $table, string $column, int $relationId, ?array $items): void
    {
        $queryDelete = "DELETE FROM `$table` WHERE `relation_id` = :relation_id";
        $this->executeQuery($queryDelete, [":relation_id" => $relationId]);

        if ($items) {
            $queryInsert = "INSERT INTO `$table` (`relation_id`, `$column`) VALUES (:relation_id, :item_id)";
            foreach ($items as $item) {
                $this->executeQuery($queryInsert, [
                    ":relation_id" => $relationId,
                    ":item_id" => $item->getId(),
                ]);
            }
        }
    }
}
