<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";

/**
 * Fandom class.
 */
class Fandom extends NamedEntity
{
    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Method to create a Fandom.
     * @return mixed new Fandom.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}
