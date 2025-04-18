<?php

require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../builder/LanguageBuilder.php";

class LanguagesTable extends EntitiesTable
{
    protected const TABLE_NAME = 'languages';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `languages`';

    protected function parseEntity(array $row): Language
    {
        return (new LanguageBuilder())
            ->withId($row['id'])
            ->withName($row['name'])
            ->withAbbreviation($row['abbreviation'])
            ->withCreationDate($row['creation_date'])
            ->withUpdateDate($row['update_date'])
            ->withDeleteDate($row['delete_date'])
            ->build();
    }
}
