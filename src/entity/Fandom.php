<?php

require_once "../src/entity/NamedEntity.php";

class Fandom extends NamedEntity
{
    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
    }

    public static function jsonUnserialize($json): Fandom
    {
        $entity = new Fandom();
        foreach (json_decode($json, true) as $key => $data) {

            $getFunction = parent::getterFunction($key);
            $setFunction = parent::setterFunction($key);

            if ($entity->$getFunction() instanceof DateTime) {
                $date = is_string($data) && !empty($data) ? DateTime::createFromFormat("Y-m-d H:i:s", $data, new DateTimeZone("Europe/Paris")) : null;
                $entity->$setFunction($date);
            } else {
                $entity->$setFunction($data);
            }
        }
        return $entity;
    }
}