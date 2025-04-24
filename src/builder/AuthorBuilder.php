<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Author.php";

/**
 * AuthorBuilder is responsible for constructing and resetting Author objects.
 * It extends the NamedEntityBuilder to inherit common builder functionalities.
 */
final class AuthorBuilder extends NamedEntityBuilder
{
    /**
     * @var Author The Author object being built.
     */
    protected $obj;

    /**
     * Resets the Author object to a new instance.
     * This ensures the builder starts with a fresh Author object.
     */
    public function reset(): void
    {
        // Initialize a new Author object
        $this->obj = new Author();
    }
}
