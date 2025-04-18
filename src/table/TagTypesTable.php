<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/ParametersTable.php";
require_once __DIR__ . "/../entity/TagType.php";

/**
 * Class TagTypesTable
 * Handles operations related to the `tag_types` table in the database.
 */
class TagTypesTable extends ParametersTable
{
    protected const TABLE_NAME = 'tag_types';
    protected const ENTITY_CLASS = TagType::class;

    protected function parseEntity(array $row): TagType
    {
        return new TagType($row['id'], $row['name']);
    }
}
