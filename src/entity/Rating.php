<?php

require_once __DIR__ . "/Parameters.php";
require_once __DIR__ . "/ParameterTrait.php";

/**
 * Readonly Rating class extending Parameters.
 */
final readonly class Rating extends Parameters
{
    use ParameterTrait;
}
