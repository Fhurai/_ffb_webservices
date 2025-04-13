<?php

require_once __DIR__ . "/NamedEntityBuilderInterface.php";
require_once __DIR__ . "/../entity/Language.php";

class LanguageBuilder implements NamedEntityBuilderInterface
{

    private Language $obj;

    /**
     * Constructor to initialize the LanguageBuilder and reset the Language object.
     */
    public function __construct()
    {
        $this->reset();
    }

    /**
     * Builds and returns the Language object.
     *
     * @return Language The built Language object.
     */
    public function build()
    {
        // Return the built Language object
        return $this->obj;
    }

    /**
     * Resets the Language object to a new instance.
     */
    public function reset(): void
    {
        // Initialize a new Language object
        $this->obj = new Language();
    }

    /**
     * Sets the ID for the Author object.
     *
     * @param int|string $id The ID of the author, either as an integer or a string.
     * @return LanguageBuilder The current instance of LanguageBuilder.
     */
    public function withId(int|string $id): LanguageBuilder
    {
        // Check if the id is an integer
        if (is_integer($id)) {
            // Set the id
            $this->obj->setId($id);
        }
        // Check if the id is a string
        else if (is_string($id)) {
            // Convert the string to an integer
            $integer = (int) $id;
            // Set the id
            $this->obj->setId($integer);
        }
        return $this;
    }

    /**
     * Sets the creation date for the Language object.
     *
     * @param DateTime|string $creationDate The creation date of the language.
     * @return LanguageBuilder The current instance of LanguageBuilder.
     */
    public function withCreationDate(DateTime|string $creationDate): LanguageBuilder
    {
        // Check if the creation date is a DateTime object
        if ($creationDate instanceof DateTime) {
            // Set the creation date
            $this->obj->setCreationDate($creationDate);
        }
        // Check if the creation date is a string
        else if (is_string($creationDate)) {
            // Convert the string to a DateTime object
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $creationDate, new DateTimeZone('Europe/Paris'));
            // Set the creation date
            $this->obj->setCreationDate($date);
        }
        return $this;
    }

    /**
     * Sets the delete date for the Language object.
     *
     * @param DateTime|string|null $deleteDate The delete date of the language.
     * @return LanguageBuilder The current instance of LanguageBuilder.
     */
    public function withDeleteDate(DateTime|string|null $deleteDate): LanguageBuilder
    {
        // Check if the delete date is a DateTime object
        if ($deleteDate instanceof DateTime) {
            // Set the delete date
            $this->obj->setDeleteDate($deleteDate);
        }
        // Check if the delete date is a string
        else if (is_string($deleteDate)) {
            // Convert the string to a DateTime object
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $deleteDate, new DateTimeZone('Europe/Paris'));
            // Set the delete date
            $this->obj->setDeleteDate($date);
        }
        // Check if the delete date is null
        else if ($deleteDate === null) {
            // Set the delete date to null
            $this->obj->setDeleteDate(null);
        } else {
            // Set the delete date to null
            $this->obj->setDeleteDate(null);
        }
        return $this;
    }

    /**
     * Sets the update date for the Language object.
     *
     * @param DateTime|string $updateDate The update date of the language.
     * @return LanguageBuilder The current instance of LanguageBuilder.
     */
    public function withUpdateDate(DateTime|string $updateDate): LanguageBuilder
    {
        // Check if the update date is a DateTime object
        if ($updateDate instanceof DateTime) {
            // Set the update date
            $this->obj->setUpdateDate($updateDate);
        }
        // Check if the update date is a string
        else if (is_string($updateDate)) {
            // Convert the string to a DateTime object
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $updateDate, new DateTimeZone('Europe/Paris'));
            // Set the update date
            $this->obj->setUpdateDate($date);
        }
        return $this;
    }

    /**
     * Sets the abbreviation for the Language object.
     *
     * @param string $abbreviation The abbreviation of the language.
     * @return LanguageBuilder The current instance of LanguageBuilder.
     */
    public function withAbbreviation(string $abbreviation): LanguageBuilder
    {
        // Set the abbreviation of the language
        $this->obj->setAbbreviation($abbreviation);
        return $this;
    }

    /**
     * Sets the name for the Language object.
     *
     * @param string $name The name of the language.
     * @return LanguageBuilder The current instance of LanguageBuilder.
     */
    public function withName(string $name): LanguageBuilder
    {
        // Set the name of the language
        $this->obj->setName($name);
        return $this;
    }
}
