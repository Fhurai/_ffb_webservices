<?php

require_once __DIR__ . "/Parameters.php";

/**
 * Readonly Score class.
 */
readonly class Score extends Parameters
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