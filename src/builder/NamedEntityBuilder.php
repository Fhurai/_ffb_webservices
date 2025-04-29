<?php

require_once __DIR__ . "/EntityBuilder.php";

abstract class NamedEntityBuilder extends EntityBuilder
{
    /**
     * Sets the name of the entity being built.
     *
     * @param  ?string $name The name to set for the entity.
     * @return static Returns the current builder instance for method chaining.
     */
    public function withName(?string $name): static
    {
        if($name === null) {
            throw new FfbException("Name cannot be null.");
        }
        // Set the name of the entity
        $this->obj->setName($name);
        return $this;
    }
}
