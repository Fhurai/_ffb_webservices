<?php

if(file_exists("../table/ParametersTable.php")){
    require_once "../table/ParametersTable.php";
}else if(file_exists("../src/table/ParametersTable.php")){
    require_once "../src/table/ParametersTable.php";
}else if(file_exists("../../src/table/ParametersTable.php")){
    require_once "../../src/table/ParametersTable.php";
}

/**
 * Table Scores.
 */
class ScoresTable extends ParametersTable{

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
        return "scores";
    }
}