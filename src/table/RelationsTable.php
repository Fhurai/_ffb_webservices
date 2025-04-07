<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Relation.php";
require_once __DIR__ . "/../builder/RelationBuilder.php";

class RelationsTable extends EntitiesTable
{
    public function get(int $id): Relation
    {
        $query = "SELECT * FROM `relations` WHERE `id` = :id";
        $values = [":id" => $id];
        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        return $this->parseEntity($rows[0]);
    }

    public function findSearchedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `relations`" : "";
        $validColumns = $this->getTableColumns('relations');

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

    public function findOrderedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `relations`" : "";
        $orderClauses = [];
        $validColumns = $this->getTableColumns('relations');

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

    public function findLimitedBy(array $args, $execute = true): array|string
    {
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $query = $execute ? "SELECT * FROM `relations` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

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

    public function findAll(array $args): array
    {
        $query = "SELECT * FROM `relations`";
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

    public function create(Entity $entity): Relation
    {
        if (!$entity instanceof Relation) {
            throw new \InvalidArgumentException('Expected instance of Relation');
        }

        $query = "INSERT INTO `relations` (`name`, `creation_date`, `update_date`, `delete_date`) 
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

    public function update(Entity $entity): Relation
    {
        if (!$entity instanceof Relation) {
            throw new \InvalidArgumentException('Expected instance of Relation');
        }

        $query = "UPDATE `relations` 
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

    public function delete(int $id): bool
    {
        $query = "UPDATE `relations` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    public function restore(int $id): bool
    {
        $query = "UPDATE `relations` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    public function remove(int $id): bool
    {
        $query = "DELETE FROM `relations` WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    protected function parseEntity(array $row): Relation
    {
        $relation = (new RelationBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();

        $query = "SELECT `characters`.* FROM `relations_characters` INNER JOIN `characters` ON `relations_characters`.`character_id` = `characters`.`id` WHERE `relation_id` = :id";
        $values = [":id" => $relation->getId()];

        $characters = $this->executeQuery($query, $values);

        if (!empty($characters)) {
            $array = [];
            
            foreach ($characters as $character) {
                $array[] = (new CharacterBuilder())
                    ->withId($character["id"])
                    ->withName($character["name"])
                    ->withCreationDate($character["creation_date"])
                    ->withUpdateDate($character["update_date"])
                    ->withDeleteDate($character["delete_date"])
                    ->build();    
            }
            $relation->setCharacters($array);
        }

        return $relation;
    }
}
