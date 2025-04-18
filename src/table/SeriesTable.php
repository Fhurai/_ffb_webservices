<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Series.php";
require_once __DIR__ . "/../builder/SeriesBuilder.php";
require_once __DIR__ . '/FanfictionsTable.php';

/**
 * SeriesTable class.
 * Handles database operations for the Series entity, including CRUD operations
 * and managing associations such as fanfictions.
 */
class SeriesTable extends EntitiesTable
{
    private const ERR_NO_DATA = "No data for arguments provided!";
    private const QUERY_SELECT_ALL_SERIES = "SELECT * FROM `series`";
    private const DATETIME_FORMAT = "Y-m-d H:i:s";

    public function get(int $id): Series
    {
        $query = self::QUERY_SELECT_ALL_SERIES . " WHERE `id` = :id";
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
        $query = $execute ? self::QUERY_SELECT_ALL_SERIES : "";

        $validColumns = $this->getTableColumns('series');
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

        $query = $execute ? self::QUERY_SELECT_ALL_SERIES : "";
        $orderClauses = [];

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

        $query = $execute ? self::QUERY_SELECT_ALL_SERIES . " LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

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
            throw new FfbTableException(self::ERR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findAll(array $args): array
    {
        $query = self::QUERY_SELECT_ALL_SERIES;
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
            throw new FfbTableException(self::ERR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function create(Entity $entity): Series
    {
        if (!$entity instanceof Series) {
            throw new \InvalidArgumentException('Expected instance of Series');
        }

        $query = "INSERT INTO `series` (`name`, `description`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:name, :description, :creation_date, :update_date, :delete_date)";
        $values = [
            ":name" => $entity->getName(),
            ":description" => $entity->getDescription(),
            ":creation_date" => $entity->getCreationDate()->format(self::DATETIME_FORMAT),
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format(self::DATETIME_FORMAT) : null,
        ];

        $this->executeQuery($query, $values);
        $entity->setId($this->getLastInsertId());

        $this->updateAssociations($entity);

        return $entity;
    }

    public function update(Entity $entity): Series
    {
        if (!$entity instanceof Series) {
            throw new \InvalidArgumentException('Expected instance of Series');
        }

        $query = "UPDATE `series`
                  SET `name` = :name, `description` = :description, `update_date` = :update_date, `delete_date` = :delete_date
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":description" => $entity->getDescription(),
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format(self::DATETIME_FORMAT) : null,
        ];

        $this->executeQuery($query, $values);

        $this->updateAssociations($entity);

        return $entity;
    }

    private function updateAssociations(Series $entity): void
    {
        if ($entity->hasFanfictions()) {
            $this->updateAssociationTable('series_fanfictions', 'fanfiction_id', $entity->getId(), $entity->getFanfictions());
        }
    }

    private function updateAssociationTable(string $table, string $column, int $seriesId, ?array $items): void
    {
        $queryDelete = "DELETE FROM `$table` WHERE `series_id` = :series_id";
        $this->executeQuery($queryDelete, [":series_id" => $seriesId]);

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

    public function delete(int $id): bool
    {
        $query = "UPDATE `series` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);
        return $result > 0;
    }

    public function restore(int $id): bool
    {
        $query = "UPDATE `series` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);
        return $result > 0;
    }

    public function remove(int $id): bool
    {
        $query = "DELETE FROM `series` WHERE `id` = :id";
        $values = [":id" => $id];

        $result = $this->executeQuery($query, $values);
        return $result > 0;
    }

    protected function parseEntity(array $row): Series
    {
        $builder = (new SeriesBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withDescription($row["description"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"]);

        $this->parseMultiAssociation('fanfictions', $builder, $row['id']);

        return $builder->build();
    }

    protected function parseMultiAssociation(string $association, SeriesBuilder $builder, int $id): void
    {
        $mono = substr($association, 0, -1);
        $table = $association . 'Table';
        $addMethod = 'add' . ucfirst($mono);

        $query = "SELECT `{$mono}_id` FROM `series_{$association}`
        WHERE `series_id` = :id
        ORDER BY ranking ASC";
        $entities = $this->executeQuery($query, [":id" => $id]);

        if (!empty($entities)) {
            $assocTable = new $table($this->typeConnection, $this->user);
            foreach ($entities as $entity) {
                $builder->$addMethod($assocTable->get($entity[$mono . '_id']));
            }
        }
    }
}
