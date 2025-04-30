<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Relation.php";
/**
 * RelationBuilder is responsible for constructing and resetting instances of the Relation entity.
 * It extends the NamedEntityBuilder to inherit common functionality for named entities.
 */
final class RelationBuilder extends NamedEntityBuilder
{

    /**
     * @var Relation The Relation object being built.
     */
    protected $obj;

    /**
     * Resets the Relation object to a new instance.
     * This ensures the builder starts with a fresh Relation object.
     */
    public function reset(): void
    {
        // Initialize a new Relation object
        $this->obj = new Relation();
    }

    /**
     * Sets the characters for the Relation object.
     *
     * @param  ?array $characters The characters array, where each element must be an instance of Character.
     * @return RelationBuilder The current instance of RelationBuilder for method chaining.
     * @throws InvalidArgumentException If any element in the array is not an instance of Character.
     */
    public function withCharacters(?array $characters): RelationBuilder
    {
        if($characters === null) {
            // If characters is null, throw an exception
            throw new FfbEndpointException("Characters cannot be null.");
        } elseif (!is_array($characters)) {
            // If characters is not an array, throw an exception
            throw new FfbEndpointException("Characters must be an array.");
        }
        // Check if the characters are instances of Character
        foreach ($characters as $character) {
            if (!($character instanceof Character)) {
                throw new InvalidArgumentException("All elements must be instances of Character.");
            }
        }
        // Set the characters array
        $this->obj->characters = $characters;
        // Sort the characters array alphabetically
        sort($characters);
        // Set the name of the relation based on the characters array
        $this->obj->setName(implode(" / ", array_map(fn($c) => $c->getName(), $this->obj->characters)));
        return $this;
    }

    /**
     * Adds a character to the Relation object.
     *
     * @param  Character $character The character to add to the relation.
     * @return RelationBuilder The current instance of RelationBuilder for method chaining.
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
        // Sort the characters array alphabetically by name
        usort(
            $this->obj->characters, function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );
        // Set the name of the relation based on the characters' names
        $this->obj->setName(implode(" / ", array_map(fn($c) => $c->getName(), $this->obj->characters)));
        return $this;
    }
}
