<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";

/**
 * Abstract ComplexEntity class.
 */
abstract class ComplexEntity extends NamedEntity
{

    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Method to parse an array into an object.
     * @param string $property_name Name of the property to parse.
     * @param array $data 
     * @return mixed
     */
    protected static function parseDataProperty(string $property_name, array $data): mixed
    {
        switch ($property_name) {
            // Simple association cases :
            // If the property is about a simple association, 
            // going through its jsonUnserialize method().
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

            // Multiple association cases :
            // If the property is about a multiple association, 
            // browing the different data and going through its jsonUnserialize method() for each.
            case "characters":
                $characters = [];
                foreach ($data as $char_array)
                    $characters[] = Character::jsonUnserialize(json_encode($char_array));
                return $characters;
            case "fandoms":
                $fandoms = [];
                foreach ($data as $fandom_array)
                    $fandoms[] = Fandom::jsonUnserialize(json_encode($fandom_array));
                return $fandoms;
            case "relations":
                $relations = [];
                foreach ($data as $relation_array)
                    $relations[] = Relation::jsonUnserialize(json_encode($relation_array));
                return $relations;
            case "tags":
                $tags = [];
                foreach ($data as $tag_array)
                    $tags[] = Tag::jsonUnserialize(json_encode($tag_array));
                return $tags;
            case "links":
                $links = [];
                foreach ($data as $link_array)
                    $links[] = Link::jsonUnserialize(json_encode($link_array));
                return $links;
            case "fanfictions":
                $fanfictions = [];
                foreach ($data as $fanfiction_array)
                    $fanfictions[] = Fanfiction::jsonUnserialize(json_encode($fanfiction_array));
                return $fanfictions;

            // Ids array cases :
            // Just set from data
            case "_assoc_data":
                return $data;
            default:
                return null;
        }
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
                $entity->$key = static::parseDataProperty($key, $data);
            }
        }

        // The new entity is returned.
        return $entity;
    }
}
