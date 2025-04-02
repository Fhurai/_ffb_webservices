<?php

require_once __DIR__ . "/NamedEntityBuilderInterface.php";
require_once __DIR__ . "/../entity/Fandom.php";

class FandomBuilder implements NamedEntityBuilderInterface {

    private Fandom $obj;

    /**
     * Constructor to initialize the FandomBuilder and reset the Fandom object.
     */
	public function __construct() {
		$this->reset();
	}

    /**
     * Builds and returns the Fandom object.
     * 
     * @return Fandom The built Fandom object.
     */
	public function build() {
		// Return the built Fandom object
		return $this->obj;
	}

    /**
     * Resets the Fandom object to a new instance.
     */
	public function reset(): void {
		// Initialize a new Fandom object
		$this->obj = new Fandom();
	}

    /**
     * Sets the creation date for the Fandom object.
     * 
     * @param DateTime|string $creationDate The creation date as a DateTime object or a string.
     * @return FandomBuilder The current instance of FandomBuilder.
     */
	public function withCreationDate(DateTime|string $creationDate): FandomBuilder {
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
     * Sets the delete date for the Fandom object.
     * 
     * @param DateTime|string $deleteDate The delete date as a DateTime object or a string.
     * @return FandomBuilder The current instance of FandomBuilder.
     */
	public function withDeleteDate(DateTime|string $deleteDate): FandomBuilder {
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
     * Sets the update date for the Fandom object.
     * 
     * @param DateTime|string $updateDate The update date as a DateTime object or a string.
     * @return FandomBuilder The current instance of FandomBuilder.
     */
	public function withUpdateDate(DateTime|string $updateDate): FandomBuilder {
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
     * Sets the name for the Fandom object.
     * 
     * @param string $name The name of the fandom.
     * @return FandomBuilder The current instance of FandomBuilder.
     */
    public function withName(string $name): FandomBuilder {
        // Set the name of the fandom
        $this->obj->setName($name);
        return $this;
    }
}
