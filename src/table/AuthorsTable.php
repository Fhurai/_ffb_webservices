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
        return "authors";
    }
}