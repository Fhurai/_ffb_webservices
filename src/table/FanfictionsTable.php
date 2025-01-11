<?php

if (file_exists("../table/ComplexEntitiesTable.php")) {
    require_once "../table/ComplexEntitiesTable.php";
} else if (file_exists("../src/table/ComplexEntitiesTable.php")) {
    require_once "../src/table/ComplexEntitiesTable.php";
} else if (file_exists("../../src/table/ComplexEntitiesTable.php")) {
    require_once "../../src/table/ComplexEntitiesTable.php";
}

/**
 * Table Fanfictions.
 */
class FanfictionsTable extends ComplexEntitiesTable
{

    /**
     * Constructor.
     * @param string $typeConnection Connection to use [main/stats/tests].
     * @param string $user SQL user.
     */
    public function __construct(string $typeConnection, string $user)
    {
        // Parent overloading.
        parent::__construct($typeConnection, $user);
    }

    /**
     * Getter table name.
     * @return string Table name.
     */
    protected function getNameTable(): string
    {
        return "fanfictions";
    }

    /**
     * Summary of getNameAssociations
     * @return array
     */
    protected function getNameAssociations(): array
    {
        return [
            "author" => false,
            "rating" => false,
            "language" => false,
            "score" => false,
            "fandoms" => true,
            "relations" => true,
            "characters" => true,
            "tags" => true,
        ];
    }

    protected function loadAssociations(array $data): array
    {
        $data = parent::loadAssociations($data);

        // Get table of association.
        $tableName = SrcUtilities::getTableName("Link");
        $table = new $tableName($this->getTypeConnection(), $this->getUser());

        // Get data from table with identifier.
        $data["links"] = $table->search(["conditions" => ["fanfiction_id" => $data["id"]]]);

        return $data;
    }

    protected function insertAssociations(ComplexEntity $entity): void
    {

        parent::insertAssociations($entity);

        if (property_exists($entity, "links")) {

            // Get table of association.
            $tableName = SrcUtilities::getTableName("Link");
            $table = new $tableName($this->getTypeConnection(), $this->getUser());

            foreach ($entity->links as $link) {
                $link->setFanfictionId($entity->getId());

                $query = "INSERT INTO `Links` (`url`,`fanfiction_id`) VALUES (:url, :fanfiction_id)";
                $sth = $this->getDatabase()->prepare($query); 

                $sth->execute([
                    ":url"=> $link->getUrl(),
                    ":fanfiction_id" => $link->getFanfictionId()
                ]);
            }
        }
    }
}