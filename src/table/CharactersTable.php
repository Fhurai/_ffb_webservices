<?php

if(file_exists("../table/ComplexEntitiesTable.php")){
    require_once "../table/ComplexEntitiesTable.php";
}else if(file_exists("../src/table/ComplexEntitiesTable.php")){
    require_once "../src/table/ComplexEntitiesTable.php";
}else if(file_exists("../../src/table/ComplexEntitiesTable.php")){
    require_once "../../src/table/ComplexEntitiesTable.php";
}

/**
 * Table Characters.
 */
class CharactersTable extends ComplexEntitiesTable {

    /**
     * Constructor.
     * @param string $typeConnection Connection to use [main/stats/tests].
     */
    public function __construct(string $typeConnection){
        // Parent overloading.
        parent::__construct($typeConnection);
    }

    /**
     * Getter table name.
     * @return string Table name.
     */
    protected function getNameTable(): string
    {
        return "characters";
    }

    /**
     * Summary of getNameAssociations
     * @return array
     */
    protected function getNameAssociations(): array
    {
        return [
            "fandom" => false
        ];
    }
}