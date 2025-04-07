<?php

require_once __DIR__ . "/EntityBuilderInterface.php";

/**
 * Interface NamedEntityBuilderInterface
 *
 * This interface extends EntityBuilderInterface and provides a method
 * to set the name of the entity being built.
 */
interface NamedEntityBuilderInterface extends EntityBuilderInterface
{
    /**
     * Set the name of the entity.
     *
     * @param string $name The name to set.
     * @return self
     */
    public function withName(string $name);
}
