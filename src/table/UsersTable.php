<?php

require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../builder/UserBuilder.php";

/**
 * UsersTable class
 * Handles database operations for the `users` table.
 */
class UsersTable extends EntitiesTable
{
    protected const TABLE_NAME = 'users';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `users`';

    protected function parseEntity(array $row): User
    {
        return (new UserBuilder())
            ->withId($row["id"])
            ->withUsername($row["username"])
            ->withPassword($row["password"])
            ->withEmail($row["email"])
            ->withIsAdmin($row["is_admin"] === '' ? 0 : 1)
            ->withIsLocal($row["is_local"] === '' ? 0 : 1)
            ->withBirthday($row["birthday"])
            ->withIsNsfw($row["is_nsfw"] === '' ? 0 : 1)
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();
    }
}
