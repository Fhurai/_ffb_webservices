<?php

require_once __DIR__ . "/TagTypesTable.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../builder/TagBuilder.php";

/**
 * TagsTable class.
 * Handles database operations for the `tags` table.
 */
class TagsTable extends EntitiesTable
{
    protected const TABLE_NAME = 'tags';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `tags`';

    protected function parseEntity(array $row): Tag
    {
        $tag = (new TagBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withDescription($row["description"])
            ->withTypeId($row["type_id"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();

        $typeId = $tag->getTypeId();
        if ($typeId > 0) {
            $tagTypeTable = new TagTypesTable(Connection::getTypeConnect(), Connection::getUser());
            try {
                $tagType = $tagTypeTable->get($typeId);
                $tag->setTagType($tagType);
            } catch (FfbTableException $e) {
                $tag->setTagType(null);
            }
        }

        return $tag;
    }
}
