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
        // Call the parent constructor to initialize the id and name properties.
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
        // Return a new instance of the Rating class with the provided id and name.
        return new self($id, $name);
    }
}
