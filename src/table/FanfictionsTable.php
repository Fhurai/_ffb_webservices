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
     */
    public function __construct(string $typeConnection)
    {
        // Parent overloading.
        parent::__construct($typeConnection);

        // Initialization of table.
        $this->setTable("fanfictions");

        // Auto set columns of table.
        $this->setPropertiesColumns();
    }

    protected function loadAssociations(array $data): array
    {
        $data["author"] = $this->loadAssociationData("author", $data["author_id"], false);
        $data["rating"] = $this->loadAssociationData("rating", $data["rating_id"], false);
        $data["language"] = $this->loadAssociationData("language", $data["language_id"], false);
        $data["fandoms"] = $this->loadAssociationData("fandoms", $data["id"], true);
        $data["relations"] = $this->loadAssociationData("relations", $data["id"], true);
        $data["characters"] = $this->loadAssociationData("characters", $data["id"], true);
        $data["tags"] = $this->loadAssociationData("tags", $data["id"], true);
        // Links
        if ($data["score_id"])
            $data["score"] = $this->loadAssociationData("score", $data["score_id"], false);
        return $data;
    }
}