<?php

require_once __DIR__ . "/../../src/entity/Author.php";
require_once __DIR__ . "/../../tests/entity/NamedEntityTest.php";

/**
 * Test class for Author.
 */
class AuthorTest extends NamedEntityTest
{
    /**
     * Test the constructor of Author.
     */
    public function testConstructor()
    {
        $author = new Author();
        $this->assertInstanceOf(Author::class, $author);
    }

    /**
     * Test the creation of a new Author object.
     */
    public function testGetNewObject()
    {
        $author = Author::getNewObject();
        $this->assertInstanceOf(Author::class, $author);
    }
}