<?php

if(file_exists("../table/ParametersTable.php")){
    require_once "../table/ParametersTable.php";
}else if(file_exists("../src/table/ParametersTable.php")){
    require_once "../src/table/ParametersTable.php";
}else if(file_exists("../../src/table/ParametersTable.php")){
    require_once "../../src/table/ParametersTable.php";
}

/**
 * Table Ratings.
 */
class RatingsTable extends ParametersTable{

    /**
     * Constructor.
     * @param string $typeConnection Connection to use [main/stats/tests].
     */
    public function __construct(string $typeConnection){
        // Parent overloading.
        parent::__construct($typeConnection);

        // Initialization of table & columns.
        $this->setTable("ratings");
        $this->setColumns(["id", "name"]);
    }
}