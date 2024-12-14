<?php

require_once "../src/entity/Entity.php";

abstract class NamedEntity extends Entity {
    private string $name;

    public function __construct() {
        parent::__construct();
        $this->setName("");
    }

    /**
     * 
     * @return string
     */
    public function getName(): string {
        return $this->name;
    }

    /**
     * 
     * @param string $name
     * @return void
     */
    public function setName(string $name) {
        $this->name = $name;
    }

    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        return array_merge(parent::jsonSerialize(),[
            "name"=> $this->getName(),
        ]);
    }
}