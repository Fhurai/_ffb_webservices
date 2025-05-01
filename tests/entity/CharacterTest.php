<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Character.php';

/**
 * PHPUnit test suite for the Character entity.
 * Validates core functionality including getters/setters, JSON serialization, and associations.
 */
#[CoversClass(\Character::class)]
#[CoversClass(\SrcUtilities::class)]
class CharacterTest extends TestCase
{
    private Character $character;

    private const TEST_CHARACTER_NAME = 'Test Character';
    private const DATE_FORMAT = 'Y-m-d H:i:s';

    /**
     * Initialize a fresh Character instance before each test.
     * Ensures test isolation.
     */
    protected function setUp(): void
    {
        $this->character = new Character();
    }

    /**
     * Tests getters and setters for both inherited and Character-specific properties.
     * - Verifies initial default value of `fandom_id` (-1).
     * - Validates ID, name, and fandom_id assignment/retrieval.
     */
    public function testGettersAndSetters(): void
    {
        $this->assertEquals(-1, $this->character->getFandomId());

        $this->character->setId(123);
        $this->assertEquals(123, $this->character->getId());

        $this->character->setName(self::TEST_CHARACTER_NAME);
        $this->assertEquals(self::TEST_CHARACTER_NAME, $this->character->getName());

        $this->character->setFandomId(5);
        $this->assertEquals(5, $this->character->getFandomId());
    }

    /**
     * Tests the `hasFandom()` method.
     * - Confirms fandom is not loaded initially.
     * - Validates fandom presence after setting it.
     */
    public function testHasFandom(): void
    {
        $this->assertFalse($this->character->hasFandom());
        $this->character->setFandom(new Fandom());
        $this->assertTrue($this->character->hasFandom());
    }

    /**
     * Tests setting fandom using an array input.
     * - Converts the array to a Fandom object internally.
     * - Verifies the converted Fandom's properties.
     */
    public function testSetFandomWithArray(): void
    {
        $fandomData = ['id' => 789, 'name' => 'Array Fandom'];
        $this->character->setFandom($fandomData);

        $this->assertTrue($this->character->hasFandom());
        $this->assertEquals(789, $this->character->getFandom()->getId());
        $this->assertEquals('Array Fandom', $this->character->getFandom()->getName());
    }

    /**
     * Tests exception handling when accessing an unloaded fandom.
     * - Expects a RuntimeException if `getFandom()` is called without loading the fandom first.
     */
    public function testGetFandomThrowsExceptionWhenNotLoaded(): void
    {
        $this->expectException(\RuntimeException::class);
        $this->expectExceptionMessage('Fandom is not loaded. Use hasFandom() to check first.');
        $this->character->getFandom();
    }

    /**
     * Tests JSON serialization of the Character entity.
     * - Validates the structure of the serialized output.
     * - Checks inclusion of core fields (id, name, fandom_id, dates).
     */
    public function testJsonSerialize(): void
    {
        $this->character->setId(1);
        $this->character->setName(self::TEST_CHARACTER_NAME);
        $this->character->setFandomId(2);

        $date = new DateTime('2023-01-01 12:34:56', new DateTimeZone('Europe/Paris'));
        $this->character->setCreationDate($date);
        $this->character->setUpdateDate($date);

        $result = $this->character->jsonSerialize();

        $this->assertArrayHasKey('id', $result);
        $this->assertArrayHasKey('name', $result);
        $this->assertArrayHasKey('fandom_id', $result);
        $this->assertArrayHasKey('creation_date', $result);
        $this->assertArrayHasKey('update_date', $result);

        $this->assertEquals(1, $result['id']);
        $this->assertEquals(self::TEST_CHARACTER_NAME, $result['name']);
        $this->assertEquals(2, $result['fandom_id']);
        $this->assertEquals($date->format(self::DATE_FORMAT), $result['creation_date']);
    }

    /**
     * Tests JSON serialization when no fandom is associated.
     * - Ensures the `fandom` key is absent in the output.
     */
    public function testJsonSerializeWithoutFandom(): void
    {
        $result = $this->character->jsonSerialize();
        $this->assertArrayNotHasKey('fandom', $result);
    }

    /**
     * Tests JSON serialization with an associated Fandom.
     * - Validates inclusion of the `fandom` key and its object type.
     */
    public function testJsonSerializeWithFandom(): void
    {
        $fandom = new Fandom();
        $fandom->setId(456);
        $fandom->setName('Test Fandom');
        $this->character->setFandom($fandom);

        $result = $this->character->jsonSerialize();

        $this->assertArrayHasKey('fandom', $result);
        $this->assertInstanceOf(Fandom::class, $result['fandom']);
        $this->assertEquals(456, $result['fandom']->getId());
    }

    /**
     * Tests JSON unserialization into a Character object.
     * - Parses a JSON string into a Character instance.
     * - Validates property mapping, date parsing, and fandom association.
     */
    public function testJsonUnserialize(): void
    {
        $json = '{
            "id": 123,
            "name": "Unserialized Character",
            "fandom_id": 5,
            "creation_date": "2023-01-01 12:34:56",
            "update_date": "2023-01-02 13:45:00",
            "fandom": {
                "id": 456,
                "name": "Test Fandom",
                "creation_date": "2023-01-01 00:00:00"
            }
        }';

        $character = Character::jsonUnserialize($json);

        $this->assertEquals(123, $character->getId());
        $this->assertEquals('Unserialized Character', $character->getName());
        $this->assertEquals(5, $character->getFandomId());
        $this->assertEquals(
            '2023-01-01 12:34:56',
            $character->getCreationDate()->format(self::DATE_FORMAT)
        );

        $this->assertTrue($character->hasFandom());
        $this->assertEquals(456, $character->getFandom()->getId());
    }

    /**
     * Tests DateTime parsing and timezone handling.
     * - Ensures dates are parsed with the correct timezone (Europe/Paris).
     */
    public function testDateTimeHandling(): void
    {
        $json = '{
            "creation_date": "2023-12-31 23:59:59",
            "update_date": "2024-01-01 00:00:01"
        }';

        $character = Character::jsonUnserialize($json);

        $this->assertEquals(
            '2023-12-31 23:59:59',
            $character->getCreationDate()->format(self::DATE_FORMAT)
        );
        $this->assertEquals(
            'Europe/Paris',
            $character->getCreationDate()->getTimezone()->getName()
        );
    }

    /**
     * Tests the factory method `getNewObject()`.
     * - Validates that it returns a new Character instance with default values.
     */
    public function testGetNewObject(): void
    {
        $newCharacter = Character::getNewObject();
        $this->assertInstanceOf(Character::class, $newCharacter);
        $this->assertEquals(-1, $newCharacter->getFandomId());
    }
}
