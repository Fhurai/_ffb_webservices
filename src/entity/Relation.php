<?php

require_once __DIR__ . "/ComplexEntity.php";
require_once __DIR__ . "/EntityTrait.php";

/**
 * Relation class.
 */
final class Relation extends ComplexEntity
{
    use EntityTrait;

    /**
     * Characters associated with the Relation.
     *
     * @var array
     */
    public ?array $characters = null;

    /**
     * Getter Characters.
     *
     * @return array Characters.
     */
    public function getCharacters(): array
    {
        if (empty($this->characters)) {
            throw new \OutOfBoundsException("characters is not loaded. Use hasCharacters() to check first.");
        }
        return $this->characters;
    }

    /**
     * Method to check if characters are loaded.
     *
     * @return bool True if characters are loaded, false otherwise.
     */
    public function hasCharacters(): bool
    {
        return !empty($this->characters);
    }

    /**
     * Setter Characters.
     *
     * @param  array $characters New Characters.
     * @return void
     */
    public function setCharacters(array $characters): void
    {
        $this->characters = [];
        $names = [];
        foreach ($characters as $character) {
            $character = $this->createCharacter($character);
            $this->characters[] = $character;
            $names[] = $character;
        }

        // Sort the characters array by name
        sort($names);
        // Set the name of the relation based on the characters names array
        $this->setName(implode(" / ", array_map(fn($c) => $c->getName(), $names)));
    }

    /**
     * Helper method to create a Character instance.
     *
     * @param  mixed $character Character data.
     * @return Character
     */
    private function createCharacter(mixed $character): Character
    {
        if (is_array($character)) {
            return Character::jsonUnserialize(json_encode($character));
        } elseif ($character instanceof Character) {
            return $character;
        }
        throw new \InvalidArgumentException("Invalid character data provided.");
    }

    /**
     * Method to parse Relation into an array for JSON parsing.
     *
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
     *
     * @return mixed new Relation.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}
