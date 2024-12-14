<?php

require_once "../src/entity/ComplexEntity.php";

#[AllowDynamicProperties]
class Tag extends ComplexEntity
{

    private string $description;
    private int $type_id;

    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
        $this->setDescription("");
        $this->setTypeId(-1);
    }

    /**
     * 
     * @return string
     */
    public function getDescription(): string
    {
        return $this->description;
    }

    /**
     * 
     * @param string $description
     * @return void
     */
    public function setDescription(string $description): void
    {
        $this->description = $description;
    }

    /**
     * 
     * @return int
     */
    public function getTypeId(): int
    {
        return $this->type_id;
    }

    /**
     * 
     * @param int $type_id
     * @return void
     */
    public function setTypeId(int $type_id): void
    {
        $this->type_id = $type_id;
    }

    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        return array_merge(parent::jsonSerialize(), [
            "description" => $this->getDescription(),
            "type" => $this->getTypeId(),
        ]);
    }

    /**
     * 
     * @param mixed $json
     * @return Tag
     */
    public static function jsonUnserialize($json): Tag
    {
        $entity = new Tag();

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
