<?php

require_once "../src/entity/Parameters.php";

/**
 * Readonly TagType class.
 */
readonly class TagType extends Parameters
{

    /**
     * Implied Constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Method to create a new object.
     * @return mixed the new object.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}