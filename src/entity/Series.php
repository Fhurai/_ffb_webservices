<?php

require_once "../src/entity/ComplexEntity.php";
require_once "../src/entity/Evaluable.php";

/**
 * Series class.
 */
#[AllowDynamicProperties]
class Series extends ComplexEntity
{
    use Evaluable;

    /**
     * Description.
     * @var string
     */
    private string $description;
    /**
     * Fanfictions_ids.
     * @var array
     */
    private array $fanfictions_ids;

    /**
     * Implied constructor.
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
     * Getter Description.
     * @return string Description.
     */
    public function getDescription(): string
    {
        return $this->description;
    }

    /**
     * Setter Description.
     * @param string $description New Description.
     * @return void
     */
    public function setDescription(string $description): void
    {
        $this->description = $description;
    }

    /**
     * Getter Fanfictions_ids.
     * @return array Fanfictions_ids.
     */
    public function getFanfictionsIds(): array
    {
        return $this->fanfictions_ids;
    }

    /**
     * Setter Fanfictions_ids.
     * @param array $fanfictions_ids New Fanfictions_ids.
     * @return void
     */
    public function setFanfictionsIds(array $fanfictions_ids): void
    {
        $this->fanfictions_ids = $fanfictions_ids;
    }

    /**
     * Method to parse Series into an array for JSON parsing.
     * @return mixed Array of Series data.
     */
    public function jsonSerialize(): mixed
    {
        // If fanfictions property exists,
        // adding it to associations array.
        $associations = [];
        if(property_exists($this, "fanfictions")){
            $associations["fanfictions"] = $this->fanfictions;
        }

        // Return array of data from Series.
        return array_merge(parent::jsonSerialize(), [
            "description" => $this->description,
            "score_id" => $this->getScoreId(),
            "evaluation" => $this->getEvaluation(),
        ], $associations);
    }

    /**
     * Method to create a new Series.
     * @return mixed new Series.
     */
    public static function getNewObject(): mixed {
        return new self();
    }
}