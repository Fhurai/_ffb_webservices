<?php

require_once __DIR__ . "/../../src/utilities/SrcUtilities.php";

/**
 * Abstract class Entity
 */
#[AllowDynamicProperties]
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
        $this->setCreationDate(new DateTime("now", new DateTimeZone("Europe/Paris")));
        $this->setUpdateDate(new DateTime("now", new DateTimeZone("Europe/Paris")));
        $this->setDeleteDate(null);
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
        $assoc = [];

        if (property_exists($this, "_assoc_data")) {
            $assoc["_assoc_data"] = $this->_assoc_data;
        }

        return array_merge([
            "id" => $this->getId(),
            "creation_date" => $this->getCreationDate(),
            "update_date" => $this->getUpdateDate(),
            "delete_date" => $this->getDeleteDate(),
        ], $assoc);
    }

    /**
     * Method to parse a JSON string into an action object.
     * @param string $json JSON string.
     * @return mixed Parsed object.
     */
    public static function jsonUnserialize($json): mixed
    {
        // Create parameters with the child class.
        $entity = static::getNewObject();

        // JSON string is parsed as an array then browsed.
        foreach (json_decode($json, true) as $key => $data) {

            // For each property, the set method is generated then used on the provided data.
            $setFunction = SrcUtilities::gsFunction("set", $key);

            if (in_array($key, ["creation_date", "update_date", "delete_date", "birthday"])) {

                // If the property is a datetime, the data is parsed as a datetime only if the data is a not empty string.
                $date = is_string($data) && !empty($data) ? DateTime::createFromFormat("Y-m-d H:i:s", $data, new DateTimeZone("Europe/Paris")) : null;
                $date = is_array($data) && !empty($data) ? DateTime::createFromFormat("Y-m-d H:i:s.u", $data["date"], new DateTimeZone("Europe/Paris")) : $date;

                // Once a datetime, the data is set in the property.
                $entity->$setFunction($date);
            } else if (is_scalar($data) || is_null($data)) {

                // The property is not a datetime, use of the setter function directly.
                $entity->$setFunction($data);
            } else {
                $entity->$key = $data;
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
     * Method to get properties of ComplexEntity.
     * @return array Array of properties of the ComplexEntity.
     */
    public static function getProperties(): array
    {
        // Initialization of variables.
        $reflect = new ReflectionClass(static::class);
        $properties = [];


        do {
            // While the reflection of the complexEntity has a parent.

            // Browing the ComplexEntity properties.
            foreach ($reflect->getProperties() as $property) {

                // Pushing the current property into the properties array.
                array_push($properties, $property->getName());
            }
        } while ($reflect = $reflect->getParentClass());

        // Return the properties array.
        return $properties;
    }
}
