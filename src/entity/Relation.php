<?php

require_once "../src/entity/ComplexEntity.php";

/**
 * Relation class.
 */
#[AllowDynamicProperties]
class Relation extends ComplexEntity
{
    /**
     * Characters_ids.
     * @var array
     */
    private array $characters_ids;

    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setCharactersIds([]);
    }

    /**
     * Getter Characters_ids.
     * @return array Characters_ids.
     */
    public function getCharactersIds(): array
    {
        return $this->characters_ids;
    }

    /**
     * Setter Characters_ids.
     * @param array $characters_ids New Characters_ids.
     * @return void
     */
    public function setCharactersIds(array $characters_ids): void
    {
        $this->characters_ids = $characters_ids;
    }

    /**
     * Method to parse Relation into an array for JSON parsing.
     * @return mixed Array of Relation data.
     */
    public function jsonSerialize(): mixed
    {
        return array_merge(parent::jsonSerialize(), [
            "characters_ids" => $this->getCharactersIds(),
        ]);
    }

    /**
     * Method to create a new Relation.
     * @return mixed new Relation.
     */
    public static function getNewObject(): mixed {
        return new self();
    }
}
