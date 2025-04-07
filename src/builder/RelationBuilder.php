<?php

require_once __DIR__ . "/NamedEntityBuilderInterface.php";
require_once __DIR__ . "/../entity/Relation.php";

class RelationBuilder implements NamedEntityBuilderInterface {

    private Relation $obj;

    /**
     * Constructor to initialize the RelationBuilder and reset the Relation object.
     */
    public function __construct() {
        $this->reset();
    }

    /**
     * Builds and returns the Relation object.
     * 
     * @return Relation The built Relation object.
     */
    public function build() {
        // Return the built Relation object
        return $this->obj;
    }

    /**
     * Resets the Relation object to a new instance.
     */
    public function reset(): void {
        // Initialize a new Relation object
        $this->obj = new Relation();
    }

    /**
     * Sets the ID for the Relation object.
     * 
     * @param int|string $id The ID of the relation, either as an integer or a string.
     * @return RelationBuilder The current instance of RelationBuilder.
     */
    public function withId(int|string $id): RelationBuilder {
        // Check if the id is an integer
        if (is_integer($id)) {
            // Set the id
            $this->obj->setId($id);
        } 
        // Check if the id is a string
        else if (is_string($id)) {
            // Convert the string to an integer
            $integer = (int)$id;
            // Set the id
            $this->obj->setId($integer);
        }
        return $this;
    }

    /**
     * Sets the creation date for the Relation object.
     * 
     * @param DateTime|string $creationDate The creation date as a DateTime object or a string.
     * @return RelationBuilder The current instance of RelationBuilder.
     */
    public function withCreationDate(DateTime|string $creationDate): RelationBuilder {
        // Check if the creation date is a DateTime object
        if($creationDate instanceof DateTime){
            // Set the creation date
            $this->obj->setCreationDate($creationDate);
        } 
        // Check if the creation date is a string
        else if(is_string($creationDate)){
            // Convert the string to a DateTime object
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $creationDate);
            // Set the creation date
            $this->obj->setCreationDate($date);
        }
        return $this;
    }

    /**
     * Sets the delete date for the Relation object.
     * 
     * @param DateTime|string $deleteDate The delete date as a DateTime object or a string.
     * @return RelationBuilder The current instance of RelationBuilder.
     */
    public function withDeleteDate(DateTime|string|null $deleteDate): RelationBuilder {
        // Check if the delete date is a DateTime object
        if($deleteDate instanceof DateTime){
            // Set the delete date
            $this->obj->setDeleteDate($deleteDate);
        } 
        // Check if the delete date is a string
        else if(is_string($deleteDate)){
            // Convert the string to a DateTime object
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $deleteDate);
            // Set the delete date
            $this->obj->setDeleteDate($date);
        }
        // Check if the delete date is null
        else if($deleteDate === null){
            // Set the delete date to null
            $this->obj->setDeleteDate(null);
        }
        return $this;
    }

    /**
     * Sets the update date for the Relation object.
     * 
     * @param DateTime|string $updateDate The update date as a DateTime object or a string.
     * @return RelationBuilder The current instance of RelationBuilder.
     */
    public function withUpdateDate(DateTime|string $updateDate): RelationBuilder {
        // Check if the update date is a DateTime object
        if($updateDate instanceof DateTime){
            // Set the update date
            $this->obj->setUpdateDate($updateDate);
        } 
        // Check if the update date is a string
        else if(is_string($updateDate)){
            // Convert the string to a DateTime object
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $updateDate);
            // Set the update date
            $this->obj->setUpdateDate($date);
        }
        return $this;
    }

    /**
     * Sets the name for the Relation object.
     * 
     * @param string $name The name of the relation.
     * @return RelationBuilder The current instance of RelationBuilder.
     */
    public function withName(string $name): RelationBuilder {
        // Set the name of the relation
        $this->obj->setName($name);
        return $this;
    }

    /**
     * Sets the characters for the Relation object.
     * 
     * @param array $characters The characters array.
     * @return RelationBuilder The current instance of RelationBuilder.
     */
    public function withCharacters(array $characters): RelationBuilder {
        // Set the characters array
        $this->obj->characters = $characters;
        // Sort the characters array
        sort($characters);
        // Set the name of the relation based on the characters array
        $this->obj->setName(implode(" / ", $characters));
        return $this;
    }

    /**
     * Adds a character to the Relation object.
     * 
     * @param Character $character The character to add.
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
        usort($this->obj->characters, function($a, $b) {
            return strcmp($a->getName(), $b->getName());
        });
        // Set the name of the relation based on the characters names array
        $this->obj->setName(implode(" / ", array_map(function($character) {
            return $character->getName();
        }, $this->obj->characters)));
        return $this;
    }
}
