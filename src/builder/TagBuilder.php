<?php

require_once __DIR__ . "/NamedEntityBuilderInterface.php";
require_once __DIR__ . "/../entity/Tag.php";

class TagBuilder implements NamedEntityBuilderInterface {

    private Tag $obj;

    /**
     * Constructor to initialize the TagBuilder and reset the Tag object.
     */
    public function __construct() {
        $this->reset();
    }

    /**
     * Builds and returns the Tag object.
     * 
     * @return Tag The built Tag object.
     */
    public function build() {
        // Return the built Tag object
        return $this->obj;
    }

    /**
     * Resets the Tag object to a new instance.
     */
    public function reset(): void {
        // Initialize a new Tag object
        $this->obj = new Tag();
    }

    /**
     * Sets the creation date for the Tag object.
     * 
     * @param DateTime|string $creationDate The creation date as a DateTime object or a string.
     * @return TagBuilder The current instance of TagBuilder.
     */
    public function withCreationDate(DateTime|string $creationDate): TagBuilder {
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
     * Sets the delete date for the Tag object.
     * 
     * @param DateTime|string $deleteDate The delete date as a DateTime object or a string.
     * @return TagBuilder The current instance of TagBuilder.
     */
    public function withDeleteDate(DateTime|string $deleteDate): TagBuilder {
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
        return $this;
    }

    /**
     * Sets the update date for the Tag object.
     * 
     * @param DateTime|string $updateDate The update date as a DateTime object or a string.
     * @return TagBuilder The current instance of TagBuilder.
     */
    public function withUpdateDate(DateTime|string $updateDate): TagBuilder {
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
     * Sets the name for the Tag object.
     * 
     * @param string $name The name of the tag.
     * @return TagBuilder The current instance of TagBuilder.
     */
    public function withName(string $name): TagBuilder {
        // Set the name of the tag
        $this->obj->setName($name);
        return $this;
    }

    /**
     * Sets the description for the Tag object.
     * 
     * @param string $description The description of the tag.
     * @return TagBuilder The current instance of TagBuilder.
     */
    public function withDescription(string $description): TagBuilder {
        // Set the description of the tag
        $this->obj->setDescription($description);
        return $this;
    }

    /**
     * Sets the type ID for the Tag object.
     * 
     * @param int|TagType $arg The type ID as an integer or a TagType object.
     * @return TagBuilder The current instance of TagBuilder.
     */
    public function withTypeId(int|TagType $arg): TagBuilder {
        // Check if the argument is an integer
        if(is_int($arg)){
            // Set the type ID
            $this->obj->setTypeId($arg);
        }
        // Check if the argument is a TagType object
        else if($arg instanceof TagType){
            // Set the type ID from the TagType object
            $this->obj->setTypeId($arg->getId());
        }
        return $this;
    }

    /**
     * Sets the type for the Tag object.
     * 
     * @param TagType $type The TagType object.
     * @return TagBuilder The current instance of TagBuilder.
     */
    public function withType(TagType $type): TagBuilder{
        // Set the type of the tag
        $this->obj->type = $type;
        // Set the type ID from the TagType object
        return $this->withTypeId($type);
    }
}
