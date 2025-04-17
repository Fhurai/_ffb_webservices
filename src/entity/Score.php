<?php

require_once __DIR__ . "/Parameters.php";
require_once __DIR__ . "/ParameterTrait.php";

/**
 * Readonly Score class extending Parameters.
 */
final readonly class Score extends Parameters
{
    use ParameterTrait;
}
