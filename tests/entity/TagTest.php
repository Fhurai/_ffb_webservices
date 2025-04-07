<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Tag.php';

class TagTest extends TestCase
{
    private Tag $tag;

    protected function setUp(): void
    {
        $this->tag = new Tag();
    }

    public function testGettersAndSetters(): void
    {
        // Test inherited properties
        $this->tag->setId(123);
        $this->assertEquals(123, $this->tag->getId());

        $date = new DateTime('now', new DateTimeZone('Europe/Paris'));
        $this->tag->setCreationDate($date);
        $this->assertSame($date, $this->tag->getCreationDate());

        // Test Tag-specific properties
        $this->tag->setDescription('Test description');
        $this->assertEquals('Test description', $this->tag->getDescription());

        $this->tag->setTypeId(5);
        $this->assertEquals(5, $this->tag->getTypeId());
    }

    public function testJsonSerialize(): void
    {
        // Set up test data
        $this->tag->setId(1);
        $this->tag->setName('Test Tag');
        $this->tag->setDescription('Test Description');
        $this->tag->setTypeId(2);
        
        // Manually set dates for consistent testing
        $date = new DateTime('2023-01-01 12:34:56', new DateTimeZone('Europe/Paris'));
        $this->tag->setCreationDate($date);
        $this->tag->setUpdateDate($date);

        // Serialize to array
        $result = $this->tag->jsonSerialize();

        // Verify serialized data
        $this->assertArrayHasKey('id', $result);
        $this->assertArrayHasKey('name', $result);
        $this->assertArrayHasKey('description', $result);
        $this->assertArrayHasKey('type_id', $result);
        $this->assertArrayHasKey('creation_date', $result);
        $this->assertArrayHasKey('update_date', $result);

        $this->assertEquals(1, $result['id']);
        $this->assertEquals('Test Tag', $result['name']);
        $this->assertEquals('Test Description', $result['description']);
        $this->assertEquals(2, $result['type_id']);
        $this->assertEquals($date, $result['creation_date']);
    }

    public function testJsonUnserialize(): void
    {
        // Sample JSON data
        $json = '{
            "id": 123,
            "name": "Unserialized Tag",
            "description": "Test Description",
            "type_id": 5,
            "creation_date": "2023-01-01 12:34:56",
            "update_date": "2023-01-02 13:45:00",
            "delete_date": null,
            "tag_type": {
                "id": 456,
                "name": "Test Type",
                "creation_date": "2023-01-01 00:00:00"
            }
        }';

        // Unserialize the JSON
        $tag = Tag::jsonUnserialize($json);

        // Verify basic properties
        $this->assertInstanceOf(Tag::class, $tag);
        $this->assertEquals(123, $tag->getId());
        $this->assertEquals('Unserialized Tag', $tag->getName());
        $this->assertEquals('Test Description', $tag->getDescription());
        $this->assertEquals(5, $tag->getTypeId());

        // Verify dates
        $this->assertInstanceOf(DateTime::class, $tag->getCreationDate());
        $this->assertEquals(
            '2023-01-01 12:34:56',
            $tag->getCreationDate()->format('Y-m-d H:i:s')
        );

        // Verify association
        $this->assertTrue(property_exists($tag, 'tag_type'));
        $this->assertInstanceOf(TagType::class, $tag->getTagType());
        $this->assertEquals(456, $tag->getTagType()->getId());
    }

    public function testJsonSerializeWithTagType(): void
    {
        // Add tag_type association
        $tagType = new TagType(1, "Genre");
        $this->tag->setTagType($tagType);

        $result = $this->tag->jsonSerialize();
        
        $this->assertArrayHasKey('tag_type', $result);
        $this->assertArrayHasKey('id', $result['tag_type']);
        $this->assertArrayHasKey('name', $result['tag_type']);
    }
}