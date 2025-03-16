<?php

require_once __DIR__ . "/../entity/Parameters.php";

abstract class ParametersTable
{
    abstract public function get(int $id);

    abstract public function findSearchedBy(array $args): mixed;

    abstract public function findOrderedBy(array $args): mixed;

    abstract public function findLimitedBy(array $args): mixed;

    abstract public function findAll(array $args);
}