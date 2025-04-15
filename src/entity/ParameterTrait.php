<?php

trait ParameterTrait {
    /**
     * Creates a new instance of the class with the provided id and name.
     *
     * @param int $id   The unique identifier.
     * @param string $name The name.
     * @return static   A new instance of the class.
     */
    public static function getNewObject(int $id, string $name): static {
        return new self($id, $name);
    }
}
