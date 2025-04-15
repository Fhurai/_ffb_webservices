<?php

require_once __DIR__ . "/Parameters.php";
require_once __DIR__ . "/ParameterTrait.php";

/**
 * Readonly Rating class extending Parameters.
 */
readonly class Rating extends Parameters
{
    use ParameterTrait;

    public function __construct(int $id, string $name)
    {
        parent::__construct($id, $name);
    }
}
