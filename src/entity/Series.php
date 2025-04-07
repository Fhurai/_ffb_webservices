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
     * Fanfictions associated with the Series.
     * @var array
     */
    public ?array $fanfictions = null;

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
     * Getter Fanfictions.
     * @return array Fanfictions.
     */
    public function getFanfictions(): array
    {
        if (empty($this->fanfictions)) {
            throw new \RuntimeException("fanfictions is not loaded. Use hasFanfictions() to check first.");
        }
        return $this->fanfictions;
    }

    /**
     * Method to check if fanfictions are loaded.
     * @return bool True if fanfictions are loaded, false otherwise.
     */
    public function hasFanfictions(): bool
    {
        return !empty($this->fanfictions);
    }

    /**
     * Setter Fanfictions.
     * @param array $fanfictions New Fanfictions.
     * @return void
     */
    public function setFanfictions(array $fanfictions): void
    {
        $this->fanfictions = [];
        foreach ($fanfictions as $fanfiction) {
            if (is_array($fanfiction)) {
                $this->fanfictions[] = Fanfiction::jsonUnserialize(json_encode($fanfiction));
            } else if ($fanfiction instanceof Fanfiction) {
                $this->fanfictions[] = $fanfiction;
            }
        }
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