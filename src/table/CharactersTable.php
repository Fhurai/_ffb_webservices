<?php

require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/FandomsTable.php";
require_once __DIR__ . "/../builder/CharacterBuilder.php";

/**
 * CharactersTable class.
 * Handles database operations for the `characters` table.
 */
class CharactersTable extends EntitiesTable
{
    protected const TABLE_NAME = 'characters';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `characters`';

    protected function parseEntity(array $row): Character
    {
        $character = (new CharacterBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withFandomId($row["fandom_id"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"])
            ->build();

        $fandomId = $character->getFandomId();
        if ($fandomId > 0) {
            $fandomTable = new FandomsTable(Connection::getTypeConnect(), Connection::getUser());
            try {
                $fandom = $fandomTable->get($fandomId);
                $character->setFandom($fandom);
            } catch (FfbTableException $e) {
                $character->setFandom(null);
            }
        }

        return $character;
    }
}
