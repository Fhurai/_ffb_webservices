<?php

require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../builder/RelationBuilder.php";
require_once __DIR__ . "/../builder/CharacterBuilder.php";

/**
 * Class RelationsTable
 * Handles database operations for the `relations` table.
 */
class RelationsTable extends EntitiesTable
{
    protected const TABLE_NAME = 'relations';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `relations`';

    protected function parseEntity(array $row): Relation
    {
        $relationBuilder = (new RelationBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"]);

        $query = "SELECT `characters`.* FROM `relations_characters`
                  INNER JOIN `characters` ON `relations_characters`.`character_id` = `characters`.`id`
                  WHERE `relation_id` = :id";
        $characters = $this->executeQuery($query, [":id" => $row["id"]]);

        if (!empty($characters)) {
            foreach ($characters as $character) {
                $relationBuilder->addCharacter((new CharacterBuilder())
                    ->withId($character["id"])
                    ->withName($character["name"])
                    ->withFandomId($character["fandom_id"])
                    ->withCreationDate($character["creation_date"])
                    ->withUpdateDate($character["update_date"])
                    ->withDeleteDate($character["delete_date"])
                    ->build());
            }
        }

        return $relationBuilder->build();
    }

    private function updateAssociations(Relation $entity): void
    {
        if ($entity->hasCharacters()) {
            $this->updateAssociationTable('relations_characters', 'character_id', $entity->getId(), $entity->getCharacters());
        }
    }

    private function updateAssociationTable(string $table, string $column, int $relationId, ?array $items): void
    {
        $queryDelete = "DELETE FROM `$table` WHERE `relation_id` = :relation_id";
        $this->executeQuery($queryDelete, [":relation_id" => $relationId]);

        if ($items) {
            $queryInsert = "INSERT INTO `$table` (`relation_id`, `$column`) VALUES (:relation_id, :item_id)";
            foreach ($items as $item) {
                $this->executeQuery($queryInsert, [
                    ":relation_id" => $relationId,
                    ":item_id" => $item->getId(),
                ]);
            }
        }
    }
}
