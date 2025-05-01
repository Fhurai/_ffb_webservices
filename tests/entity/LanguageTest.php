<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Language.php'; // Include the Language class for testing

/**
 * Unit tests for the Language class.
 */
#[CoversClass(\Language::class)]
class LanguageTest extends TestCase
{
    /**
     * Tests that the constructor initializes default values.
     */
    public function testConstructorInitializesDefaultValues()
    {
        $language = new Language(); // Create a new Language instance
        $this->assertSame('', $language->getName()); // Assert default name is an empty string
        $this->assertSame('', $language->getAbbreviation()); // Assert default abbreviation is an empty string
        $this->assertEquals(0, $language->getId()); // Assert default ID is 0
    }

    /**
     * Tests the getter and setter for the name property.
     */
    public function testNameSetterAndGetter()
    {
        $language = new Language(); // Create a new Language instance
        $testName = 'English'; // Define a test name
        $language->setName($testName); // Set the name property
        $this->assertSame($testName, $language->getName()); // Assert the getter returns the correct name
    }

    /**
     * Tests the getter and setter for the abbreviation property.
     */
    public function testAbbreviationSetterAndGetter()
    {
        $language = new Language(); // Create a new Language instance
        $testAbbrev = 'EN'; // Define a test abbreviation
        $language->setAbbreviation($testAbbrev); // Set the abbreviation property
        $this->assertSame($testAbbrev, $language->getAbbreviation()); // Assert the getter returns the correct abbreviation
    }

    /**
     * Tests that jsonSerialize includes all properties.
     */
    public function testJsonSerializationContainsAllProperties()
    {
        $language = new Language(); // Create a new Language instance
        $language->setName('Spanish'); // Set the name property
        $language->setAbbreviation('ES'); // Set the abbreviation property
        $data = $language->jsonSerialize(); // Serialize the object to JSON

        $this->assertArrayHasKey('id', $data); // Assert the serialized data contains the 'id' key
        $this->assertArrayHasKey('name', $data); // Assert the serialized data contains the 'name' key
        $this->assertArrayHasKey('abbreviation', $data); // Assert the serialized data contains the 'abbreviation' key
        $this->assertEquals('Spanish', $data['name']); // Assert the name value is correct
        $this->assertEquals('ES', $data['abbreviation']); // Assert the abbreviation value is correct
    }

    /**
     * Tests that getNewObject returns a new Language instance.
     */
    public function testGetNewObjectReturnsLanguageInstance()
    {
        $language = Language::getNewObject(); // Call the static method to get a new instance
        $this->assertInstanceOf(Language::class, $language); // Assert the returned object is an instance of Language
    }

    /**
     * Tests the sequence of property modifications.
     */
    public function testPropertyModificationSequence()
    {
        $language = new Language(); // Create a new Language instance

        // Test initial empty values
        $this->assertSame('', $language->getName()); // Assert default name is empty
        $this->assertSame('', $language->getAbbreviation()); // Assert default abbreviation is empty

        // Set first values
        $language->setName('French'); // Set the name to 'French'
        $language->setAbbreviation('FR'); // Set the abbreviation to 'FR'
        $this->assertSame('French', $language->getName()); // Assert the name is updated
        $this->assertSame('FR', $language->getAbbreviation()); // Assert the abbreviation is updated

        // Update values
        $language->setName('German'); // Update the name to 'German'
        $language->setAbbreviation('DE'); // Update the abbreviation to 'DE'
        $this->assertSame('German', $language->getName()); // Assert the name is updated
        $this->assertSame('DE', $language->getAbbreviation()); // Assert the abbreviation is updated
    }

    /**
     * Tests handling of special characters in name and abbreviation.
     */
    public function testSpecialCharactersHandling()
    {
        $language = new Language(); // Create a new Language instance
        $complexName = 'Português (Brasil)'; // Define a name with special characters
        $complexAbbrev = 'PT-BR'; // Define an abbreviation with special characters

        $language->setName($complexName); // Set the name property
        $language->setAbbreviation($complexAbbrev); // Set the abbreviation property

        $this->assertSame($complexName, $language->getName()); // Assert the name is correctly set
        $this->assertSame($complexAbbrev, $language->getAbbreviation()); // Assert the abbreviation is correctly set
    }
}
