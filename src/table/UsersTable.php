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
    /**
     * Get a User entity by its ID.
     *
     * @param int $id The ID of the user.
     * @return User The User entity.
     * @throws FfbTableException If no data is found for the given ID.
     */
    public function get(int $id): User
    {
        // Prepare the query to fetch the user by ID.
        $query = "SELECT * FROM `users` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no data is found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the result into a User object and return it.
        return $this->parseEntity($rows[0]);
    }

    /**
     * Find users based on search criteria.
     *
     * @param array $args The search criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The search results as an array of User objects or the query string.
     * @throws FfbTableException If no search arguments are provided or invalid columns are used.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        // Ensure search arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? "SELECT * FROM `users`" : "";

        // Validate that the provided columns exist in the table.
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

        // Append conditions to the query if any exist.
        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        // Return the query string if execution is not required.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch results.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no results are found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the results as User entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find users ordered by specific criteria.
     *
     * @param array $args The ordering criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The ordered results as an array of User objects or the query string.
     * @throws FfbTableException If no order arguments are provided or invalid columns are used.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        // Ensure order arguments are provided.
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? "SELECT * FROM `users`" : "";
        $orderClauses = [];

        // Validate that the provided columns exist in the table.
        $validColumns = $this->getTableColumns('users');
        foreach ($args as $column => $direction) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            // Validate the order direction (ASC or DESC).
            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException("Invalid order direction: '$direction'");
            }
            $orderClauses[] = "$column $direction";
        }

        // Append order clauses to the query if any exist.
        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
        }

        // Return the query string if execution is not required.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch results.
        $rows = $this->executeQuery($query);

        // Throw an exception if no results are found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the results as User entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find a limited number of users based on criteria.
     *
     * @param array $args The limiting criteria as key-value pairs.
     * @param bool $execute Whether to execute the query immediately.
     * @return array|string The limited results as an array of User objects or the query string.
     * @throws FfbTableException If the limit or offset values are invalid.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Validate the limit value.
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        // Build the query with the limit and optional offset.
        $query = $execute ? "SELECT * FROM `users` LIMIT " . (int) $args['limit'] : " LIMIT " . (int) $args['limit'];

        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException("Invalid offset value!");
            }
            $query .= " OFFSET " . (int) $args['offset'];
        }

        // Return the query string if execution is not required.
        if (!$execute) {
            return $query;
        }

        // Execute the query and fetch results.
        $rows = $this->executeQuery($query);

        // Throw an exception if no results are found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the results as User entities.
        return $this->parseEntities($rows);
    }

    /**
     * Find all users based on criteria.
     *
     * @param array $args The criteria as key-value pairs.
     * @return array The results as an array of User objects.
     * @throws FfbTableException If no data is found for the given criteria.
     */
    public function findAll(array $args): array
    {
        // Build the base query.
        $query = "SELECT * FROM `users`";
        $values = [];

        // Add search conditions if provided.
        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                if (str_contains($value, '%')) {
                    $values[":$key"] = $value;
                } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $matches)) {
                    $val = trim($matches[2]);
                    $values[":$key"] = str_replace("'", "", $val);
                }else if(str_contains($key, "is_")){
                    $values[":$key"] = $value;
                }
            }
        }

        // Add ordering if provided.
        if (!empty($args['order'])) {
            $orderQuery = $this->findOrderedBy($args['order'], false);
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        // Add limiting if provided.
        if (!empty($args['limit'])) {
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        // Execute the query and fetch results.
        $rows = $this->executeQuery($query, $values);

        // Throw an exception if no results are found.
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse and return the results as User entities.
        return $this->parseEntities($rows);
    }

    /**
     * Create a new User entity in the database.
     *
     * @param Entity $entity The User entity to create.
     * @return User The created User entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of User.
     */
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
            ":birthday" => $entity->getBirthday()->format("Y-m-d H:i:s"),
            ":is_nsfw" => $entity->isNsfw() ? 1 : 0,
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        $this->executeQuery($query, $values);

        $entity->setId($this->getLastInsertId());
        return $entity;
    }

    /**
     * Update an existing User entity in the database.
     *
     * @param Entity $entity The User entity to update.
     * @return User The updated User entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of User.
     */
    public function update(Entity $entity): User
    {
        if (!$entity instanceof User) {
            throw new \InvalidArgumentException('Expected instance of User');
        }

        $query = "UPDATE `users`
                  SET `username` = :username, `password` = :password, `email` = :email, `is_admin` = :is_admin, `is_local` = :is_local,
                      `birthday` = :birthday, `is_nsfw` = :is_nsfw, `update_date` = :update_date, `delete_date` = :delete_date
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(),
            ":username" => $entity->getUsername(),
            ":password" => $entity->getPassword(),
            ":email" => $entity->getEmail(),
            ":is_admin" => $entity->isAdmin() ? 1 : 0,
            ":is_local" => $entity->isLocal() ? 1 : 0,
            ":birthday" => $entity->getBirthday()->format("Y-m-d H:i:s"),
            ":is_nsfw" => $entity->isNsfw() ? 1 : 0,
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        $this->executeQuery($query, $values);

        return $entity;
    }

    /**
     * Soft delete a User entity by setting its delete_date.
     *
     * @param int $id The ID of the user to delete.
     * @return bool True if the deletion was successful, false otherwise.
     */
    public function delete(int $id): bool
    {
        // Prepare the query to set the delete_date for the specified user.
        $query = "UPDATE `users` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and check if any rows were affected.
        $result = $this->executeQuery($query, $values);

        // Return true if the deletion was successful, otherwise false.
        return $result > 0;
    }

    /**
     * Restore a soft-deleted User entity by setting its delete_date to NULL.
     *
     * @param int $id The ID of the user to restore.
     * @return bool True if the restoration was successful, false otherwise.
     */
    public function restore(int $id): bool
    {
        // Prepare the query to reset the delete_date for the specified user.
        $query = "UPDATE `users` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and check if any rows were affected.
        $result = $this->executeQuery($query, $values);

        // Return true if the restoration was successful, otherwise false.
        return $result > 0;
    }

    /**
     * Permanently remove a User entity from the database.
     *
     * @param int $id The ID of the user to remove.
     * @return bool True if the removal was successful, false otherwise.
     */
    public function remove(int $id): bool
    {
        // Prepare the query to permanently delete the specified user.
        $query = "DELETE FROM `users` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and check if any rows were affected.
        $result = $this->executeQuery($query, $values);

        // Return true if the removal was successful, otherwise false.
        return $result > 0;
    }

    /**
     * Parse a database row into a User entity.
     *
     * @param array $row The database row.
     * @return User The parsed User entity.
     */
    protected function parseEntity(array $row): User
    {
        // Use the UserBuilder to construct a User entity from the database row.
        return (new UserBuilder())
            ->withId($row["id"]) // Set the user ID.
            ->withUsername($row["username"]) // Set the username.
            ->withPassword($row["password"]) // Set the password.
            ->withEmail($row["email"]) // Set the email address.
            ->withIsAdmin($row["is_admin"]) // Set the admin status.
            ->withIsLocal($row["is_local"]) // Set the local status.
            ->withBirthday($row["birthday"]) // Set the birthday.
            ->withIsNsfw($row["is_nsfw"]) // Set the NSFW status.
            ->withCreationDate($row["creation_date"]) // Set the creation date.
            ->withUpdateDate($row["update_date"]) // Set the update date.
            ->withDeleteDate( $row["delete_date"]) // Set the delete date if it exists.
            ->build(); // Build and return the User entity.
    }
}
