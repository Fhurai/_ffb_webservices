<?php

require_once __DIR__ . "/EntityBuilderInterface.php";
require_once __DIR__ . "/../entity/Link.php";

/**
 * Class LinkBuilder
 * Implements the BuilderInterface to build Link objects.
 */
class LinkBuilder implements EntityBuilderInterface {

    /**
     * @var Link The Link object being built.
     */
    private Link $obj;

    /**
     * LinkBuilder constructor.
     * Initializes the builder by resetting the Link object.
     */
    public function __construct() {
        $this->reset();
    }

    /**
     * Returns the built Link object.
     *
     * @return Link The built Link object.
     */
    public function build(): Link {
        return $this->obj;
    }

    /**
     * Resets the builder by creating a new Link object.
     */
    public function reset(): void {
        $this->obj = new Link();
    }

    /**
     * Sets the ID for the Author object.
     * 
     * @param int|string $id The ID of the author, either as an integer or a string.
     * @return LinkBuilder The current instance of LinkBuilder.
     */
    public function withId(int|string $id): LinkBuilder {
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
     * Sets the creation date of the User.
     *
     * @param DateTime|string $creationDate The creation date to set. Can be a DateTime object or a string.
     * @return LinkBuilder The current instance of LinkBuilder.
     */
    public function withCreationDate(DateTime|string $creationDate): LinkBuilder {
        // Check if the creation date is a DateTime object
        if($creationDate instanceof DateTime){
            $this->obj->setCreationDate($creationDate);
        } 
        // Check if the creation date is a string
        else if(is_string($creationDate)){
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $creationDate);
            $this->obj->setCreationDate($date);
        }
        return $this;
    }

    /**
     * Sets the update date of the User.
     *
     * @param DateTime|string $updateDate The update date to set. Can be a DateTime object or a string.
     * @return LinkBuilder The current instance of LinkBuilder.
     */
    public function withUpdateDate(DateTime|string $updateDate): LinkBuilder {
        // Check if the update date is a DateTime object
        if($updateDate instanceof DateTime){
            $this->obj->setUpdateDate($updateDate);
        } 
        // Check if the update date is a string
        else if(is_string($updateDate)){
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $updateDate);
            $this->obj->setUpdateDate($date);
        }
        return $this;
    }

    /**
     * Sets the delete date of the User.
     *
     * @param DateTime|string $deleteDate The delete date to set. Can be a DateTime object or a string.
     * @return LinkBuilder The current instance of LinkBuilder.
     */
    public function withDeleteDate(DateTime|string $deleteDate): LinkBuilder {
        // Check if the delete date is a DateTime object
        if($deleteDate instanceof DateTime){
            $this->obj->setDeleteDate($deleteDate);
        } 
        // Check if the delete date is a string
        else if(is_string($deleteDate)){
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $deleteDate);
            $this->obj->setDeleteDate($date);
        }
        return $this;
    }

    /**
     * Sets the URL of the Link.
     *
     * @param string $url The URL to set.
     * @return LinkBuilder The current instance of LinkBuilder.
     */
    public function withUrl(string $url): LinkBuilder {
        $this->obj->setUrl($url);
        return $this;
    }

    /**
     * Sets the fanfiction ID of the Link.
     *
     * @param int $fanfictionId The fanfiction ID to set.
     * @return LinkBuilder The current instance of LinkBuilder.
     */
    public function withFanfictionId(int $fanfictionId): LinkBuilder {
        $this->obj->setFanfictionId($fanfictionId);
        return $this;
    }
}
