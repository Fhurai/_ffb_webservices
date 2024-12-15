<?php

if(file_exists("../table/Connection.php")){
    require_once "../table/Connection.php";
}else if(file_exists("../src/table/Connection.php")){
    require_once "../src/table/Connection.php";
}

if(file_exists("../entity/Rating.php")){
    require_once "../entity/Rating.php";
}else if(file_exists("../src/entity/Rating.php")){
    require_once "../src/entity/Rating.php";
}

abstract class ParametersTable extends Connection{

    public function __construct(string $typeConnection){
        parent::__construct($typeConnection);
    }

    public function get(int $id): mixed
    {
        $sth = $this->getDatabase()->prepare("SELECT ".$this->getColumnsSelect()." from `".$this->getTable()."` where `id`=:id");
        $sth->execute([
            ":id" => $id
        ]);
        return Rating::jsonUnserialize(json_encode($sth->fetch(PDO::FETCH_ASSOC)));
    }
}