<?php

abstract class EntityBuilder
{
    /**
     * @var mixed
     */
    protected $obj;

    private const FORMAT_DATETIME = "Y-m-d H:i:s";
    /**
     * @var string
     */
    private const TIMEZONE_DATETIME = "Europe/Paris";

    /**
     * Constructor for the builder.
     */
    public function __construct()
    {
        $this->reset();
    }

    /**
     * Resets the builder to its initial state.
     *
     * @return void
     */
    abstract public function reset(): void;

    /**
     * @return mixed
     */
    public function build(): mixed
    {
        return $this->obj;
    }

    public function withId(int|string $id): static
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

    public function withCreationDate(DateTime|string $creationDate): static
    {
        // Check if the creation date is a DateTime object
        if ($creationDate instanceof DateTime) {
            $this->obj->setCreationDate($creationDate);
        }
        // Check if the creation date is a string
        else if (is_string($creationDate)) {
            $date = Datetime::createFromFormat(self::FORMAT_DATETIME, $creationDate, new DateTimeZone(timezone: self::TIMEZONE_DATETIME));
            $this->obj->setCreationDate($date);
        }
        return $this;
    }

    public function withUpdateDate(DateTime|string $updateDate): static
    {
        // Check if the update date is a DateTime object
        if ($updateDate instanceof DateTime) {
            $this->obj->setUpdateDate($updateDate);
        }
        // Check if the update date is a string
        else if (is_string($updateDate)) {
            $date = Datetime::createFromFormat(self::FORMAT_DATETIME, $updateDate, new DateTimeZone(self::TIMEZONE_DATETIME));
            $this->obj->setUpdateDate($date);
        }
        return $this;
    }

    public function withDeleteDate(DateTime|string|null $deleteDate): static
    {
        // Check if the delete date is a DateTime object
        if ($deleteDate instanceof DateTime) {
            $this->obj->setDeleteDate($deleteDate);
        }
        // Check if the delete date is a string
        else if (is_string($deleteDate)) {
            $date = Datetime::createFromFormat(self::FORMAT_DATETIME, $deleteDate, new DateTimeZone(self::TIMEZONE_DATETIME));
            $this->obj->setDeleteDate($date);
        }
        // Check if the delete date is null
        else if ($deleteDate === null) {
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
