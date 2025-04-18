<?php

require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../builder/FandomBuilder.php";

class FandomsTable extends EntitiesTable
{
    protected const TABLE_NAME = 'fandoms';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `fandoms`';

    protected function parseEntity(array $row): Fandom
    {
        return (new FandomBuilder())
            ->withId($row['id'])
            ->withName($row['name'])
            ->withCreationDate($row['creation_date'])
            ->withUpdateDate($row['update_date'])
            ->withDeleteDate($row['delete_date'])
            ->build();
    }
}
