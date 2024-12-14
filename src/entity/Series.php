<?php

require_once "../src/entity/ComplexEntity.php";
require_once "../src/entity/Evaluable.php";

#[AllowDynamicProperties]
class Series extends ComplexEntity
{
    use Evaluable;

    private string $description;
    private array $fanfictions_ids;

    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
        $this->setDescription("");
        $this->setFanfictionsIds([]);
        $this->setScoreId(-1);
        $this->setEvaluation("");
    }

    /**
     * 
     */
    public function getDescription(): string
    {
        return $this->description;
    }

    /**
     * 
     */
    public function setDescription(string $description): void
    {
        $this->description = $description;
    }

    /**
     * 
     */
    public function getFanfictionsIds(): array
    {
        return $this->fanfictions_ids;
    }

    /**
     * 
     */
    public function setFanfictionsIds(array $fanfictions_ids): void
    {
        $this->fanfictions_ids = $fanfictions_ids;
    }

    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        $associations = [];

        if(property_exists($this, "fanfictions")){
            $associations["fanfictions"] = $this->fanfictions;
        }

        return array_merge(parent::jsonSerialize(), [
            "description" => $this->description,
            "score_id" => $this->getScoreId(),
            "evaluation" => $this->getEvaluation(),
        ], $associations);
    }

    /**
     * 
     * @param mixed $json
     * @return Character
     */
    public static function jsonUnserialize($json): Series
    {
        $entity = new Series();

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