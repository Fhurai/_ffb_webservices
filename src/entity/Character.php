<?php

require_once "../src/entity/ComplexEntity.php";

#[AllowDynamicProperties]
class Character extends ComplexEntity
{

    private int $fandom_id;

    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
        $this->setFandomId(-1);
    }

    /**
     * 
     * @return int
     */
    public function getFandomId(): int
    {
        return $this->fandom_id;
    }

    /**
     * 
     * @param int $fandom_id
     * @return void
     */
    public function setFandomId(int $fandom_id): void
    {
        $this->fandom_id = $fandom_id;
    }

    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        return array_merge(parent::jsonSerialize(), [
            "fandom_id" => $this->getFandomId(),
        ]);
    }

    /**
     * 
     * @param mixed $json
     * @return Character
     */
    public static function jsonUnserialize($json): Character
    {
        $entity = new Character();

        $properties = parent::getProperties($entity);

        foreach (json_decode($json, true) as $key => $data) {

            if (in_array($key, $properties)) {

                $getFunction = parent::getterFunction($key);
                $setFunction = parent::setterFunction($key);

                if ($entity->$getFunction() instanceof DateTime) {
                    $date = is_string($data) && !empty($data) ? DateTime::createFromFormat("Y-m-d H:i:s", $data, new DateTimeZone("Europe/Paris")) : null;
                    $entity->$setFunction($date);
                } else {
                    $entity->$setFunction($data);
                }
            } else {
                $entity->$key = parent::parseDataProperty($key, $data);
            }
        }
        return $entity;
    }
}
