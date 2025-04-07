<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Relation.php';

class RelationTest extends TestCase
{
    private Relation $relation;

    protected function setUp(): void
    {
        $this->relation = new Relation();
    }

    public function testInheritedProperties(): void
    {
        // Test inherited properties from Entity
        $this->relation->setId(123);
        $this->assertEquals(123, $this->relation->getId());

        $date = new DateTime('now', new DateTimeZone('Europe/Paris'));
        $this->relation->setCreationDate($date);
        $this->assertSame($date, $this->relation->getCreationDate());

        // Test inherited properties from NamedEntity
        $this->relation->setName('Test Relation');
        $this->assertEquals('Test Relation', $this->relation->getName());
    }

    public function testJsonSerialization(): void
    {
        // Setup basic data
        $this->relation->setId(1);
        $this->relation->setName('Test Relationship');
        
        // Set dates for consistent testing
        $date = new DateTime('2023-01-01 12:34:56', new DateTimeZone('Europe/Paris'));
        $this->relation->setCreationDate($date);
        $this->relation->setUpdateDate($date);

        // Serialize without characters
        $result = $this->relation->jsonSerialize();
        $this->assertArrayHasKey('characters', $result);
        $this->assertEmpty($result['characters']);

        // Add characters association
        $character = new Character();
        $character->setId(456);
        $this->relation->setCharacters([$character]);

        // Serialize with characters
        $resultWithChars = $this->relation->jsonSerialize();
        $this->assertArrayHasKey('characters', $resultWithChars);
        $this->assertCount(1, $resultWithChars['characters']);
        $this->assertInstanceOf(Character::class, $resultWithChars['characters'][0]);
    }

    public function testJsonUnserialization(): void
    {
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

        $relation = Relation::jsonUnserialize($json);

        // Verify basic properties
        $this->assertInstanceOf(Relation::class, $relation);
        $this->assertEquals(789, $relation->getId());
        $this->assertEquals('Lover-lover Relationship', $relation->getName());

        // Verify date parsing
        $this->assertEquals(
            '2023-05-01 09:30:00',
            $relation->getCreationDate()->format('Y-m-d H:i:s')
        );
        $this->assertEquals(
            'Europe/Paris',
            $relation->getCreationDate()->getTimezone()->getName()
        );

        // Verify characters association
        $this->assertTrue(property_exists($relation, 'characters'));
        $this->assertIsArray($relation->characters);
        $this->assertCount(2, $relation->characters);
        $this->assertInstanceOf(Character::class, $relation->characters[0]);
        $this->assertEquals(101, $relation->characters[0]->getId());
    }

    public function testEmptyRelation(): void
    {
        $json = '{}';
        $relation = Relation::jsonUnserialize($json);
        
        $this->assertInstanceOf(Relation::class, $relation);
        $this->assertEquals(0, $relation->getId());
        $this->assertEquals('', $relation->getName());
        $this->assertInstanceOf(DateTime::class, $relation->getCreationDate());
    }
}