<?php

require_once __DIR__ . "/Parameters.php";
require_once __DIR__ . "/ParameterTrait.php";

/**
 * Readonly TagType class extending Parameters
 */
readonly class TagType extends Parameters
{
    use ParameterTrait;

    public function __construct(int $id, string $name)
    {
        parent::__construct($id, $name);
    }
}
