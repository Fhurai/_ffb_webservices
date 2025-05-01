<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Fandom.php';

/**
 * Class FandomTest
 *
 * Unit tests for the Fandom entity class.
 */
#[CoversClass(\Fandom::class)]
class FandomTest extends TestCase
{
    /**
     * Tests that the constructor initializes default values.
     */
    public function testConstructorInitializesDefaultValues()
    {
        // Create a new Fandom instance
        $fandom = new Fandom();

        // Assert that the default name is an empty string
        $this->assertSame('', $fandom->getName());

        // Assert that the default ID is 0
        $this->assertEquals(0, $fandom->getId());
    }

    /**
     * Tests the setter and getter for the name property.
     */
    public function testNameSetterAndGetter()
    {
        // Create a new Fandom instance
        $fandom = new Fandom();

        // Set a test name
        $testName = 'Lord of the Rings Fandom';
        $fandom->setName($testName);

        // Assert that the name was set correctly
        $this->assertSame($testName, $fandom->getName());
    }

    /**
     * Tests that JSON serialization contains the required fields.
     */
    public function testJsonSerializationContainsRequiredFields()
    {
        // Create a new Fandom instance and set a name
        $fandom = new Fandom();
        $fandom->setName('Star Wars Universe');

        // Serialize the Fandom object to JSON
        $data = $fandom->jsonSerialize();

        // Assert that the serialized data contains the required fields
        $this->assertArrayHasKey('id', $data);
        $this->assertArrayHasKey('name', $data);

        // Assert that the serialized values match the object's properties
        $this->assertEquals($fandom->getId(), $data['id']);
        $this->assertEquals('Star Wars Universe', $data['name']);
    }

    /**
     * Tests that getNewObject returns a new instance of Fandom.
     */
    public function testGetNewObjectReturnsFandomInstance()
    {
        // Call the static method to get a new Fandom instance
        $fandom = Fandom::getNewObject();

        // Assert that the returned object is an instance of Fandom
        $this->assertInstanceOf(Fandom::class, $fandom);
    }

    /**
     * Tests that name modifications persist correctly.
     */
    public function testNameModificationPersists()
    {
        // Create a new Fandom instance
        $fandom = new Fandom();

        // Set an initial name and assert it was set correctly
        $originalName = 'Initial Name';
        $fandom->setName($originalName);
        $this->assertSame($originalName, $fandom->getName());

        // Modify the name and assert the change persists
        $modifiedName = 'Updated Name';
        $fandom->setName($modifiedName);
        $this->assertSame($modifiedName, $fandom->getName());
    }

    /**
     * Tests the setter and getter for the ID property.
     */
    public function testIdSetterAndGetter()
    {
        // Create a new Fandom instance
        $fandom = new Fandom();

        // Set a test ID
        $testId = 42;
        $fandom->setId($testId);

        // Assert that the ID was set correctly and is an integer
        $this->assertEquals($testId, $fandom->getId());
        $this->assertIsInt($fandom->getId());
    }

    /**
     * Tests JSON serialization when the ID is set.
     */
    public function testJsonSerializationWithSetId()
    {
        // Create a new Fandom instance and set ID and name
        $fandom = new Fandom();
        $testId = 123;
        $fandom->setId($testId);
        $fandom->setName('Test Fandom');

        // Serialize the Fandom object to JSON
        $data = $fandom->jsonSerialize();

        // Assert that the serialized values match the object's properties
        $this->assertEquals($testId, $data['id']);
        $this->assertEquals('Test Fandom', $data['name']);
    }

    /**
     * Tests setting an empty name.
     */
    public function testSetEmptyName()
    {
        // Create a new Fandom instance
        $fandom = new Fandom();

        // Set an empty name
        $fandom->setName('');

        // Assert that the name was set to an empty string
        $this->assertSame('', $fandom->getName());
    }

    /**
     * Tests setting a very long name.
     */
    public function testSetVeryLongName()
    {
        // Create a very long name string
        $longName = str_repeat('a', 255);

        // Create a new Fandom instance and set the long name
        $fandom = new Fandom();
        $fandom->setName($longName);

        // Assert that the name was set correctly
        $this->assertSame($longName, $fandom->getName());
    }

    /**
     * Tests that getNewObject creates a new instance each time.
     */
    public function testGetNewObjectCreatesNewInstanceEachTime()
    {
        // Call the static method twice to get two new Fandom instances
        $fandom1 = Fandom::getNewObject();
        $fandom2 = Fandom::getNewObject();

        // Assert that the two instances are not the same
        $this->assertNotSame($fandom1, $fandom2);
    }
}
