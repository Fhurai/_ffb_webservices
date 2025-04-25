<?php

abstract class EntityBuilder
{
    /**
     * @var mixed The object being built by the builder.
     */
    protected $obj;

    /**
     * DateTime format used for parsing date strings.
     */
    private const FORMAT_DATETIME = "Y-m-d H:i:s";

    /**
     * Timezone used for DateTime operations.
     */
    private const TIMEZONE_DATETIME = "Europe/Paris";

    /**
     * Constructor for the builder.
     * Initializes the builder by resetting its state.
     */
    public function __construct()
    {
        $this->reset();
    }

    /**
     * Resets the builder to its initial state.
     * This method must be implemented by subclasses to define the reset logic.
     *
     * @return void
     */
    abstract public function reset(): void;

    /**
     * Builds and returns the constructed object.
     *
     * @return mixed The constructed object.
     */
    public function build(): mixed
    {
        return $this->obj;
    }

    /**
     * Sets the ID of the object being built.
     *
     * @param  int|string $id The ID to set. Can be an integer or a string.
     * @return static The current builder instance for method chaining.
     */
    public function withId(int|string $id): static
    {
        // Check if the id is an integer
        if (is_integer($id)) {
            // Set the id
            $this->obj->setId($id);
        }
        // Check if the id is a string
        elseif (is_string($id)) {
            // Convert the string to an integer
            $integer = (int) $id;
            // Set the id
            $this->obj->setId($integer);
        }
        return $this;
    }

    /**
     * Sets the creation date of the object being built.
     *
     * @param  DateTime|string $creationDate The creation date to set. Can be a DateTime object or a string.
     * @return static The current builder instance for method chaining.
     */
    public function withCreationDate(DateTime|string $creationDate): static
    {
        // Check if the creation date is a DateTime object
        if ($creationDate instanceof DateTime) {
            $this->obj->setCreationDate($creationDate);
        }
        // Check if the creation date is a string
        elseif (is_string($creationDate)) {
            $date = Datetime::createFromFormat(self::FORMAT_DATETIME, $creationDate, new DateTimeZone(timezone: self::TIMEZONE_DATETIME));
            $this->obj->setCreationDate($date);
        }
        return $this;
    }

    /**
     * Sets the update date of the object being built.
     *
     * @param  DateTime|string $updateDate The update date to set. Can be a DateTime object or a string.
     * @return static The current builder instance for method chaining.
     */
    public function withUpdateDate(DateTime|string $updateDate): static
    {
        // Check if the update date is a DateTime object
        if ($updateDate instanceof DateTime) {
            $this->obj->setUpdateDate($updateDate);
        }
        // Check if the update date is a string
        elseif (is_string($updateDate)) {
            $date = Datetime::createFromFormat(self::FORMAT_DATETIME, $updateDate, new DateTimeZone(self::TIMEZONE_DATETIME));
            $this->obj->setUpdateDate($date);
        }
        return $this;
    }

    /**
     * Sets the delete date of the object being built.
     *
     * @param  DateTime|string|null $deleteDate The delete date to set. Can be a DateTime object, a string, or null.
     * @return static The current builder instance for method chaining.
     */
    public function withDeleteDate(DateTime|string|null $deleteDate): static
    {
        // Check if the delete date is a DateTime object
        if ($deleteDate instanceof DateTime) {
            $this->obj->setDeleteDate($deleteDate);
        }
        // Check if the delete date is a string
        elseif (is_string($deleteDate)) {
            $date = Datetime::createFromFormat(self::FORMAT_DATETIME, $deleteDate, new DateTimeZone(self::TIMEZONE_DATETIME));
            $this->obj->setDeleteDate($date);
        }
        // Check if the delete date is null
        elseif ($deleteDate === null) {
            // Set the delete date to null
            $this->obj->setDeleteDate(null);
        }
        // If the delete date is not provided, set it to null
        else {
            $this->obj->setDeleteDate(null);
        }
        return $this;
    }
}
