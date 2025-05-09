<?php

require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../builder/SeriesBuilder.php";
require_once __DIR__ . '/FanfictionsTable.php';

/**
 * SeriesTable class.
 * Handles database operations for the Series entity, including CRUD operations
 * and managing associations such as fanfictions.
 */
class SeriesTable extends EntitiesTable
{
    protected const TABLE_NAME = 'series';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `series`';

    protected function parseEntity(array $row): Series
    {
        $builder = (new SeriesBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withDescription($row["description"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"]);

        $this->parseMultiAssociation('fanfictions', $builder, $row['id']);

        return $builder->build();
    }

    protected function parseMultiAssociation(string $association, SeriesBuilder $builder, int $id): void
    {
        $mono = substr($association, 0, -1);
        $table = $association . 'Table';
        $addMethod = 'add' . ucfirst($mono);

        $query = "SELECT `{$mono}_id` FROM `series_{$association}`
        WHERE `series_id` = :id
        ORDER BY ranking ASC";
        $entities = $this->executeQuery($query, [":id" => $id]);

        if (!empty($entities)) {
            $assocTable = new $table(Connection::getTypeConnect(), Connection::getUser());
            foreach ($entities as $entity) {
                $builder->$addMethod($assocTable->get($entity[$mono . '_id']));
            }
        }
    }

    public function updateAssociations(Series $entity): void
    {
        if ($entity->hasFanfictions()) {
            $this->updateAssociationTable('fanfictions', $entity->getId(), $entity->getFanfictions());
        }
    }

    private function updateAssociationTable(string $association, int $id, array $items): void
    {
        $junctionTable = self::TABLE_NAME . '_' . $association;
        $primaryKeyColumn = 'series_id';
        $primaryKeyParam = ':series_id';

        $queryDelete = "DELETE FROM `$junctionTable` WHERE `$primaryKeyColumn` = $primaryKeyParam";
        $this->executeQuery($queryDelete, [$primaryKeyParam => $id]);

        if (!empty($items)) {
            $mono = substr($junctionTable, strpos($junctionTable, '_') + 1);
            $mono = rtrim($mono, 's');

            $queryInsert = "INSERT INTO `$junctionTable` (`$primaryKeyColumn`, `{$mono}_id`, `ranking`) VALUES ($primaryKeyParam, :item_id, :ranking)";
            foreach ($items as $key => $item) {
                $this->executeQuery(
                    $queryInsert,
                    [
                        $primaryKeyParam => $id,
                        ":item_id" => $item->getId(),
                        ":ranking" => $key + 1
                    ]
                );
            }
        }
    }
}
