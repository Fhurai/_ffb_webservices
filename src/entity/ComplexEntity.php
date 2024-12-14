<?php

require_once "../src/entity/NamedEntity.php";

abstract class ComplexEntity extends NamedEntity
{

    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 
     * @param ComplexEntity $complex
     * @return array
     */
    protected static function getProperties(ComplexEntity $complex)
    {
        $reflect = new ReflectionClass($complex);
        $properties = [];

        do {
            foreach ($reflect->getProperties() as $property) {
                array_push($properties, $property->getName());
            }
        } while ($reflect = $reflect->getParentClass());


        return $properties;
    }

    /**
     * 
     * @param string $property_name
     * @param array $data
     * @return mixed
     */
    protected static function parseDataProperty(string $property_name, array $data): mixed
    {
        switch ($property_name) {
                // Cas association simple
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

                // cas association multiple
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
                return "";
        }
    }
}
