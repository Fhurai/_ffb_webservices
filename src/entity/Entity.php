<?php

require_once __DIR__ . "/../../src/utility/SrcUtilities.php";

/**
 * Abstract class Entity
 */
#[AllowDynamicProperties]
abstract class Entity implements JsonSerializable
{
    /**
     * Date format used for serialization.
     */
    private const DATE_FORMAT = "Y-m-d H:i:s";

    /**
     * Identifier.
     * @var int
     */
    private int $id;

    /**
     * Creation date.
     * @var DateTime
     */
    private DateTime $creationDate;

    /**
     * Update date.
     * @var DateTime
     */
    private DateTime $updateDate;

    /**
     * Delete date.
     * @var DateTime|null
     */
    private ?DateTime $deleteDate;

    /**
     * Implied constructor.
     * Initializes default values for the entity's properties.
     */
    public function __construct()
    {
        $now = new DateTime("now", new DateTimeZone("Europe/Paris"));
        $this->setId(0);
        $this->setCreationDate($now);
        $this->setUpdateDate($now);
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
     * Setter Identifier.
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
        return $this->creationDate;
    }

    /**
     * Setter Creation date.
     * @param DateTime $creationDate New creation date.
     */
    public function setCreationDate(DateTime $creationDate): void
    {
        $this->creationDate = $creationDate;
    }

    /**
     * Getter Update date.
     * @return DateTime Update date.
     */
    public function getUpdateDate(): DateTime
    {
        return $this->updateDate;
    }

    /**
     * Setter Update date.
     * @param DateTime $updateDate New update date.
     */
    public function setUpdateDate(DateTime $updateDate): void
    {
        $this->updateDate = $updateDate;
    }

    /**
     * Getter Delete date.
     * @return DateTime|null Delete date if set, or null.
     */
    public function getDeleteDate(): ?DateTime
    {
        return $this->deleteDate;
    }

    /**
     * Setter Delete date.
     * @param DateTime|null $deleteDate New delete date or null.
     */
    public function setDeleteDate(?DateTime $deleteDate = null): void
    {
        $this->deleteDate = $deleteDate;
    }

    /**
     * Method to parse entity into an array for JSON serialization.
     * @return array Array of entity data.
     */
    public function jsonSerialize(): array
    {
        $data = [
            "id" => $this->id,
            "creation_date" => $this->creationDate->format(self::DATE_FORMAT),
            "update_date" => $this->updateDate->format(self::DATE_FORMAT),
            "delete_date" => $this->deleteDate?->format(self::DATE_FORMAT),
        ];

        if (property_exists($this, "_assoc_data")) {
            $data["_assoc_data"] = $this->_assoc_data;
        }

        return $data;
    }

    /**
     * Method to parse a JSON string into an entity object.
     * @param string $json JSON string.
     * @return static Parsed object.
     */
    public static function jsonUnserialize(string $json): static
    {
        $entity = static::getNewObject();
        $data = json_decode($json, true);

        foreach ($data as $key => $value) {
            $setFunction = SrcUtilities::gsFunction("set", $key);

            if (in_array($key, ["creation_date", "update_date", "delete_date", "birthday"])) {
                $date = static::parseDate($value);
                $entity->$setFunction($date);
            } elseif (is_scalar($value) || is_null($value)) {
                $entity->$setFunction($value);
            } else {
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
