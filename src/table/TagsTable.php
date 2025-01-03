<?php

if(file_exists("../table/ComplexEntitiesTable.php")){
    require_once "../table/ComplexEntitiesTable.php";
}else if(file_exists("../src/table/ComplexEntitiesTable.php")){
    require_once "../src/table/ComplexEntitiesTable.php";
}else if(file_exists("../../src/table/ComplexEntitiesTable.php")){
    require_once "../../src/table/ComplexEntitiesTable.php";
}

/**
 * Table Tags.
 */
class TagsTable extends ComplexEntitiesTable {

    /**
     * Constructor.
     * @param string $typeConnection Connection to use [main/stats/tests].
     */
    public function __construct(string $typeConnection){
        // Parent overloading.
        parent::__construct($typeConnection);

        // Initialization of table.
        $this->setTable("tags");
        
        // Auto set columns of table.
        $this->setPropertiesColumns();
    }
}