<?php

if (file_exists("../table/ComplexEntitiesTable.php")) {
    require_once "../table/ComplexEntitiesTable.php";
} else if (file_exists("../src/table/ComplexEntitiesTable.php")) {
    require_once "../src/table/ComplexEntitiesTable.php";
} else if (file_exists("../../src/table/ComplexEntitiesTable.php")) {
    require_once "../../src/table/ComplexEntitiesTable.php";
}

/**
 * Table Series.
 */
class SeriesTable extends ComplexEntitiesTable
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
        return "series";
    }

    /**
     * Summary of getNameAssociations
     * @return array
     */
    protected function getNameAssociations(): array
    {
        return [
            "fanfictions" => true
        ];
    }
}