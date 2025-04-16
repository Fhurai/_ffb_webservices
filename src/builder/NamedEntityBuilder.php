<?php

require_once __DIR__ . "/EntityBuilder.php";

abstract class NamedEntityBuilder extends EntityBuilder
{
    public function withName(string $name): static
    {
        // Set the name of the author
        $this->obj->setName($name);
        return $this;
    }
}
