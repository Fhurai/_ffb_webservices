<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Fandom.php";

/**
 * FandomBuilder is responsible for constructing and resetting instances of the Fandom entity.
 * It extends the NamedEntityBuilder to inherit common functionality for named entities.
 */
final class FandomBuilder extends NamedEntityBuilder
{

    /**
     * @var Fandom The Fandom object being built.
     */
    protected $obj;

    /**
     * Resets the Fandom object to a new instance.
     * This method ensures that the builder starts with a fresh Fandom object.
     */
    public function reset(): void
    {
        // Initialize a new Fandom object
        $this->obj = new Fandom();
    }
}
