<?php

require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../builder/LinkBuilder.php";

/**
 * LinksTable class
 *
 * This class provides methods to interact with the `links` table in the database.
 * It supports CRUD operations and various query methods for the `Link` entity.
 */
class LinksTable extends EntitiesTable
{
    protected const TABLE_NAME = 'links';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `links`';

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
