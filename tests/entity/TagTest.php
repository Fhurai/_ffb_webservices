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
    /**
     * @var Tag The Tag instance being tested.
     */
    private Tag $tag;

    /**
     * Set up the test environment by initializing a Tag instance.
     */
    protected function setUp(): void
    {
        // Initialize a new Tag instance before each test.
        $this->tag = new Tag();
    }

    /**
     * Test the getters and setters of the Tag entity.
     */
    public function testGettersAndSetters(): void
    {
        // Test setting and getting the ID property.
        $this->tag->setId(123);
        $this->assertEquals(123, $this->tag->getId(), "ID getter or setter failed.");

        // Test setting and getting the creation date.
        $date = new DateTime('now', new DateTimeZone('Europe/Paris'));
        $this->tag->setCreationDate($date);
        $this->assertSame($date, $this->tag->getCreationDate(), "Creation date getter or setter failed.");

        // Test setting and getting the description property.
        $this->tag->setDescription('Test description');
        $this->assertEquals('Test description', $this->tag->getDescription(), "Description getter or setter failed.");

        // Test setting and getting the type ID property.
        $this->tag->setTypeId(5);
        $this->assertEquals(5, $this->tag->getTypeId(), "Type ID getter or setter failed.");
    }

    /**
     * Test the JSON serialization of the Tag entity.
     */
    public function testJsonSerialize(): void
    {
        // Set up test data for the Tag entity.
        $this->tag->setId(1);
        $this->tag->setName('Test Tag');
        $this->tag->setDescription('Test Description');
        $this->tag->setTypeId(2);

        // Set consistent creation and update dates for testing.
        $date = new DateTime('2023-01-01 12:34:56', new DateTimeZone('Europe/Paris'));
        $this->tag->setCreationDate($date);
        $this->tag->setUpdateDate($date);

        // Serialize the Tag entity to an array.
        $result = $this->tag->jsonSerialize();

        // Verify that all expected keys exist in the serialized array.
        $this->assertArrayHasKey('id', $result, "Serialized data missing 'id' key.");
        $this->assertArrayHasKey('name', $result, "Serialized data missing 'name' key.");
        $this->assertArrayHasKey('description', $result, "Serialized data missing 'description' key.");
        $this->assertArrayHasKey('type_id', $result, "Serialized data missing 'type_id' key.");
        $this->assertArrayHasKey('creation_date', $result, "Serialized data missing 'creation_date' key.");
        $this->assertArrayHasKey('update_date', $result, "Serialized data missing 'update_date' key.");

        // Verify the values of the serialized data.
        $this->assertEquals(1, $result['id'], "Serialized 'id' value mismatch.");
        $this->assertEquals('Test Tag', $result['name'], "Serialized 'name' value mismatch.");
        $this->assertEquals('Test Description', $result['description'], "Serialized 'description' value mismatch.");
        $this->assertEquals(2, $result['type_id'], "Serialized 'type_id' value mismatch.");
        $this->assertEquals($date->format("Y-m-d H:i:s"), $result['creation_date'], "Serialized 'creation_date' value mismatch.");
    }

    /**
     * Test the JSON unserialization of the Tag entity.
     */
    public function testJsonUnserialize(): void
    {
        // Define a sample JSON string representing a Tag entity.
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

        // Unserialize the JSON string into a Tag object.
        $tag = Tag::jsonUnserialize($json);

        // Verify the basic properties of the Tag object.
        $this->assertInstanceOf(Tag::class, $tag, "Unserialized object is not an instance of Tag.");
        $this->assertEquals(123, $tag->getId(), "Unserialized 'id' value mismatch.");
        $this->assertEquals('Unserialized Tag', $tag->getName(), "Unserialized 'name' value mismatch.");
        $this->assertEquals('Test Description', $tag->getDescription(), "Unserialized 'description' value mismatch.");
        $this->assertEquals(5, $tag->getTypeId(), "Unserialized 'type_id' value mismatch.");

        // Verify the creation date is correctly unserialized.
        $this->assertInstanceOf(DateTime::class, $tag->getCreationDate(), "Unserialized 'creation_date' is not a DateTime instance.");
        $this->assertEquals(
            '2023-01-01 12:34:56',
            $tag->getCreationDate()->format('Y-m-d H:i:s'),
            "Unserialized 'creation_date' value mismatch."
        );

        // Verify the associated TagType object is correctly unserialized.
        $this->assertTrue(property_exists($tag, 'tag_type'), "Unserialized object missing 'tag_type' property.");
        $this->assertInstanceOf(TagType::class, $tag->getTagType(), "Unserialized 'tag_type' is not an instance of TagType.");
        $this->assertEquals(456, $tag->getTagType()->getId(), "Unserialized 'tag_type.id' value mismatch.");
    }

    /**
     * Test JSON serialization of the Tag entity with an associated TagType.
     */
    public function testJsonSerializeWithTagType(): void
    {
        // Create a TagType object and associate it with the Tag entity.
        $tagType = new TagType(1, "Genre");
        $this->tag->setTagType($tagType);

        // Serialize the Tag entity to an array.
        $result = $this->tag->jsonSerialize();

        // Verify the serialized data includes the associated TagType.
        $this->assertArrayHasKey('tag_type', $result);
        $this->assertEquals(1, $result['tag_type']['id']);
        $this->assertEquals("Genre", $result['tag_type']['name']);
    }

    /**
     * Test the setter and getter for the TagType property.
     */
    public function testSetAndGetTagType(): void
    {
        // Create a TagType object and set it on the Tag entity.
        $tagType = new TagType(1, "Genre");
        $this->tag->setTagType($tagType);

        // Verify the Tag entity has an associated TagType.
        $this->assertTrue($this->tag->hasTagType());
        $this->assertInstanceOf(TagType::class, $this->tag->getTagType());
        $this->assertEquals(1, $this->tag->getTagType()->getId());
        $this->assertEquals("Genre", $this->tag->getTagType()->getName());
    }
}
