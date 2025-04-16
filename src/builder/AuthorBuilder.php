<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Author.php";

final class AuthorBuilder extends NamedEntityBuilder
{

    /**
     * @var Author
     */
    protected $obj;

    /**
     * Resets the Author object to a new instance.
     */
    public function reset(): void
    {
        // Initialize a new Author object
        $this->obj = new Author();
    }
}
