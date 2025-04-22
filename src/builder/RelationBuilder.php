<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Relation.php";

final class RelationBuilder extends NamedEntityBuilder
{

    /**
     * @var Relation
     */
    protected $obj;

    /**
     * Resets the Relation object to a new instance.
     */
    public function reset(): void
    {
        // Initialize a new Relation object
        $this->obj = new Relation();
    }

    /**
     * Sets the characters for the Relation object.
     *
     * @param  array $characters The characters array.
     * @return RelationBuilder The current instance of RelationBuilder.
     */
    public function withCharacters(array $characters): RelationBuilder
    {
        // Check if the characters are instances of Character
        foreach ($characters as $character) {
            if (!($character instanceof Character)) {
                throw new InvalidArgumentException("All elements must be instances of Character.");
            }
        }
        // Set the characters array
        $this->obj->characters = $characters;
        // Sort the characters array
        sort($characters);
        // Set the name of the relation based on the characters array
        $this->obj->setName(implode(" / ", array_map(fn($c) => $c->getName(), $this->obj->characters)));
        return $this;
    }

    /**
     * Adds a character to the Relation object.
     *
     * @param  Character $character The character to add.
     * @return RelationBuilder The current instance of RelationBuilder.
     */
    public function addCharacter(Character $character): RelationBuilder
    {
        // Check if the characters property is set and is an array
        if (!isset($this->obj->characters) || !is_array($this->obj->characters)) {
            // Initialize the characters property as an empty array
            $this->obj->characters = [];
        }
        // Add the character to the characters array
        array_push($this->obj->characters, $character);
        // Sort the characters array by name
        usort(
            $this->obj->characters, function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );
        // Set the name of the relation based on the characters names array
        $this->obj->setName(implode(" / ", array_map(fn($c) => $c->getName(), $this->obj->characters)));
        return $this;
    }
}
