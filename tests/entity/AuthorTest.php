<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Author.php';

/**
 * PHPUnit test suite for the Author entity class.
 * Validates core functionality including object initialization, property access, serialization,
 * and edge case handling for the Author class and its inherited methods from NamedEntity.
 */
#[CoversClass(Author::class)]
#[CoversClass(NamedEntity::class)]
#[CoversClass(EntityTrait::class)]
#[CoversClass(Entity::class)]
class AuthorTest extends TestCase
{
    /**
     * Tests constructor initialization of default values.
     * - Creates a new Author instance
     * - Asserts that the initial name is an empty string
     * - Asserts that the initial ID is 0
     */
    public function testConstructorInitializesNameAndId()
    {
        $author = new Author();
        $this->assertSame('', $author->getName());
        $this->assertEquals(0, $author->getId());
    }

    /**
     * Tests the name setter/getter workflow.
     * - Sets a sample name via setName()
     * - Verifies the same name is returned via getName()
     */
    public function testSetAndGetName()
    {
        $author = new Author();
        $testName = 'J.R.R. Tolkien';
        $author->setName($testName);
        $this->assertSame($testName, $author->getName());
    }

    /**
     * Validates JSON serialization structure and data integrity.
     * - Sets a predefined name
     * - Serializes the object to an array via jsonSerialize()
     * - Checks for required keys (id, name)
     * - Compares serialized values against object properties
     */
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

    /**
     * Tests the static factory method.
     * - Calls getNewObject() to create an instance
     * - Verifies the returned object is of type Author
     */
    public function testGetNewObjectReturnsAuthorInstance()
    {
        $author = Author::getNewObject();
        $this->assertInstanceOf(Author::class, $author);
    }

    // --------------------------------------------------
    // Enhanced Test Cases (Added Later)
    // --------------------------------------------------

    /**
     * Tests ID setter/getter functionality inherited from NamedEntity.
     * - Sets a numeric ID via setId()
     * - Confirms the same ID is retrieved via getId()
     */
    public function testSetAndGetId()
    {
        $author = new Author();
        $author->setId(123);
        $this->assertEquals(123, $author->getId());
    }

    /**
     * Validates JSON serialization with explicit ID and name values.
     * - Explicitly sets both ID and name
     * - Checks if serialized data matches the explicitly set values
     */
    public function testJsonSerializeIncludesCustomIdAndName()
    {
        $author = new Author();
        $author->setId(10);
        $author->setName('Agatha Christie');
        $data = $author->jsonSerialize();

        $this->assertEquals(10, $data['id']);
        $this->assertEquals('Agatha Christie', $data['name']);
    }

    /**
     * Ensures factory method creates unique instances.
     * - Creates two instances via getNewObject()
     * - Verifies they are not the same object in memory
     */
    public function testGetNewObjectReturnsNewInstanceEachTime()
    {
        $author1 = Author::getNewObject();
        $author2 = Author::getNewObject();
        $this->assertNotSame($author1, $author2);
    }

    /**
     * Tests edge case: Empty name assignment.
     * - Sets an empty string as the name
     * - Confirms the empty string is stored correctly
     */
    public function testSetNameWithEmptyString()
    {
        $author = new Author();
        $author->setName('');
        $this->assertSame('', $author->getName());
    }

    /**
     * Tests edge case: Non-ASCII characters in names.
     * - Sets a name with special UTF-8 characters
     * - Verifies the name is stored without corruption
     */
    public function testSetNameWithSpecialCharacters()
    {
        $name = 'Mária Žäť-Černý';
        $author = new Author();
        $author->setName($name);
        $this->assertSame($name, $author->getName());
    }

    /**
     * Tests edge case: Extremely long name strings.
     * - Generates a 1000-character name
     * - Validates the full string is stored correctly
     */
    public function testSetNameWithVeryLongString()
    {
        $longName = str_repeat('a', 1000);
        $author = new Author();
        $author->setName($longName);
        $this->assertSame($longName, $author->getName());
    }
}
