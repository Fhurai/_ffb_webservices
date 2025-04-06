<?php

require_once __DIR__ . "/NamedEntityBuilderInterface.php";
require_once __DIR__ . "/../entity/Character.php";

class CharacterBuilder implements NamedEntityBuilderInterface {

    private Character $obj;

    /**
     * Constructor to initialize the CharacterBuilder and reset the Character object.
     */
    public function __construct() {
        $this->reset();
    }

    /**
     * Builds and returns the Character object.
     * 
     * @return Character The built Character object.
     */
    public function build() {
        // Return the built Character object
        return $this->obj;
    }

    /**
     * Resets the Character object to a new instance.
     */
    public function reset(): void {
        // Initialize a new Character object
        $this->obj = new Character();
    }

    /**
     * Sets the ID for the Author object.
     * 
     * @param int|string $id The ID of the author, either as an integer or a string.
     * @return CharacterBuilder The current instance of CharacterBuilder.
     */
    public function withId(int|string $id): CharacterBuilder {
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
     * Sets the creation date for the Character object.
     * 
     * @param DateTime|string $creationDate The creation date as a DateTime object or a string.
     * @return CharacterBuilder The current instance of CharacterBuilder.
     */
    public function withCreationDate(DateTime|string $creationDate): CharacterBuilder {
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
     * Sets the delete date for the Character object.
     * 
     * @param DateTime|string|null $deleteDate The delete date as a DateTime object or a string.
     * @return CharacterBuilder The current instance of CharacterBuilder.
     */
    public function withDeleteDate(DateTime|string|null $deleteDate): CharacterBuilder {
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
        } else if($deleteDate === null){
            // Set the delete date to null
            $this->obj->setDeleteDate(null);
        }
        return $this;
    }

    /**
     * Sets the update date for the Character object.
     * 
     * @param DateTime|string $updateDate The update date as a DateTime object or a string.
     * @return CharacterBuilder The current instance of CharacterBuilder.
     */
    public function withUpdateDate(DateTime|string $updateDate): CharacterBuilder {
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
     * Sets the name for the Character object.
     * 
     * @param string $name The name of the character.
     * @return CharacterBuilder The current instance of CharacterBuilder.
     */
    public function withName(string $name): CharacterBuilder {
        // Check if the name is empty
        if(empty($name)){
            throw new InvalidArgumentException("Name cannot be empty.");
        }

        // Set the name of the character
        $this->obj->setName($name);
        return $this;
    }

    /**
     * Sets the fandom ID for the Character object.
     * 
     * @param int|Fandom $arg The fandom ID as an integer or a Fandom object.
     * @return CharacterBuilder The current instance of CharacterBuilder.
     */
    public function withFandomId(int|Fandom $arg): CharacterBuilder {
        // Check if the argument is an integer
        if(is_int($arg)){
            // Set the fandom ID
            $this->obj->setFandomId($arg);
        } 
        // Check if the argument is a Fandom object
        else if($arg instanceof Fandom){
            // Set the fandom ID from the Fandom object
            $this->obj->setFandomId($arg->getId());
        }
        return $this;
    }

    /**
     * Sets the fandom for the Character object.
     * 
     * @param Fandom $fandom The Fandom object.
     * @return CharacterBuilder The current instance of CharacterBuilder.
     */
    public function withFandom(Fandom $fandom): CharacterBuilder {
        // Set the fandom object
        $this->obj->fandom = $fandom;
        // Set the fandom ID from the Fandom object
        return $this->withFandomId($fandom);
    }
}
