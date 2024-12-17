<?php

if(file_exists("../table/EntitiesTable.php")){
    require_once "../table/EntitiesTable.php";
}else if(file_exists("../src/table/EntitiesTable.php")){
    require_once "../src/table/EntitiesTable.php";
}

/**
 * Table Authors.
 */
class AuthorsTable extends EntitiesTable {

    /**
     * Constructor.
     * @param string $typeConnection Connection to use [main/stats/tests].
     */
    public function __construct(string $typeConnection){
        // Parent overloading.
        parent::__construct($typeConnection);

        // Initialization of table.
        $this->setTable("authors");
        
        // Auto set columns of table.
        $this->setPropertiesColumns();
    }
}