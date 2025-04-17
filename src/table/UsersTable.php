<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/User.php";
require_once __DIR__ . "/../builder/UserBuilder.php";

/**
 * UsersTable class
 * Handles database operations for the `users` table.
 */
class UsersTable extends EntitiesTable
{
    private const ERROR_NO_DATA = "No data for arguments provided!";
    private const BASE_SELECT_USERS = "SELECT * FROM `users`";
    private const DATETIME_FORMAT = "Y-m-d H:i:s";

    public function get(int $id): User
    {
        $query = self::BASE_SELECT_USERS . " WHERE `id` = :id";
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
        $query = $execute ? self::BASE_SELECT_USERS : "";

        $validColumns = $this->getTableColumns('users');
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

        $query = $execute ? self::BASE_SELECT_USERS : "";
        $orderClauses = [];

        $validColumns = $this->getTableColumns('users');
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

        $query = $execute ? self::BASE_SELECT_USERS . " LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

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
        $query = self::BASE_SELECT_USERS;
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
                } elseif (str_contains($key, "is_")) {
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
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function create(Entity $entity): User
    {
        if (!$entity instanceof User) {
            throw new \InvalidArgumentException('Expected instance of User');
        }

        $query = "INSERT INTO `users` (`username`, `password`, `email`, `is_admin`, `is_local`, `birthday`, `is_nsfw`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:username, :password, :email, :is_admin, :is_local, :birthday, :is_nsfw, :creation_date, :update_date, :delete_date)";
        $values = [
            ":username" => $entity->getUsername(),
            ":password" => $entity->getPassword(),
            ":email" => $entity->getEmail(),
            ":is_admin" => $entity->isAdmin() ? 1 : 0,
            ":is_local" => $entity->isLocal() ? 1 : 0,
            ":birthday" => $entity->getBirthday()->format(self::DATETIME_FORMAT),
            ":is_nsfw" => $entity->isNsfw() ? 1 : 0,
            ":creation_date" => $entity->getCreationDate()->format(self::DATETIME_FORMAT),
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT),
            ":delete_date" => null,
        ];

        $this->executeQuery($query, $values);

        $entity->setId($this->getLastInsertId());
        return $entity;
    }

    public function update(Entity $entity): User
    {
        if (!$entity instanceof User) {
            throw new \InvalidArgumentException('Expected instance of User');
        }

        $query = "UPDATE `users`
                  SET `username` = :username, `password` = :password, `email` = :email, `is_admin` = :is_admin, `is_local` = :is_local,
                      `birthday` = :birthday, `is_nsfw` = :is_nsfw, `update_date` = :update_date
                  WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [
            ":id" => $entity->getId(),
            ":username" => $entity->getUsername(),
            ":password" => $entity->getPassword(),
            ":email" => $entity->getEmail(),
            ":is_admin" => $entity->isAdmin() ? 1 : 0,
            ":is_local" => $entity->isLocal() ? 1 : 0,
            ":birthday" => $entity->getBirthday()->format(self::DATETIME_FORMAT),
            ":is_nsfw" => $entity->isNsfw() ? 1 : 0,
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT)
        ];

        $this->executeQuery($query, $values);

        return $entity;
    }

    public function delete(int $id): bool
    {
        $query = "UPDATE `users` SET `delete_date` = NOW() WHERE `id` = :id AND `delete_date` IS NULL";
        $values = [":id" => $id];
        $result = $this->executeQuery($query, $values);
        return $result > 0;
    }

    public function restore(int $id): bool
    {
        $query = "UPDATE `users` SET `delete_date` = NULL WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];
        $result = $this->executeQuery($query, $values);
        return $result > 0;
    }

    public function remove(int $id): bool
    {
        $query = "DELETE FROM `users` WHERE `id` = :id AND `delete_date` IS NOT NULL";
        $values = [":id" => $id];
        $result = $this->executeQuery($query, $values);
        return $result > 0;
    }

    protected function parseEntity(array $row): User
    {
        return (new UserBuilder())
            ->withId($row["id"])
            ->withUsername($row["username"])
            ->withPassword($row["password"])
            ->withEmail($row["email"])
            ->withIsAdmin($row["is_admin"])
            ->withIsLocal($row["is_local"])
            ->withBirthday($row["birthday"])
            ->withIsNsfw($row["is_nsfw"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}
