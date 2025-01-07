<?php

if(file_exists("../table/EntitiesTable.php")){
    require_once "../table/EntitiesTable.php";
}else if(file_exists("../src/table/EntitiesTable.php")){
    require_once "../src/table/EntitiesTable.php";
}

/**
 * Table Languages.
 */
class LanguagesTable extends EntitiesTable {

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
        return "languages";
    }
}