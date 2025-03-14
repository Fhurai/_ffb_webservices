<?php

require_once __DIR__ . "/Parameters.php";

/**
 * Readonly TagType class extending Parameters
 */
readonly class TagType extends Parameters
{
    /**
     * Constructor explicitly initializes parent properties
     * @param int $id   The identifier
     * @param string $name The name
     */
    public function __construct(int $id, string $name)
    {
        parent::__construct($id, $name);
    }

    /**
     * Creates a new TagType instance with required parameters
     * @param int $id   The identifier
     * @param string $name The name
     * @return static   New TagType object
     */
    public static function getNewObject(int $id, string $name): static
    {
        return new self($id, $name);
    }
}