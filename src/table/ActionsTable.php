<?php

if(file_exists("../table/ParametersTable.php")){
    require_once "../table/ParametersTable.php";
}else if(file_exists("../src/table/ParametersTable.php")){
    require_once "../src/table/ParametersTable.php";
}else if(file_exists("../../src/table/ParametersTable.php")){
    require_once "../../src/table/ParametersTable.php";
}

/**
 * Table Actions.
 */
class ActionsTable extends ParametersTable{

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
        return "actions";
    }
}