<?php

require_once "../src/entity/NamedEntity.php";

class Author extends NamedEntity
{
    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
    }

    public static function jsonUnserialize($json): Author
    {
        $entity = new Author();
        foreach (json_decode($json, true) as $key => $data) {

            $getFunction = parent::getterFunction($key);
            $setFunction = parent::setterFunction($key);

            if ($entity->$getFunction() instanceof DateTime) {
                $entity->$setFunction(DateTime::createFromFormat("Y-m-d H:i:s", $data, new DateTimeZone("Europe/Paris")));
            } else {
                $entity->$setFunction($data);
            }
        }
        return $entity;
    }
}