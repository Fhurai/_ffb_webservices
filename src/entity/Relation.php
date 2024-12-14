<?php

require_once "../src/entity/ComplexEntity.php";

#[AllowDynamicProperties]
class Relation extends ComplexEntity
{
    // Tableau d'identifiants
    private array $characters_ids;

    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
        $this->setCharactersIds([]);
    }

    /**
     * 
     * @return int
     */
    public function getCharactersIds(): array
    {
        return $this->characters_ids;
    }

    /**
     * 
     * @param int $fandom_id
     * @return void
     */
    public function setCharactersIds(array $characters_ids): void
    {
        $this->characters_ids = $characters_ids;
    }

    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        return array_merge(parent::jsonSerialize(), [
            "characters_ids" => $this->getCharactersIds(),
        ]);
    }

    /**
     * 
     * @param mixed $json
     * @return Character
     */
    public static function jsonUnserialize($json): Relation
    {
        $entity = new Relation();

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
