<?php

require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../builder/AuthorBuilder.php";

class AuthorsTable extends EntitiesTable
{
    protected const TABLE_NAME = 'authors';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `authors`';

    protected function parseEntity(array $row): Author
    {
        return (new AuthorBuilder())
            ->withId($row['id'])
            ->withName($row['name'])
            ->withCreationDate($row['creation_date'])
            ->withUpdateDate($row['update_date'])
            ->withDeleteDate($row['delete_date'])
            ->build();
    }
}
