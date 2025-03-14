<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Author.php';

class AuthorTest extends TestCase
{
    public function testConstructorInitializesNameAndId()
    {
        $author = new Author();
        $this->assertSame('', $author->getName());
        $this->assertEquals(0, $author->getId());
    }

    public function testSetAndGetName()
    {
        $author = new Author();
        $testName = 'J.R.R. Tolkien';
        $author->setName($testName);
        $this->assertSame($testName, $author->getName());
    }

    public function testJsonSerializeIncludesIdAndName()
    {
        $author = new Author();
        $author->setName('George Orwell');
        $data = $author->jsonSerialize();

        $this->assertArrayHasKey('id', $data);
        $this->assertArrayHasKey('name', $data);
        $this->assertSame($author->getId(), $data['id']);
        $this->assertSame('George Orwell', $data['name']);
    }

    public function testGetNewObjectReturnsAuthorInstance()
    {
        $author = Author::getNewObject();
        $this->assertInstanceOf(Author::class, $author);
    }
}