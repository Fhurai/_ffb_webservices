<?php

/**
 * Abstract class Entity
 */
abstract class Entity implements JsonSerializable
{

    /**
     * Identifier.
     * @var int
     */
    private int $id;
    /**
     * Creation date.
     * @var DateTime
     */
    private DateTime $creation_date;
    /**
     * Update date.
     * @var DateTime
     */
    private DateTime $update_date;
    /**
     * Delete date.
     * @var 
     */
    private ?DateTime $delete_date;


    /**
     * Implied constructor.
     */
    public function __construct()
    {
        $this->setId(0);
        $this->setCreationDate(new DateTime());
        $this->setUpdateDate(new DateTime());
        $this->setDeleteDate(new DateTime());
    }

    /**
     * Getter Identifier.
     * @return int Identifier.
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * Setter Identifier
     * @param int $id New identifier.
     */
    public function setId(int $id): void
    {
        $this->id = $id;
    }

    /**
     * Getter Creation date.
     * @return DateTime Creation date.
     */
    public function getCreationDate(): DateTime
    {
        return $this->creation_date;
    }

    /**
     * Setter Creation date.
     * @param DateTime $creation_date New Creation date.
     * @return void
     */
    public function setCreationDate(DateTime $creation_date): void
    {
        $this->creation_date = $creation_date;
    }

    /**
     * Getter Update date.
     * @return DateTime Update date.
     */
    public function getUpdateDate(): DateTime
    {
        return $this->update_date;
    }

    /**
     * Setter Update date.
     * @param DateTime $update_date New Update date.
     * @return void
     */
    public function setUpdateDate(DateTime $update_date): void
    {
        $this->update_date = $update_date;
    }

    /**
     * Setter Delete date.
     * @return DateTime|null Delete date if date set, or null.
     */
    public function getDeleteDate(): ?DateTime
    {
        return $this->delete_date;
    }

    /**
     * Setter Delete date
     * @param mixed $delete_date New Delete date | null
     * @return void
     */
    public function setDeleteDate(?DateTime $delete_date = null)
    {
        $this->delete_date = $delete_date;
    }

    /**
     * Method to parse entity into an array for JSON parsing.
     * @return array Array of entity data.
     */
    public function jsonSerialize(): mixed
    {
        return [
            "id" => $this->getId(),
            "creation_date" => $this->getCreationDate(),
            "update_date" => $this->getUpdateDate(),
            "delete_date" => $this->getDeleteDate(),
        ];
    }

    /**
     * Method to parse a JSON string into an action object.
     * @param string $json JSON string.
     * @return mixed Parsed object.
     */
    public static function jsonUnserialize($json): User
    {
        // Create parameters with the child class.
        $entity = static::getNewObject();

        // JSON string is parsed as an array then browsed.
        foreach (json_decode($json, true) as $key => $data) {

            // For each property, the set & get methods are generated then used on the provided data.
            $getFunction = static::gsFunction("get", $key);
            $setFunction = static::gsFunction("set", $key);

            if ($entity->$getFunction() instanceof DateTime) {

                // If the property is a datetime, the data is parsed as a datetime only if the data is a not empty string.
                $date = is_string($data) && !empty($data) ? DateTime::createFromFormat("Y-m-d H:i:s", $data, new DateTimeZone("Europe/Paris")) : null;

                // Once a datetime, the data is set in the property.
                $entity->$setFunction($date);
            } else {

                // The property is not a datetime, use of the setter function directly.
                $entity->$setFunction($data);
            }
        }

        // The new entity is returned.
        return $entity;
    }

    /**
     * Abstract method to create a new child object.
     * @return mixed The child object.
     */
    public abstract static function getNewObject(): mixed;

    /**
     * Method to generate getter function from property.
     * @param string $property Property to get.
     * @return string The getter function to call.
     */
    protected static function gsFunction(string $prefix, string $property)
    {
        // Initialization of variable.
        $pos = -1;

        // If property begin with "is", this is a boolean who don't have getters beginning with "get".
        if (strpos($property, "is") !== false && strpos($property, "is") === 0)
            $function = "";
        else
            $function = $prefix;

        // Property name is parsed as an array who is browsed.
        foreach (str_split($property) as $key => $character) {
            
            // If current character is "_" then this is not put into the return value.
            // The next character is converted to uppercase and put into the return value.
            // If current character is not "_", then current character is put into the return value.

            if ($character === "_") {
                $pos = $key;
            }

            if ($pos + 1 === $key) {
                $function .= strtoupper($character);
                $pos = -1;
            } else if ($pos === -1) {
                $function .= $character;
            }
        }

        // The generated getter function is returned.
        return $function;
    }
}