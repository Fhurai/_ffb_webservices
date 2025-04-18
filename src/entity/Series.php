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

        $associations = $this->serializeAssociations();
        $derived = $this->hasFanfictions() ? $this->serializeDerivedData() : [];

        return array_merge(parent::jsonSerialize(), [
            "description" => $this->description,
            "score_id" => $this->scoreId,
            "evaluation" => $this->evaluation
        ], $associations, $derived);
    }

    private function serializeAssociations(): array
    {
        $result = [];
        foreach ($this->getAssociationProperties() as $prop) {
            if ($this->methodExistsAndTrue('has' . ucfirst($prop))) {
                $result[$prop] = $this->$prop;
            }
        }
        return $result;
    }

    private function serializeDerivedData(): array
    {
        $derived = $this->initializeDerived();

        foreach ($this->getFanfictions() as $fanfiction) {
            $this->accumulateDerived($derived, $fanfiction);
        }

        $this->deduplicateDerived($derived);
        $this->mergeRating($derived);

        return $derived;
    }

    private function initializeDerived(): array
    {
        return [
            'authors'   => [],
            'ratings'   => [],
            'languages' => [],
            'fandoms'   => [],
            'relations' => [],
            'characters'=> [],
            'tags'      => [],
        ];
    }

    private function accumulateDerived(array &$derived, $fanfiction): void
    {
        $this->addValue($derived['authors'],   $fanfiction->hasAuthor(),   fn() => $fanfiction->getAuthor());
        $this->addValue($derived['ratings'],   $fanfiction->hasRating(),   fn() => $fanfiction->getRating());
        $this->addValue($derived['languages'], $fanfiction->hasLanguage(), fn() => $fanfiction->getLanguage());

        $this->mergeValues($derived['fandoms'],   $fanfiction->hasFandoms(),   fn() => $fanfiction->getFandoms());
        $this->mergeValues($derived['relations'], $fanfiction->hasRelations(), fn() => $fanfiction->getRelations());
        $this->mergeValues($derived['characters'],$fanfiction->hasCharacters(),fn() => $fanfiction->getCharacters());
        $this->mergeValues($derived['tags'],      $fanfiction->hasTags(),      fn() => $fanfiction->getTags());
    }

    private function addValue(array &$target, bool $condition, callable $getter): void
    {
        $target[] = $condition ? $getter() : null;
    }

    private function mergeValues(array &$target, bool $condition, callable $getter): void
    {
        if ($condition) {
            $target = array_merge($target, $getter());
        }
    }

    private function deduplicateDerived(array &$derived): void
    {
        foreach ($derived as $key => $values) {
            $derived[$key] = array_unique($values, SORT_REGULAR);
        }
    }

    private function mergeRating(array &$derived): void
    {
        if (!empty($derived['ratings'])) {
            $derived['rating'] = max($derived['ratings']);
            unset($derived['ratings']);
        }
    }

    private function methodExistsAndTrue(string $method): bool
    {
        return method_exists($this, $method) && $this->{$method}();
    }
}
