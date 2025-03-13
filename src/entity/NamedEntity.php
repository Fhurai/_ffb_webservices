<?php

require_once __DIR__ . "/../../src/entity/Entity.php";

/**
 * Abstract class NamedEntity
 */
abstract class NamedEntity extends Entity {
    /**
     * Name.
     * @var string
     */
    private string $name;

    /**
     * Implied constructor.
     */
    public function __construct() {
        parent::__construct();
        $this->setName("");
    }

    /**
     * Getter Name.
     * @return string Name.
     */
    public function getName(): string {
        return $this->name;
    }

    /**
     * Setter Name.
     * @param string $name New Name.
     * @return void
     */
    public function setName(string $name) {
        $this->name = $name;
    }

    /**
     * Method to parse NamedEntity into an array for JSON parsing.
     * @return array Array of NamedEntity data.
     */
    public function jsonSerialize(): array
    {
        return array_merge(parent::jsonSerialize(),[
            "name"=> $this->getName(),
        ]);
    }
}