<?php

require_once __DIR__ . "/../../src/entity/ComplexEntity.php";
require_once __DIR__ . "/../../src/entity/EvaluableTrait.php";

/**
 * Trait for handling lazy-loaded associations.
 */
trait LazyAssociationTrait
{
    protected function getRequiredAssociation(?object $association, string $name): object
    {
        if (!$association) {
            throw new \OutOfBoundsException("$name is not loaded. Use has" . ucfirst($name) . "() to check first.");
        }
        return $association;
    }

    protected function setAssociation(string $class, object|array $value): object
    {
        return is_array($value) ? $class::jsonUnserialize(json_encode($value)) : $value;
    }

    protected function setArrayAssociation(array $values, string $class): array
    {
        return array_map(fn($v) => is_array($v) ? $class::jsonUnserialize(json_encode($v)) : $v, $values);
    }

    protected function getNullableArrayAssociation(?array $association, string $name): array
    {
        if ($association === null) {
            throw new \OutOfBoundsException("$name is not loaded. Use has" . ucfirst($name) . "() to check first.");
        }
        return $association;
    }
}
