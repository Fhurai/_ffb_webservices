<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/builder/TagBuilder.php';
require_once __DIR__ . '/../../src/table/TagsTable.php';
require_once __DIR__ . '/../../src/entity/Tag.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

/**
 * Class TagsTableTest
 * 
 * This class contains unit tests for the TagsTable class, which handles operations
 * related to the "tags" table in the database. It tests methods for retrieving,
 * searching, ordering, creating, updating, deleting, and restoring tags.
 */
class TagsTableTest extends TestCase
{
    private TagsTable $tagsTable;

    /**
     * Sets up the TagsTable instance for testing.
     */
    protected function setUp(): void
    {
        // Initialize the TagsTable instance with test parameters.
        $this->tagsTable = new TagsTable("tests", "user");
    }

    /**
     * Tests retrieving a tag by a valid ID.
     */
    public function testGetValidId(): void
    {
        // Retrieve a tag by a valid ID and verify its properties.
        $result = $this->tagsTable->get(1);
        $this->assertInstanceOf(Tag::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Romance", $result->getName());
        $this->assertEquals("Story is about or mentions bit of romance between two or more characters.", $result->getDescription());
        $this->assertEquals(1, $result->getTypeId());
        $this->assertEquals("Genre", $result->getTagType()->getName());
    }

    /**
     * Tests retrieving a tag by an invalid ID.
     */
    public function testGetInvalidId(): void
    {
        // Expect an exception when trying to retrieve a tag with an invalid ID.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->tagsTable->get(999);
    }

    /**
     * Tests retrieving a tag with a non-integer ID.
     */
    public function testGetNonIntegerId(): void
    {
        // Expect a TypeError when providing a non-integer ID.
        $this->expectException(TypeError::class);
        $this->tagsTable->get("invalid_id");
    }

    /**
     * Tests searching for tags by valid criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        // Search for tags using valid criteria and verify the results.
        $result = $this->tagsTable->findSearchedBy(['name' => 'Harem%']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Tag::class, $result[0]);
    }

    /**
     * Tests searching for tags by invalid criteria.
     */
    public function testFindSearchedByInvalidCriteria(): void
    {
        // Expect an exception when searching with invalid criteria.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->tagsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    /**
     * Tests ordering tags by valid criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        // Order tags by valid criteria and verify the results.
        $result = $this->tagsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(34, $result);
        $this->assertEquals("Adventure", $result[0]->getName());
        $this->assertEquals("Story is about or mentions bit of aventure with rather violent actions.", $result[0]->getDescription());
        $this->assertEquals("Genre", $result[0]->getTagType()->getName());
    }

    /**
     * Tests limiting the number of tags retrieved by valid criteria.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        // Limit the number of tags retrieved and verify the results.
        $result = $this->tagsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Tests retrieving all tags with specific criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        // Retrieve all tags with specific criteria and verify the results.
        $result = $this->tagsTable->findAll([
            'search' => ['name' => 'Dragon%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
    }

    /**
     * Tests retrieving all tags when no results are found.
     */
    public function testFindAllNoResults(): void
    {
        // Expect an exception when no results are found for the given criteria.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->tagsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    /**
     * Tests creating a new tag with valid data.
     */
    public function testCreateValid(): void
    {
        // Create a new tag with valid data and verify its properties.
        $tag = (new TagBuilder())
            ->withName("NewTag")
            ->withDescription("A new tag description")
            ->withTypeId(1)
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdTag = $this->tagsTable->create($tag);

        $this->assertInstanceOf(Tag::class, $createdTag);
        $this->assertNotNull($createdTag->getId());
        $this->assertEquals("NewTag", $createdTag->getName());
    }

    /**
     * Tests updating an existing tag with valid data.
     */
    public function testUpdateValid(): void
    {
        // Update an existing tag with valid data and verify the changes.
        $tag = $this->tagsTable->findSearchedBy(["name" => "NewTag"])[0];
        $tag->setName("UpdatedTag");
        $tag->setUpdateDate(new DateTime());

        $updatedTag = $this->tagsTable->update($tag);

        $this->assertInstanceOf(Tag::class, $updatedTag);
        $this->assertEquals("UpdatedTag", $updatedTag->getName());
    }

    /**
     * Tests deleting a tag by a valid ID.
     */
    public function testDeleteValidId(): void
    {
        // Delete a tag by a valid ID and verify the operation.
        $tag = $this->tagsTable->findSearchedBy(["name" => "UpdatedTag"])[0];
        $result = $this->tagsTable->delete($tag->getId());

        $this->assertTrue($result);
    }

    /**
     * Tests restoring a previously deleted tag by a valid ID.
     */
    public function testRestoreValidId(): void
    {
        // Restore a previously deleted tag by a valid ID and verify the operation.
        $tag = $this->tagsTable->findSearchedBy(["name" => "UpdatedTag"])[0];
        $result = $this->tagsTable->restore($tag->getId());

        $this->assertTrue($result);
    }

    /**
     * Tests permanently removing a tag by a valid ID.
     */
    public function testRemoveValidId(): void
    {
        // Permanently remove a tag by a valid ID and verify the operation.
        $tag = $this->tagsTable->findSearchedBy(["name" => "UpdatedTag"])[0];

        // Delete the Tag object to ensure it exists before removal
        $this->tagsTable->delete($tag->getId());

        // Remove the tag
        $result = $this->tagsTable->remove($tag->getId());

        $this->assertTrue($result);
    }

    /**
     * Tests retrieving a tag with its associated tag type.
     */
    public function testGetWithTagType(): void
    {
        // Retrieve a tag with its associated tag type and verify the properties.
        $result = $this->tagsTable->get(1);
        $this->assertInstanceOf(Tag::class, $result);
        $this->assertTrue($result->hasTagType());
        $this->assertInstanceOf(TagType::class, $result->getTagType());
        $this->assertEquals("Genre", $result->getTagType()->getName());
    }

    /**
     * Tests searching for tags by criteria and verifying their associated tag type.
     */
    public function testFindSearchedByWithTagType(): void
    {
        // Search for tags by criteria and verify their associated tag type.
        $result = $this->tagsTable->findSearchedBy(['name' => 'Romance']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Tag::class, $result[0]);
        $this->assertTrue($result[0]->hasTagType());
        $this->assertInstanceOf(TagType::class, $result[0]->getTagType());
        $this->assertEquals("Genre", $result[0]->getTagType()->getName());
    }
}
