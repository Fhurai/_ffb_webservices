<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Relation.php';

/**
 * Unit tests for the Relation class.
 */
#[CoversClass(\Character::class)]
#[CoversClass(\Fanfiction::class)]
#[CoversClass(\SrcUtilities::class)]
#[CoversClass(\Relation::class)]
class RelationTest extends TestCase
{
    private const TIMEZONE = 'Europe/Paris';

    /**
     * @var Relation The Relation instance being tested.
     */
    private Relation $relation;

    /**
     * Sets up the test environment by initializing a Relation instance.
     */
    protected function setUp(): void
    {
        // Create a new Relation instance before each test
        $this->relation = new Relation();
    }

    /**
     * Tests the inherited properties from Entity and NamedEntity.
     */
    public function testInheritedProperties(): void
    {
        // Test setting and getting the ID (inherited from Entity)
        $this->relation->setId(123);
        $this->assertEquals(123, $this->relation->getId());

        // Test setting and getting the creation date (inherited from Entity)
        $date = new DateTime('now', new DateTimeZone(self::TIMEZONE));
        $this->relation->setCreationDate($date);
        $this->assertSame($date, $this->relation->getCreationDate());

        // Test setting and getting the name (inherited from NamedEntity)
        $this->relation->setName('Test Relation');
        $this->assertEquals('Test Relation', $this->relation->getName());
    }

    /**
     * Tests the JSON serialization of a Relation instance.
     */
    public function testJsonSerialization(): void
    {
        // Set basic properties for the Relation
        $this->relation->setId(1);
        $this->relation->setName('Test Relationship');

        // Set consistent creation and update dates for testing
        $date = new DateTime('2023-01-01 12:34:56', new DateTimeZone(self::TIMEZONE));
        $this->relation->setCreationDate($date);
        $this->relation->setUpdateDate($date);

        // Test serialization when no characters are associated
        $result = $this->relation->jsonSerialize();
        $this->assertArrayHasKey('characters', $result);
        $this->assertEmpty($result['characters']);

        // Add a character to the Relation and test serialization again
        $character = new Character();
        $character->setId(456);
        $this->relation->setCharacters([$character]);

        $resultWithChars = $this->relation->jsonSerialize();
        $this->assertArrayHasKey('characters', $resultWithChars);
        $this->assertCount(1, $resultWithChars['characters']);
        $this->assertInstanceOf(Character::class, $resultWithChars['characters'][0]);
    }

    /**
     * Tests the JSON unserialization of a Relation instance.
     */
    public function testJsonUnserialization(): void
    {
        // JSON string representing a Relation with associated characters
        $json = '{
            "id": 789,
            "name": "Lover-lover Relationship",
            "creation_date": "2023-05-01 09:30:00",
            "update_date": "2023-05-02 10:00:00",
            "characters": [
                {
                    "id": 101,
                    "name": "Main Character",
                    "creation_date": "2023-01-01 00:00:00"
                },
                {
                    "id": 102,
                    "name": "Supporting Character",
                    "creation_date": "2023-01-02 00:00:00"
                }
            ]
        }';

        // Unserialize the JSON into a Relation object
        $relation = Relation::jsonUnserialize($json);

        // Verify basic properties of the Relation
        $this->assertInstanceOf(Relation::class, $relation);
        $this->assertEquals(789, $relation->getId());
        $this->assertEquals('Main Character / Supporting Character', $relation->getName());

        // Verify that the creation date is parsed correctly
        $this->assertEquals(
            '2023-05-01 09:30:00',
            $relation->getCreationDate()->format('Y-m-d H:i:s')
        );
        $this->assertEquals(
            self::TIMEZONE,
            $relation->getCreationDate()->getTimezone()->getName()
        );

        // Verify that characters are correctly associated
        $this->assertTrue(property_exists($relation, 'characters'));
        $this->assertIsArray($relation->characters);
        $this->assertCount(2, $relation->characters);
        $this->assertInstanceOf(Character::class, $relation->characters[0]);
        $this->assertEquals(101, $relation->characters[0]->getId());
    }

    /**
     * Tests the behavior of an empty Relation instance.
     */
    public function testEmptyRelation(): void
    {
        // JSON string representing an empty Relation
        $json = '{}';

        // Unserialize the JSON into a Relation object
        $relation = Relation::jsonUnserialize($json);

        // Verify default properties of the empty Relation
        $this->assertInstanceOf(Relation::class, $relation);
        $this->assertEquals(0, $relation->getId());
        $this->assertEquals('', $relation->getName());
        $this->assertInstanceOf(DateTime::class, $relation->getCreationDate());
    }

    /**
     * Tests setting characters with an empty array.
     */
    public function testSetCharactersWithEmptyArray(): void
    {
        // Set an empty array of characters
        $this->relation->setCharacters([]);
        $this->assertFalse($this->relation->hasCharacters());
    }

    /**
     * Tests setting characters with valid Character objects.
     */
    public function testSetCharactersWithValidCharacterObjects(): void
    {
        // Create two Character objects
        $character1 = new Character();
        $character1->setId(1);
        $character2 = new Character();
        $character2->setId(2);

        // Set the characters in the Relation
        $this->relation->setCharacters([$character1, $character2]);

        // Verify that the characters are correctly set
        $this->assertTrue($this->relation->hasCharacters());
        $this->assertCount(2, $this->relation->getCharacters());
        $this->assertEquals(1, $this->relation->getCharacters()[0]->getId());
        $this->assertEquals(2, $this->relation->getCharacters()[1]->getId());
    }

    /**
     * Tests setting characters with mixed input (arrays and Character objects).
     */
    public function testSetCharactersWithMixedInput(): void
    {
        // Create a mixed array of character data
        $characterArray = [
            ["id" => 3, "name" => "Character 3"], // Array representation
            new Character() // Character object
        ];
        $characterArray[1]->setId(4);

        // Set the characters in the Relation
        $this->relation->setCharacters($characterArray);

        // Verify that the characters are correctly set
        $this->assertTrue($this->relation->hasCharacters());
        $this->assertCount(2, $this->relation->getCharacters());
        $this->assertEquals(3, $this->relation->getCharacters()[0]->getId());
        $this->assertEquals(4, $this->relation->getCharacters()[1]->getId());
    }

    /**
     * Tests that accessing characters without loading them throws an exception.
     */
    public function testSetCharactersThrowsExceptionWhenAccessingUnloadedCharacters(): void
    {
        // Expect a RuntimeException when trying to access unloaded characters
        $this->expectException(\RuntimeException::class);
        $this->relation->getCharacters();
    }
}
