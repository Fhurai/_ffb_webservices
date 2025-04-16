<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Fandom.php";

class FandomBuilder extends NamedEntityBuilder
{

    /**
     * @var Fandom
     */
    protected $obj;

    /**
     * Resets the Fandom object to a new instance.
     */
    public function reset(): void
    {
        // Initialize a new Fandom object
        $this->obj = new Fandom();
    }
}
