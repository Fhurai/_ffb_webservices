<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Character.php';

class CharacterTest extends TestCase
{
    private Character $character;

    protected function setUp(): void
    {
        $this->character = new Character();
    }

    public function testGettersAndSetters(): void
    {
        // Test inherited properties
        $this->character->setId(123);
        $this->assertEquals(123, $this->character->getId());

        $this->character->setName('Test Character');
        $this->assertEquals('Test Character', $this->character->getName());

        // Test Character-specific properties
        $this->character->setFandomId(5);
        $this->assertEquals(5, $this->character->getFandomId());
    }

    public function testJsonSerialize(): void
    {
        // Set up test data
        $this->character->setId(1);
        $this->character->setName('Test Character');
        $this->character->setFandomId(2);
        
        // Manually set dates for consistent testing
        $date = new DateTime('2023-01-01 12:34:56', new DateTimeZone('Europe/Paris'));
        $this->character->setCreationDate($date);
        $this->character->setUpdateDate($date);

        // Serialize to array
        $result = $this->character->jsonSerialize();

        // Verify serialized data
        $this->assertArrayHasKey('id', $result);
        $this->assertArrayHasKey('name', $result);
        $this->assertArrayHasKey('fandom_id', $result);
        $this->assertArrayHasKey('creation_date', $result);
        $this->assertArrayHasKey('update_date', $result);

        $this->assertEquals(1, $result['id']);
        $this->assertEquals('Test Character', $result['name']);
        $this->assertEquals(2, $result['fandom_id']);
        $this->assertEquals($date, $result['creation_date']);
    }

    public function testJsonUnserialize(): void
    {
        // Sample JSON data
        $json = '{
            "id": 123,
            "name": "Unserialized Character",
            "fandom_id": 5,
            "creation_date": "2023-01-01 12:34:56",
            "update_date": "2023-01-02 13:45:00",
            "delete_date": null,
            "fandom": {
                "id": 456,
                "name": "Test Fandom",
                "creation_date": "2023-01-01 00:00:00"
            }
        }';

        // Unserialize the JSON
        $character = Character::jsonUnserialize($json);

        // Verify basic properties
        $this->assertInstanceOf(Character::class, $character);
        $this->assertEquals(123, $character->getId());
        $this->assertEquals('Unserialized Character', $character->getName());
        $this->assertEquals(5, $character->getFandomId());

        // Verify dates
        $this->assertInstanceOf(DateTime::class, $character->getCreationDate());
        $this->assertEquals(
            '2023-01-01 12:34:56',
            $character->getCreationDate()->format('Y-m-d H:i:s')
        );

        // Verify association
        $this->assertTrue(property_exists($character, 'fandom'));
        $this->assertInstanceOf(Fandom::class, $character->getFandom());
        $this->assertEquals(456, $character->getFandom()->getId());
    }

    public function testJsonSerializeWithFandom(): void
    {
        // Add fandom association
        $fandom = new Fandom();
        $fandom->setId(456);
        $fandom->setName('Test Fandom');
        $this->character->setFandom($fandom);

        $result = $this->character->jsonSerialize();
        
        $this->assertArrayHasKey('fandom', $result);
        $this->assertInstanceOf(Fandom::class, $result['fandom']);
        $this->assertEquals(456, $result['fandom']->getId());
    }

    public function testDateTimeHandling(): void
    {
        $json = '{
            "creation_date": "2023-12-31 23:59:59",
            "update_date": "2024-01-01 00:00:01"
        }';

        $character = Character::jsonUnserialize($json);
        
        $this->assertEquals(
            '2023-12-31 23:59:59',
            $character->getCreationDate()->format('Y-m-d H:i:s')
        );
        $this->assertEquals(
            'Europe/Paris',
            $character->getCreationDate()->getTimezone()->getName()
        );
    }
}