<?php

require_once __DIR__ . "/NamedEntityBuilderInterface.php";
require_once __DIR__ . "/../entity/Author.php";

class AuthorBuilder implements NamedEntityBuilderInterface
{

    private Author $obj;

    /**
     * Constructor to initialize the AuthorBuilder and reset the Author object.
     */
    public function __construct()
    {
        $this->reset();
    }

    /**
     * Builds and returns the Author object.
     *
     * @return Author The built Author object.
     */
    public function build()
    {
        // Return the built Author object
        return $this->obj;
    }

    /**
     * Resets the Author object to a new instance.
     */
    public function reset(): void
    {
        // Initialize a new Author object
        $this->obj = new Author();
    }

    /**
     * Sets the ID for the Author object.
     *
     * @param int|string $id The ID of the author, either as an integer or a string.
     * @return AuthorBuilder The current instance of AuthorBuilder.
     */
    public function withId(int|string $id): AuthorBuilder
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
     * Sets the creation date for the Author object.
     *
     * @param DateTime|string $creationDate The creation date as a DateTime object or a string.
     * @return AuthorBuilder The current instance of AuthorBuilder.
     */
    public function withCreationDate(DateTime|string $creationDate): AuthorBuilder
    {
        // Check if the creation date is a DateTime object
        if ($creationDate instanceof DateTime) {
            // Set the creation date
            $this->obj->setCreationDate($creationDate);
        }
        // Check if the creation date is a string
        else if (is_string($creationDate)) {
            // Convert the string to a DateTime object
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $creationDate);
            // Set the creation date
            $this->obj->setCreationDate($date);
        }
        return $this;
    }

    /**
     * Sets the delete date for the Author object.
     *
     * @param DateTime|string|null $deleteDate The delete date as a DateTime object or a string.
     * @return AuthorBuilder The current instance of AuthorBuilder.
     */
    public function withDeleteDate(DateTime|string|null $deleteDate): AuthorBuilder
    {
        // Check if the delete date is a DateTime object
        if ($deleteDate instanceof DateTime) {
            // Set the delete date
            $this->obj->setDeleteDate($deleteDate);
        }
        // Check if the delete date is a string
        else if (is_string($deleteDate)) {
            // Convert the string to a DateTime object
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $deleteDate);
            // Set the delete date
            $this->obj->setDeleteDate($date);
        }
        // Check if the delete date is null
        else if ($deleteDate === null) {
            // Set the delete date to null
            $this->obj->setDeleteDate(null);
        }
        return $this;
    }

    /**
     * Sets the update date for the Author object.
     *
     * @param DateTime|string $updateDate The update date as a DateTime object or a string.
     * @return AuthorBuilder The current instance of AuthorBuilder.
     */
    public function withUpdateDate(DateTime|string $updateDate): AuthorBuilder
    {
        // Check if the update date is a DateTime object
        if ($updateDate instanceof DateTime) {
            // Set the update date
            $this->obj->setUpdateDate($updateDate);
        }
        // Check if the update date is a string
        else if (is_string($updateDate)) {
            // Convert the string to a DateTime object
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $updateDate);
            // Set the update date
            $this->obj->setUpdateDate($date);
        }
        return $this;
    }

    /**
     * Sets the name for the Author object.
     *
     * @param string $name The name of the author.
     * @return AuthorBuilder The current instance of AuthorBuilder.
     */
    public function withName(string $name): AuthorBuilder
    {
        // Set the name of the author
        $this->obj->setName($name);
        return $this;
    }
}
