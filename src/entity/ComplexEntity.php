<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";

/**
 * Abstract ComplexEntity class.
 * This class extends NamedEntity and provides additional functionality for handling complex data structures.
 */
abstract class ComplexEntity extends NamedEntity
{

    /**
     * Implied constructor.
     * Calls the parent constructor to initialize the base class.
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Helper function to handle multiple associations.
     * Converts an array of data into an array of objects of the specified class.
     * @param array $data Array of data to be converted.
     * @param string $className Class name of the objects to create.
     * @return array Array of objects created from the data.
     */
    private static function parseMultipleAssociations(array $data, string $className): array
    {
        $result = [];
        foreach ($data as $item) {
            // Deserialize each item into an object of the specified class.
            $result[] = $className::jsonUnserialize(json_encode($item));
        }
        return $result;
    }

    /**
     * Method to parse an array into an object.
     * Maps a property name to its corresponding parsing logic.
     * @param string $property_name Name of the property to parse.
     * @param array $data Data to be parsed.
     * @return mixed Parsed object or data.
     */
    protected static function parseDataProperty(string $property_name, array $data): mixed
    {
        switch ($property_name) {
            // Simple association cases: Deserialize data into specific object types.
            case "tag_type":
                return TagType::jsonUnserialize(json_encode($data));
            case "fandom":
                return Fandom::jsonUnserialize(json_encode($data));
            case "author":
                return Author::jsonUnserialize(json_encode($data));
            case "language":
                return Language::jsonUnserialize(json_encode($data));
            case "rating":
                return Rating::jsonUnserialize(json_encode($data));
            case "score":
                return Score::jsonUnserialize(json_encode($data));

            // Multiple association cases: Use helper function to parse arrays into objects.
            case "characters":
                return self::parseMultipleAssociations($data, Character::class);
            case "fandoms":
                return self::parseMultipleAssociations($data, Fandom::class);
            case "relations":
                return self::parseMultipleAssociations($data, Relation::class);
            case "tags":
                return self::parseMultipleAssociations($data, Tag::class);
            case "links":
                return self::parseMultipleAssociations($data, Link::class);
            case "fanfictions":
                return self::parseMultipleAssociations($data, Fanfiction::class);

            // Ids array cases: Return the data as-is.
            case "_assoc_data":
                return $data;
            default:
                // Return null for unrecognized property names.
                return null;
        }
    }

    /**
     * Helper function to parse datetime properties.
     * Converts a string or array into a DateTime object.
     * @param mixed $data Data to be parsed (string or array).
     * @return DateTime|null Parsed DateTime object or null if parsing fails.
     */
    private static function parseDateTimeProperty(mixed $data): ?DateTime
    {
        if (is_string($data) && !empty($data)) {
            // Parse string in "Y-m-d H:i:s" format.
            return DateTime::createFromFormat("Y-m-d H:i:s", $data, new DateTimeZone("Europe/Paris"));
        }
        if (is_array($data) && !empty($data)) {
            // Parse array with "date" key in "Y-m-d H:i:s.u" format.
            return DateTime::createFromFormat("Y-m-d H:i:s.u", $data["date"], new DateTimeZone("Europe/Paris"));
        }
        // Return null if data is invalid or empty.
        return null;
    }

    /**
     * Method to parse a JSON string into an action object.
     * Converts a JSON string into an instance of the child class.
     * @param string $json JSON string to be parsed.
     * @return static Parsed object of the child class.
     */
    public static function jsonUnserialize($json): static
    {
        // Create a new instance of the child class.
        $entity = static::getNewObject();

        // Decode the JSON string into an associative array and iterate over its key-value pairs.
        foreach (json_decode($json, true) as $key => $data) {
            // Generate the setter function name for the current property.
            $setFunction = SrcUtilities::gsFunction("set", $key);

            if (in_array($key, ["creation_date", "update_date", "delete_date", "birthday"])) {
                // Parse datetime properties and set them using the setter function.
                $entity->$setFunction(self::parseDateTimeProperty($data));
            } else {
                // Directly set other properties using the setter function.
                $entity->$setFunction($data);
            }
        }

        // Return the populated entity object.
        return $entity;
    }

    /**
     * Generic setter for array properties.
     */
    protected function setArrayProperty(array $items, string $class): array {
        $result = [];
        foreach ($items as $item) {
            $result[] = is_array($item) ? $class::jsonUnserialize(json_encode($item)) : $item;
        }
        return $result;
    }

    /**
     * Generic getter for nullable array properties.
     */
    protected function getNullableArrayProperty(?array $property, string $name): array {
        if (!$property) {
            throw new \RuntimeException("$name is not loaded. Use has" . ucfirst($name) . "() to check first.");
        }
        return $property;
    }

}
