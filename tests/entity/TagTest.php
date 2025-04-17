<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Tag.php';

/**
 * Class TagTest
 *
 * Unit tests for the Tag entity.
 */
#[\PHPUnit\Framework\Attributes\CoversClass(\Parameters::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\SrcUtilities::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Tag::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\TagType::class)]
class TagTest extends TestCase
{
    private const TEST_DESCRIPTION = 'Test Description';

    /**
     * @var Tag The Tag instance being tested.
     */
    private Tag $tag;

    /**
     * Set up the test environment by initializing a Tag instance.
     */
    protected function setUp(): void
    {
        $this->tag = new Tag();
    }

    /**
     * Test the getters and setters of the Tag entity.
     */
    public function testGettersAndSetters(): void
    {
        $this->tag->setId(123);
        $this->assertEquals(123, $this->tag->getId(), "ID getter or setter failed.");

        $date = new DateTime('now', new DateTimeZone('Europe/Paris'));
        $this->tag->setCreationDate($date);
        $this->assertSame($date, $this->tag->getCreationDate(), "Creation date getter or setter failed.");

        $this->tag->setDescription(self::TEST_DESCRIPTION);
        $this->assertEquals(self::TEST_DESCRIPTION, $this->tag->getDescription(), "Description getter or setter failed.");

        $this->tag->setTypeId(5);
        $this->assertEquals(5, $this->tag->getTypeId(), "Type ID getter or setter failed.");
    }

    /**
     * Test the JSON serialization of the Tag entity.
     */
    public function testJsonSerialize(): void
    {
        $this->tag->setId(1);
        $this->tag->setName('Test Tag');
        $this->tag->setDescription(self::TEST_DESCRIPTION);
        $this->tag->setTypeId(2);

        $date = new DateTime('2023-01-01 12:34:56', new DateTimeZone('Europe/Paris'));
        $this->tag->setCreationDate($date);
        $this->tag->setUpdateDate($date);

        $result = $this->tag->jsonSerialize();

        $this->assertArrayHasKey('id', $result);
        $this->assertArrayHasKey('name', $result);
        $this->assertArrayHasKey('description', $result);
        $this->assertArrayHasKey('type_id', $result);
        $this->assertArrayHasKey('creation_date', $result);
        $this->assertArrayHasKey('update_date', $result);

        $this->assertEquals(1, $result['id']);
        $this->assertEquals('Test Tag', $result['name']);
        $this->assertEquals(self::TEST_DESCRIPTION, $result['description']);
        $this->assertEquals(2, $result['type_id']);
        $this->assertEquals($date->format("Y-m-d H:i:s"), $result['creation_date']);
    }

    /**
     * Test the JSON unserialization of the Tag entity.
     */
    public function testJsonUnserialize(): void
    {
        $description = self::TEST_DESCRIPTION;
        $json = <<<JSON
{
    "id": 123,
    "name": "Unserialized Tag",
    "description": "{$description}",
    "type_id": 5,
    "creation_date": "2023-01-01 12:34:56",
    "update_date": "2023-01-02 13:45:00",
    "delete_date": null,
    "tag_type": {
        "id": 456,
        "name": "Test Type",
        "creation_date": "2023-01-01 00:00:00"
    }
}
JSON;

        $tag = Tag::jsonUnserialize($json);

        $this->assertInstanceOf(Tag::class, $tag);
        $this->assertEquals(123, $tag->getId());
        $this->assertEquals('Unserialized Tag', $tag->getName());
        $this->assertEquals(self::TEST_DESCRIPTION, $tag->getDescription());
        $this->assertEquals(5, $tag->getTypeId());

        $this->assertInstanceOf(DateTime::class, $tag->getCreationDate());
        $this->assertEquals(
            '2023-01-01 12:34:56',
            $tag->getCreationDate()->format('Y-m-d H:i:s')
        );

        $this->assertTrue(property_exists($tag, 'tagType'));
        $this->assertInstanceOf(TagType::class, $tag->getTagType());
        $this->assertEquals(456, $tag->getTagType()->getId());
    }

    /**
     * Test JSON serialization of the Tag entity with an associated TagType.
     */
    public function testJsonSerializeWithTagType(): void
    {
        $tagType = new TagType(1, "Genre");
        $this->tag->setTagType($tagType);

        $result = $this->tag->jsonSerialize();

        $this->assertArrayHasKey('tag_type', $result);
        $this->assertEquals(1, $result['tag_type']['id']);
        $this->assertEquals("Genre", $result['tag_type']['name']);
    }

    /**
     * Test the setter and getter for the TagType property.
     */
    public function testSetAndGetTagType(): void
    {
        $tagType = new TagType(1, "Genre");
        $this->tag->setTagType($tagType);

        $this->assertTrue($this->tag->hasTagType());
        $this->assertInstanceOf(TagType::class, $this->tag->getTagType());
        $this->assertEquals(1, $this->tag->getTagType()->getId());
        $this->assertEquals("Genre", $this->tag->getTagType()->getName());
    }
}
