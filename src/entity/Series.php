<?php

require_once __DIR__ . "/ComplexEntity.php";
require_once __DIR__ . "/EntityTrait.php";
require_once __DIR__ . "/EvaluableTrait.php";

/**
 * Series class.
 */
final class Series extends ComplexEntity
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

    /**
     *
     * @return Fanfiction[]
     */
    public function getFanfictions(): array
    {
        return $this->getNullableArrayProperty($this->fanfictions, "fanfictions");
    }

    public function setFanfictions(array $fanfictions): void
    {
        $this->fanfictions = $this->setArrayProperty($fanfictions, Fanfiction::class);
    }

    /**
     * List of association properties for JSON serialization.
     */
    protected function getAssociationProperties(): array
    {
        return ["fanfictions"];
    }

    public function jsonSerialize(): array
    {
        $associations = [];
        $derived = [];

        foreach ($this->getAssociationProperties() as $prop) {
            if ($this->{"has" . ucfirst($prop)}()) {
                $associations[$prop] = $this->$prop;
            }
        }

        if ($this->hasFanfictions()) {
            $derived = [
                'authors' => [],
                'ratings' => [],
                'languages' => [],
                'fandoms' => [],
                'relations' => [],
                'characters' => [],
                'tags' => []
            ];

            foreach ($this->getFanfictions() as $fanfiction) {
                $derived['authors'][] = $fanfiction->getAuthor();
                $derived['ratings'][] = $fanfiction->getRating();
                $derived['languages'][] = $fanfiction->getLanguage();

                // Merge array-type properties
                if ($fanfiction->hasFandoms()) {
                    $derived['fandoms'] = array_merge($derived['fandoms'], $fanfiction->getFandoms());
                }
                if ($fanfiction->hasRelations()) {
                    $derived['relations'] = array_merge($derived['relations'], $fanfiction->getRelations());
                }
                if ($fanfiction->hasCharacters()) {
                    $derived['characters'] = array_merge($derived['characters'], $fanfiction->getCharacters());
                }
                if ($fanfiction->hasTags()) {
                    $derived['tags'] = array_merge($derived['tags'], $fanfiction->getTags());
                }
            }

            // Apply array_unique to all derived arrays
            foreach ($derived as $key => $values) {
                $derived[$key] = array_unique($values, SORT_REGULAR);
            }

            if(!empty($derived['rating'])){
                $derived['rating'] = max($derived['ratings']);
                unset($derived['ratings']);
            }
        }

        return array_merge(parent::jsonSerialize(), [
            "description" => $this->description,
            "score_id" => $this->scoreId,
            "evaluation" => $this->evaluation
        ], $associations, $derived);
    }
}
