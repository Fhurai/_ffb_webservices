<?php

require_once __DIR__ . "/../../src/entity/ComplexEntity.php";

/**
 * Relation class.
 */
class Relation extends ComplexEntity
{
    /**
     * Characters associated with the Relation.
     * @var array
     */
    public ?array $characters = null;
    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Getter Characters.
     * @return array Characters.
     */
    public function getCharacters(): array
    {
        if (empty($this->characters)) {
            throw new \RuntimeException("characters is not loaded. Use hasCharacters() to check first.");
        }
        return $this->characters;
    }

    /**
     * Method to check if characters are loaded.
     * @return bool True if characters are loaded, false otherwise.
     */
    public function hasCharacters(): bool
    {
        return !empty($this->characters);
    }

    /**
     * Setter Characters.
     * @param array $characters New Characters.
     * @return void
     */
    public function setCharacters(array $characters): void
    {
        $this->characters = [];
        foreach ($characters as $character) {
            if (is_array($character)) {
                $this->characters[] = Character::jsonUnserialize(json_encode($character));
            } else if ($character instanceof Character) {
                $this->characters[] = $character;
            }
        }

    }

    /**
     * Method to parse Relation into an array for JSON parsing.
     * @return array Array of Relation data.
     */
    public function jsonSerialize(): array
    {
        $assoc = [];

        if (property_exists($this, "characters")) {
            $assoc["characters"] = $this->characters;
        }

        return array_merge(parent::jsonSerialize(), $assoc);
    }

    /**
     * Method to create a new Relation.
     * @return mixed new Relation.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}
