<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";

/**
 * Author class.
 */
class Author extends NamedEntity
{
    /**
     * Implied Constructor
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Method to create a Author.
     * @return mixed New Author.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}