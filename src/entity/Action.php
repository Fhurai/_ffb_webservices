<?php

require_once __DIR__ . "/Parameters.php";

/**
 * Represents an action with an ID and a name.
 * This class extends the Parameters class and is immutable.
 */
readonly class Action extends Parameters
{
    /**
     * Initializes a new instance of the Action class.
     *
     * @param int $id   The unique identifier for the action.
     * @param string $name The name of the action.
     */
    public function __construct(int $id, string $name)
    {
        parent::__construct($id, $name);
    }

    /**
     * Creates and returns a new Action instance.
     *
     * @param int $id   The unique identifier for the action.
     * @param string $name The name of the action.
     * @return static   A new instance of the Action class.
     */
    public static function getNewObject(int $id, string $name): static
    {
        return new self($id, $name);
    }
}
