<?php

require_once __DIR__ . "/Parameters.php";
require_once __DIR__ . "/ParameterTrait.php";

/**
 * Represents an action with an ID and a name.
 * This class extends the Parameters class and is immutable.
 */
final readonly class Action extends Parameters
{
    use ParameterTrait;

    public function __construct(int $id, string $name)
    {
        parent::__construct($id, $name);
    }
}
