<?php

require_once "../src/entity/NamedEntity.php";

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
     * Method to get properties of ComplexEntity.
     * @param ComplexEntity $complex The ComplexEntity whom properties are seek.
     * @return array Array of properties of the ComplexEntity.
     */
    protected static function getProperties(ComplexEntity $complex)
    {
        // Initialization of variables.
        $reflect = new ReflectionClass($complex);
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
            case "score":
                return Score::jsonUnserialize(json_encode($data));

                // Multiple association cases :
                // If the property is about a multiple association, 
                // browing the different data and going through its jsonUnserialize method() for each.
            case "characters":
                $characters = [];
                foreach ($data as $char_array) $characters[] = Character::jsonUnserialize(json_encode($char_array));
                return $characters;
            case "fandoms":
                $fandoms = [];
                foreach ($data as $fandom_array) $fandoms[] = Fandom::jsonUnserialize(json_encode($fandom_array));
                return $fandoms;
            case "relations":
                $relations = [];
                foreach($data as $relation_array) $relations[] = Relation::jsonUnserialize(json_encode($relation_array));
                return $relations;
            case "tags":
                $tags = [];
                foreach($data as $tag_array) $tags[] = Tag::jsonUnserialize(json_encode($tag_array));
                return $tags;
            case "fanfictions":
                $fanfictions = [];
                foreach($data as $fanfiction_array) $fanfictions[] = Fanfiction::jsonUnserialize(json_encode($fanfiction_array));
                return $fanfictions;
            default:
                return null;
        }
    }
}
