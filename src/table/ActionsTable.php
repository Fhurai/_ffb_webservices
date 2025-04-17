<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/ParametersTable.php";
require_once __DIR__ . "/../entity/Action.php";

/**
 * Class ActionsTable
 * Handles operations related to the `actions` table in the database.
 */
class ActionsTable extends ParametersTable
{
    private const BASE_SELECT_QUERY = "SELECT * FROM `actions`";

    public function get(int $id): Action
    {
        $query = self::BASE_SELECT_QUERY . " WHERE `id` = :id";
        $values = [":id" => $id];

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException("No action found with ID: $id");
        }

        return $this->parseEntity($rows[0]);
    }

    public function findSearchedBy(array $args, bool $execute = true): mixed
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? self::BASE_SELECT_QUERY : "";

        $validColumns = $this->getTableColumns('actions');
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
            throw new FfbTableException("No actions found matching the search criteria.");
        }

        return $this->parseEntities($rows);
    }

    public function findOrderedBy(array $args, bool $execute = true): mixed
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? self::BASE_SELECT_QUERY : "";
        $orderClauses = [];

        $validColumns = $this->getTableColumns('actions');
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
            throw new FfbTableException("No actions found matching the order criteria.");
        }

        return $this->parseEntities($rows);
    }

    public function findLimitedBy(array $args, bool $execute = true): mixed
    {
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $limitClause = " LIMIT " . (int) $args['limit'];
        $query = $execute ? self::BASE_SELECT_QUERY . $limitClause : $limitClause;

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
            throw new FfbTableException("No actions found within the specified limit and offset.");
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
            throw new FfbTableException("No actions found matching the specified criteria.");
        }

        return $this->parseEntities($rows);
    }

    protected function parseEntity(array $row): Action
    {
        return new Action($row["id"], $row["name"]);
    }
}
