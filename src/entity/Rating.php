<?php

require_once __DIR__ . "/Parameters.php";

/**
 * Readonly Rating class extending Parameters.
 */
readonly class Rating extends Parameters
{
    /**
     * Constructor explicitly initializes parent properties.
     * @param int $id   The identifier.
     * @param string $name The name.
     */
    public function __construct(int $id, string $name)
    {
        parent::__construct($id, $name);
    }

    /**
     * Creates a new Rating instance with required parameters.
     * @param int $id   The identifier.
     * @param string $name The name.
     * @return static   New Rating object.
     */
    public static function getNewObject(int $id, string $name): static
    {
        return new self($id, $name);
    }
}
