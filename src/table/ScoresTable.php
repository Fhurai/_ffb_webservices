<?php

if(file_exists("../table/ParametersTable.php")){
    require_once "../table/ParametersTable.php";
}else if(file_exists("../src/table/ParametersTable.php")){
    require_once "../src/table/ParametersTable.php";
}

class ScoresTable extends ParametersTable{

    public function __construct(string $typeConnection){
        parent::__construct($typeConnection);

        $this->setTable("scores");
        $this->setColumns(["id", "name"]);
    }
}