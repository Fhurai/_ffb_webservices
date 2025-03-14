<?php

require_once __DIR__ . "/../../src/entity/ComplexEntity.php";

/**
 * Relation class.
 */
class Relation extends ComplexEntity
{
    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Method to parse Relation into an array for JSON parsing.
     * @return array Array of Relation data.
     */
    public function jsonSerialize(): array
    {
        $assoc = [];

        if (property_exists($this, "characters")) {
            $assoc["characters"] = $this->characters;
        }

        return array_merge(parent::jsonSerialize(), $assoc);
    }

    /**
     * Method to create a new Relation.
     * @return mixed new Relation.
     */
    public static function getNewObject(): mixed {
        return new self();
    }
}
