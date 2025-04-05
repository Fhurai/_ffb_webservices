<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/User.php";
require_once __DIR__ . "/../builder/UserBuilder.php";

class UsersTable extends EntitiesTable {

    /**
     * Fetches a user by their ID.
     *
     * @param int $id The ID of the user to fetch.
     * @return User The User entity corresponding to the provided ID.
     * @throws FfbTableException If no user is found for the given ID.
     */
    public function get(int $id): User
    {
        // Prepare the SQL query to fetch the user by ID
        $query = "SELECT * FROM `users` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and fetch the result
        $rows = $this->executeQuery($query, $values);

        // Check if no rows are returned and throw an exception
        if (empty($rows)) {
            throw new FfbTableException("No data for arguments provided!");
        }

        // Parse the result into a User entity and return it
        return $this->parseEntity($rows[0]);
    }

    /**
     * Searches for users based on provided criteria.
     *
     * @param array $args An associative array of search criteria.
     *                    Keys are column names, and values are the search values.
     * @param bool $execute Whether to execute the query or return the query string.
     * @return array|string An array of User entities if $execute is true, or the query string if false.
     */
    public function findSearchedBy(array $args, $execute = true): array|string
    {
        // Initialize query and values
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `users`" : "";

        // Build the WHERE clause based on the search criteria
        foreach ($args as $key => $value) {
            if ($first) {
                $query .= " WHERE ";
                $first = false;
            } else {
                $query .= " AND ";
            }

            // Handle operators like <, >, !, % in the search value
            if ((strpos($value, "<") !== false) || (strpos($value, ">") !== false) || (strpos($value, "!") !== false) || (strpos($value, "%"))) {
                $array = explode(' ', $value);
                $query .= " " . $key . " " . $array[0] . " :" . $key;
                $values[":" . $key] = str_replace("'", "", $array[1]);
            } else {
                $query .= " " . $key . " = :" . $key;
                $values[":" . $key] = $value;
            }
        }

        // Return the query string if $execute is false
        if (!$execute) {
            return $query;
        }

        // Execute the query and parse the results into User entities
        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Orders users based on provided criteria.
     *
     * @param array $args An associative array of order criteria.
     *                    Keys are column names, and values are the sort directions (e.g., ASC, DESC).
     * @param bool $execute Whether to execute the query or return the query string.
     * @return array|string An array of User entities if $execute is true, or the query string if false.
     */
    public function findOrderedBy(array $args, $execute = true): array|string
    {
        // Initialize query and values
        $values = [];
        $first = true;
        $query = $execute ? "SELECT * FROM `users`" : "";

        // Build the ORDER BY clause based on the criteria
        foreach ($args as $key => $value) {
            if ($first) {
                $query .= " ORDER BY " . $key . " " . $value;
                $first = false;
            } else {
                $query .= "OFFSET " . $key . " " . $value;
            }
        }

        // Return the query string if $execute is false
        if (!$execute) {
            return $query;
        }

        // Execute the query and parse the results into User entities
        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Limits the number of users returned based on provided criteria.
     *
     * @param array $args An associative array containing "limit" and optionally "offset".
     * @param bool $execute Whether to execute the query or return the query string.
     * @return array|string An array of User entities if $execute is true, or the query string if false.
     * @throws FfbTableException If no limit is provided in the arguments.
     */
    public function findLimitedBy(array $args, $execute = true): array|string
    {
        // Initialize query and values
        $values = [];
        $query = $execute ? "SELECT * FROM `users`" : "";

        // Add LIMIT clause to the query
        if (!empty($args) && is_array($args) && array_key_exists("limit", $args)) {
            $query .= " LIMIT " . $args["limit"];
        } else {
            throw new FfbTableException("No limit provided!");
        }

        // Add OFFSET clause if provided
        if (!empty($args) && is_array($args) && array_key_exists("offset", $args)) {
            $query .= ", " . $args["offset"];
        }

        // Return the query string if $execute is false
        if (!$execute) {
            return $query;
        }

        // Execute the query and parse the results into User entities
        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Combines search, order, and limit criteria to fetch users.
     *
     * @param array $args An associative array containing "search", "order", and "limit" criteria.
     * @return array An array of User entities matching the combined criteria.
     */
    public function findAll(array $args): array
    {
        // Initialize query and values
        $values = [];
        $query = "SELECT * FROM `users`";

        // Add search criteria to the query
        if (array_key_exists("search", $args)) {
            $query .= $this->findSearchedBy($args["search"], false);
            foreach (array_keys($args["search"]) as $key) {
                $array = explode(' ', $args["search"][$key]);
                $values[":" . $key] = str_replace("'", "", $array[1]);
            }
        }

        // Add order criteria to the query
        if (array_key_exists("order", $args)) {
            $query .= $this->findOrderedBy($args["order"], false);
        }

        // Add limit criteria to the query
        if (array_key_exists("limit", $args)) {
            $query .= $this->findLimitedBy($args["limit"], false);
        }

        // Execute the query and parse the results into User entities
        $rows = $this->executeQuery($query, $values);

        return $this->parseEntities($rows);
    }

    /**
     * Creates a new user in the database.
     *
     * @param Entity $entity The User entity to create.
     * @return User The created User entity with its ID set.
     * @throws \InvalidArgumentException If the provided entity is not an instance of User.
     */
    public function create(Entity $entity): User
    {
        // Validate that the entity is an instance of User
        if (!$entity instanceof User) {
            throw new \InvalidArgumentException('Expected instance of User');
        }

        // Prepare the SQL query for inserting a new user
        $query = "INSERT INTO `users` (`username`, `password`, `email`, `is_admin`, `is_local`, `birthday`, `is_nsfw`, `creation_date`, `update_date`, `delete_date`) 
                  VALUES (:username, :password, :email, :is_admin, :is_local, :birthday, :is_nsfw, :creation_date, :update_date, :delete_date)";
        $values = [
            ":username" => $entity->getUsername(),
            ":password" => $entity->getPassword(),
            ":email" => $entity->getEmail(),
            ":is_admin" => $entity->isAdmin(),
            ":is_local" => $entity->isLocal(),
            ":birthday" => $entity->getBirthDate(),
            ":is_nsfw" => $entity->isNsfw(),
            ":creation_date" => $entity->getCreationDate()->format("Y-m-d H:i:s"),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null,
        ];

        // Execute the query to insert the user
        $this->executeQuery($query, $values);

        // Set the ID of the newly created user and return the entity
        $entity->setId($this->getLastInsertId());
        return $entity;
    }

    /**
     * Updates an existing user in the database.
     *
     * @param Entity $entity The User entity to update.
     * @return User The updated User entity.
     * @throws \InvalidArgumentException If the provided entity is not an instance of User.
     */
    public function update(Entity $entity): User
    {
        // Validate that the entity is an instance of User
        if (!$entity instanceof User) {
            throw new \InvalidArgumentException('Expected instance of User');
        }

        // Prepare the SQL query for updating the user
        $query = "UPDATE `users` 
                  SET `username` = :username, `password` = :password, `email` = :email, `is_admin` = :is_admin, `is_local` = :is_local, `birthday` = :birthday, `is_nsfw` = :is_nsfw, `update_date` = :update_date, `delete_date` = :delete_date 
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(),
            ":username" => $entity->getUsername(),
            ":password" => $entity->getPassword(),
            ":email" => $entity->getEmail(),
            ":is_admin" => $entity->isAdmin(),
            ":is_local" => $entity->isLocal(),
            ":birthday" => $entity->getBirthDate(),
            ":is_nsfw" => $entity->isNsfw(),
            ":update_date" => $entity->getUpdateDate()->format("Y-m-d H:i:s"),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format("Y-m-d H:i:s") : null
        ];

        // Execute the query to update the user
        $this->executeQuery($query, $values);

        return $entity;
    }

    /**
     * Soft deletes a user by setting their delete_date to the current timestamp.
     *
     * @param int $id The ID of the user to soft delete.
     * @return bool True if the user was successfully soft deleted, false otherwise.
     */
    public function delete(int $id): bool
    {
        // Prepare the SQL query for soft deleting the user
        $query = "UPDATE `users` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and return whether any rows were affected
        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Restores a soft-deleted user by setting their delete_date to NULL.
     *
     * @param int $id The ID of the user to restore.
     * @return bool True if the user was successfully restored, false otherwise.
     */
    public function restore(int $id): bool
    {
        // Prepare the SQL query for restoring the user
        $query = "UPDATE `users` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and return whether any rows were affected
        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Permanently removes a user from the database.
     *
     * @param int $id The ID of the user to permanently delete.
     * @return bool True if the user was successfully removed, false otherwise.
     */
    public function remove(int $id): bool
    {
        // Prepare the SQL query for permanently deleting the user
        $query = "DELETE FROM `users` WHERE `id` = :id";
        $values = [":id" => $id];

        // Execute the query and return whether any rows were affected
        $result = $this->executeQuery($query, $values);

        return $result > 0;
    }

    /**
     * Converts a database row into a User entity using the UserBuilder.
     *
     * @param array $row The database row to convert.
     * @return User The User entity constructed from the database row.
     */
    protected function parseEntity(array $row): User
    {
        // Use the UserBuilder to construct a User entity from the database row
        return (new UserBuilder())
            ->withId($row["id"])
            ->withUsername($row["username"])
            ->withPassword($row["password"])
            ->withEmail($row["email"])
            ->isAdmin($row["is_admin"])
            ->isLocal($row["is_local"])
            ->withBirthday($row["birthday"])
            ->isNsfw($row["is_nsfw"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}