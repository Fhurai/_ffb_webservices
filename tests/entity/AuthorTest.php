<?php

require_once __DIR__ . "/../../src/entity/Author.php";
require_once __DIR__ . "/../../tests/entity/NamedEntityTest.php";

/**
 * Test class for Author.
 */
class AuthorTest extends NamedEntityTest
{
    protected function setUp(): void
    {
        $this->namedEntity = new Author();
    }
    /**
     * Test the constructor of Author.
     */
    public function testConstructor()
    {
        $this->assertInstanceOf(Author::class, $this->namedEntity);
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