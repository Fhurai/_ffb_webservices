<?php

require_once __DIR__ . "/../../src/utility/SrcUtilities.php";

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
     * @var DateTime|null
     */
    private ?DateTime $delete_date;

    /**
     * Implied constructor.
     * Initializes default values for the entity's properties.
     */
    public function __construct()
    {
        $now = new DateTime("now", new DateTimeZone("Europe/Paris")); // Current date and time in Paris timezone.
        $this->setId(0); // Default ID is 0.
        $this->setCreationDate($now); // Set creation date to current time.
        $this->setUpdateDate($now); // Set update date to current time.
        $this->setDeleteDate(null); // Delete date is null by default.
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
     * @param DateTime|null $delete_date New Delete date or null.
     * @return void
     */
    public function setDeleteDate(?DateTime $delete_date = null): void
    {
        $this->delete_date = $delete_date;
    }

    /**
     * Method to parse entity into an array for JSON parsing.
     * Converts the entity's properties into an associative array.
     * @return array Array of entity data.
     */
    public function jsonSerialize(): array
{
    $data = [
        "id" => $this->id,
        "creation_date" => $this->creation_date->format("Y-m-d H:i:s"),
        "update_date" => $this->update_date->format("Y-m-d H:i:s"),
        "delete_date" => $this->delete_date?->format("Y-m-d H:i:s"),
    ];

    if (property_exists($this, "_assoc_data")) {
        $data["_assoc_data"] = $this->_assoc_data;
    }

    return $data;
}

    /**
     * Method to parse a JSON string into an entity object.
     * Dynamically sets properties based on JSON data.
     * @param string $json JSON string.
     * @return static Parsed object.
     */
    public static function jsonUnserialize(string $json): static
    {
        $entity = static::getNewObject(); // Create a new instance of the child class.
        $data = json_decode($json, true); // Decode JSON into an associative array.

        foreach ($data as $key => $value) {
            $setFunction = SrcUtilities::gsFunction("set", $key); // Generate setter method name.

            if (in_array($key, ["creation_date", "update_date", "delete_date", "birthday"])) {
                // Parse date values if the key matches specific properties.
                $date = static::parseDate($value);
                $entity->$setFunction($date);
            } elseif (is_scalar($value) || is_null($value)) {
                // Directly set scalar or null values.
                $entity->$setFunction($value);
            } else {
                // Assign complex data directly to the property.
                $entity->$key = $value;
            }
        }

        return $entity;
    }

    /**
     * Helper method to parse date values.
     * Converts various date formats into a DateTime object.
     * @param mixed $value Date value to parse.
     * @return DateTime|null Parsed DateTime or null.
     */
    abstract protected static function parseDate(mixed $value): ?DateTime;

    /**
     * Abstract method to create a new child object.
     * Must be implemented by child classes.
     * @return mixed The child object.
     */
    abstract public static function getNewObject(): mixed;
}
