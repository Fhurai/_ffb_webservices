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
     * Method to load fanfictions associations
     * @param array $data
     * @return array
     */
    protected function loadAssociations(array $data): array
    {
        $data = parent::loadAssociations($data);

        // Links

        return $data;
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
}