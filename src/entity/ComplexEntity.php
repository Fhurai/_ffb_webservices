<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";

/**
 * Abstract ComplexEntity class.
 * This class extends NamedEntity and provides additional functionality for handling complex data structures.
 */
abstract class ComplexEntity extends NamedEntity
{
    /**
     * Helper: convert an array of data into an array of objects of the specified class.
     *
     * @param array  $data
     * @param string $className
     * @return array
     */
    private static function parseMultipleAssociations(array $data, string $className): array
    {
        $result = [];
        foreach ($data as $item) {
            $result[] = $className::jsonUnserialize(json_encode($item));
        }
        return $result;
    }

    /**
     * Map a property name to its appropriate parsing logic.
     *
     * @param string $property_name
     * @param array  $data
     * @return mixed
     */
    protected static function parseDataProperty(string $property_name, array $data): mixed
    {
        // Single-object associations
        $singleMap = [
            "tag_type"   => TagType::class,
            "fandom"     => Fandom::class,
            "author"     => Author::class,
            "language"   => Language::class,
            "rating"     => Rating::class,
            "score"      => Score::class,
        ];

        // Multi-object associations
        $multiMap = [
            "characters"   => Character::class,
            "fandoms"      => Fandom::class,
            "relations"    => Relation::class,
            "tags"         => Tag::class,
            "links"        => Link::class,
            "fanfictions"  => Fanfiction::class,
        ];

        if (isset($singleMap[$property_name])) {
            return $singleMap[$property_name]::jsonUnserialize(json_encode($data));
        } elseif (isset($multiMap[$property_name])) {
            return self::parseMultipleAssociations($data, $multiMap[$property_name]);
        }

        return match ($property_name) {
            "_assoc_data" => $data,
            default       => null,
        };
    }

    /**
     * Helper: parse datetime properties.
     *
     * @param mixed $data
     * @return DateTime|null
     */
    private static function parseDateTimeProperty(mixed $data): ?DateTime
    {
        if (is_string($data) && $data !== "") {
            return DateTime::createFromFormat(
                "Y-m-d H:i:s",
                $data,
                new DateTimeZone("Europe/Paris")
            );
        }

        if (is_array($data) && !empty($data["date"])) {
            return DateTime::createFromFormat(
                "Y-m-d H:i:s.u",
                $data["date"],
                new DateTimeZone("Europe/Paris")
            );
        }

        return null;
    }

    /**
     * Parse a JSON string into an instance of the child class.
     *
     * @param string $json
     * @return static
     */
    public static function jsonUnserialize(string $json): static
    {
        $entity = static::getNewObject();

        foreach (json_decode($json, true) as $key => $data) {
            $setter = SrcUtilities::gsFunction("set", $key);

            if (in_array($key, ["creation_date", "update_date", "delete_date", "birthday"], true)) {
                $entity->$setter(self::parseDateTimeProperty($data));
            } else {
                $entity->$setter($data);
            }
        }

        return $entity;
    }

    /**
     * Generic setter for array properties.
     *
     * @param array  $items
     * @param string $class
     * @return array
     */
    protected function setArrayProperty(array $items, string $class): array
    {
        $result = [];
        foreach ($items as $item) {
            $result[] = is_array($item)
                ? $class::jsonUnserialize(json_encode($item))
                : $item;
        }
        return $result;
    }

    /**
     * Generic getter for nullable array properties.
     *
     * @param array|null $property
     * @param string     $name
     * @return array
     * @throws \OutOfBoundsException
     */
    protected function getNullableArrayProperty(?array $property, string $name): array
    {
        if ($property === null) {
            throw new \OutOfBoundsException(
                "$name is not loaded. Use has" . ucfirst($name) . "() to check first."
            );
        }
        return $property;
    }
}
