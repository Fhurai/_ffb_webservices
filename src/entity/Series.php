<?php

require_once __DIR__ . "/../../src/entity/ComplexEntity.php";
require_once __DIR__ . "/../../src/entity/Evaluable.php";

/**
 * Series class.
 */
class Series extends ComplexEntity
{
    use Evaluable;

    /**
     * Description.
     * @var string
     */
    private string $description;
    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setDescription("");
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
     * Method to parse Series into an array for JSON parsing.
     * @return array Array of Series data.
     */
    public function jsonSerialize(): array
    {
        // If fanfictions property exists,
        // adding it to associations array.
        $associations = [];
        if (property_exists($this, "fanfictions")) {
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
    public static function getNewObject(): mixed
    {
        return new self();
    }
}