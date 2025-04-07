<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/builder/TagBuilder.php';
require_once __DIR__ . '/../../src/table/TagsTable.php';
require_once __DIR__ . '/../../src/entity/Tag.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class TagsTableTest extends TestCase
{
    private TagsTable $tagsTable;

    protected function setUp(): void
    {
        $this->tagsTable = new TagsTable("tests", "user");
    }

    public function testGetValidId(): void
    {
        $result = $this->tagsTable->get(1);
        $this->assertInstanceOf(Tag::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Romance", $result->getName());
        $this->assertEquals("Story is about or mentions bit of romance between two or more characters.", $result->getDescription());
        $this->assertEquals(1, $result->getTypeId());
        $this->assertEquals("Genre", $result->getTagType()->getName());
    }

    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->tagsTable->get(999);
    }

    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->tagsTable->get("invalid_id");
    }

    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->tagsTable->findSearchedBy(['name' => 'Harem%']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Tag::class, $result[0]);
    }

    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->tagsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->tagsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(34, $result);
        $this->assertEquals("Adventure", $result[0]->getName());
        $this->assertEquals("Story is about or mentions bit of aventure with rather violent actions.", $result[0]->getDescription());
        $this->assertEquals("Genre", $result[0]->getTagType()->getName());
    }

    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->tagsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindAllWithCriteria(): void
    {
        $result = $this->tagsTable->findAll([
            'search' => ['name' => 'Dragon%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
    }

    public function testFindAllNoResults(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->tagsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    public function testCreateValid(): void
    {
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

    public function testUpdateValid(): void
    {
        $tag = $this->tagsTable->findSearchedBy(["name" => "NewTag"])[0];
        $tag->setName("UpdatedTag");
        $tag->setUpdateDate(new DateTime());

        $updatedTag = $this->tagsTable->update($tag);

        $this->assertInstanceOf(Tag::class, $updatedTag);
        $this->assertEquals("UpdatedTag", $updatedTag->getName());
    }

    public function testDeleteValidId(): void
    {
        $tag = $this->tagsTable->findSearchedBy(["name" => "UpdatedTag"])[0];
        $result = $this->tagsTable->delete($tag->getId());

        $this->assertTrue($result);
    }

    public function testRestoreValidId(): void
    {
        $tag = $this->tagsTable->findSearchedBy(["name" => "UpdatedTag"])[0];
        $result = $this->tagsTable->restore($tag->getId());

        $this->assertTrue($result);
    }

    public function testRemoveValidId(): void
    {
        $tag = $this->tagsTable->findSearchedBy(["name" => "UpdatedTag"])[0];
        $result = $this->tagsTable->remove($tag->getId());

        $this->assertTrue($result);
    }
}
