<?php

require_once __DIR__ . "/../../src/entity/ComplexEntity.php";
require_once __DIR__ . "/../../src/entity/EvaluableTrait.php";

/**
 * Series class.
 */
class Series extends ComplexEntity
{
    use EntityTrait, EvaluableTrait;

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
     * Method to check if fanfictions are loaded.
     * @return bool True if fanfictions are loaded, false otherwise.
     */
    public function hasFanfictions(): bool
    {
        return !empty($this->fanfictions);
    }

    public function getFanfictions(): array {
        return $this->getNullableArrayProperty($this->fanfictions, "fanfictions");
    }

    public function setFanfictions(array $fanfictions): void {
        $this->fanfictions = $this->setArrayProperty($fanfictions, Fanfiction::class);
    }

    /**
     * List of association properties for JSON serialization.
     */
    protected function getAssociationProperties(): array {
        return ["fanfictions"];
    }

    public function jsonSerialize(): array {
        $associations = [];
        foreach ($this->getAssociationProperties() as $prop) {
            if ($this->{"has" . ucfirst($prop)}()) {
                $associations[$prop] = $this->$prop;
            }
        }
        return array_merge(parent::jsonSerialize(), [
            "description" => $this->description,
            "score_id" => $this->score_id,
            "evaluation" => $this->evaluation
        ], $associations);
    }
}
