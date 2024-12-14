<?php

require_once "../src/entity/NamedEntity.php";

class Language extends NamedEntity
{
    private string $abbreviation;

    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
        $this->setAbbreviation("");
    }

    /**
     * getAbbreviation
     * 
     * @return string
     */
    public function getAbbreviation(): string
    {
        return $this->abbreviation;
    }

    /**
     * 
     * @param string $abbreviation
     * @return void
     */
    public function setAbbreviation(string $abbreviation): void
    {
        $this->abbreviation = $abbreviation;
    }

    public static function jsonUnserialize($json): Language
    {
        $entity = new Language();
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
