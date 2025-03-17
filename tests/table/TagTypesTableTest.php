<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/TagTypesTable.php';
require_once __DIR__ . '/../../src/entity/TagType.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class TagTypesTableTest extends TestCase
{
    private TagTypesTable $tagTypesTable;

    /**
     * Set up the TagTypesTable instance before each test.
     */
    protected function setUp(): void
    {
        $this->tagTypesTable = new TagTypesTable("tests", "user");
    }

    /**
     * Test getting a tag type by its ID.
     * This test checks if the tag type with ID 1 can be retrieved correctly.
     */
    public function testGetTagTypeById()
    {
        // Retrieve the tag type with ID 1
        $tagType = $this->tagTypesTable->get(1);

        // Assert that the ID and name of the tag type are as expected
        $this->assertEquals(1, $tagType->getId());
        $this->assertEquals("Genre", $tagType->getName());
        // Assert that the retrieved object is an instance of TagType
        $this->assertInstanceOf(TagType::class, $tagType);
    }

    /**
     * Test getting a tag type by an ID that does not exist.
     * This test checks if an exception is thrown when trying to get a tag type with a non-existent ID.
     */
    public function testGetTagTypeByIdNotFound()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->tagTypesTable->get(5);
    }

    /**
     * Test finding tag types by exact match.
     * This test checks if the tag type with the exact name "Relationships" can be found.
     */
    public function testFindSearchedByEquality()
    {
        // Search for tag types with the exact name "Relationships"
        $tagTypes = $this->tagTypesTable->findSearchedBy([
            "name" => "Relationships"
        ]);

        // Assert that one tag type is found
        $this->assertCount(1, $tagTypes);
        // Assert that the ID and name of the tag type are as expected
        $this->assertEquals(3, $tagTypes[0]->getId());
        $this->assertEquals("Relationships", $tagTypes[0]->getName());
        // Assert that the retrieved object is an instance of TagType
        $this->assertInstanceOf(TagType::class, $tagTypes[0]);
    }

    /**
     * Test finding tag types using a LIKE query.
     * This test checks if tag types with names starting with "T" can be found using a LIKE query.
     */
    public function testFindSearchedByLike()
    {
        // Search for tag types with names starting with "T"
        $tagTypes = $this->tagTypesTable->findSearchedBy([
            "name" => "LIKE 'T%'"
        ]);

        // Assert that one tag type is found
        $this->assertCount(1, $tagTypes);
        // Assert that the ID and name of the tag type are as expected
        $this->assertEquals(2, $tagTypes[0]->getId());
        $this->assertEquals("Timeline", $tagTypes[0]->getName());
        // Assert that the retrieved object is an instance of TagType
        $this->assertInstanceOf(TagType::class, $tagTypes[0]);
    }

    /**
     * Test finding tag types with a condition greater than a specified value.
     * This test checks if tag types with IDs greater than 1 can be found.
     */
    public function testFindSearchedBySuperior()
    {
        // Search for tag types with IDs greater than 1
        $tagTypes = $this->tagTypesTable->findSearchedBy([
            "id" => "> 1"
        ]);

        // Assert that three tag types are found
        $this->assertCount(3, $tagTypes);
        // Assert that the IDs and names of the tag types are as expected
        $this->assertEquals(2, $tagTypes[0]->getId());
        $this->assertEquals("Timeline", $tagTypes[0]->getName());
        $this->assertEquals(3, $tagTypes[1]->getId());
        $this->assertEquals("Relationships", $tagTypes[1]->getName());
        $this->assertEquals(4, $tagTypes[2]->getId());
        $this->assertEquals("Other", $tagTypes[2]->getName());
        // Assert that the retrieved objects are instances of TagType
        $this->assertInstanceOf(TagType::class, $tagTypes[0]);
        $this->assertInstanceOf(TagType::class, $tagTypes[1]);
        $this->assertInstanceOf(TagType::class, $tagTypes[2]);
    }

    /**
     * Test finding tag types ordered by name in ascending order.
     * This test checks if tag types can be ordered by name in ascending order.
     */
    public function testFindOrderedByAsc()
    {
        // Retrieve tag types ordered by name in ascending order
        $tagTypes = $this->tagTypesTable->findOrderedBy([
            "name" => "ASC"
        ]);

        // Assert that four tag types are found
        $this->assertCount(4, $tagTypes);
        // Assert that the IDs and names of the tag types are as expected
        $this->assertEquals(1, $tagTypes[0]->getId());
        $this->assertEquals("Genre", $tagTypes[0]->getName());
        $this->assertEquals(4, $tagTypes[1]->getId());
        $this->assertEquals("Other", $tagTypes[1]->getName());
        $this->assertEquals(3, $tagTypes[2]->getId());
        $this->assertEquals("Relationships", $tagTypes[2]->getName());
        $this->assertEquals(2, $tagTypes[3]->getId());
        $this->assertEquals("Timeline", $tagTypes[3]->getName());
        // Assert that the retrieved objects are instances of TagType
        foreach ($tagTypes as $tagType) {
            $this->assertInstanceOf(TagType::class, $tagType);
        }
    }

    /**
     * Test finding tag types ordered by ID in descending order.
     * This test checks if tag types can be ordered by ID in descending order.
     */
    public function testFindOrderedByDesc()
    {
        // Retrieve tag types ordered by ID in descending order
        $tagTypes = $this->tagTypesTable->findOrderedBy([
            "id" => "DESC"
        ]);

        // Assert that four tag types are found
        $this->assertCount(4, $tagTypes);
        // Assert that the IDs and names of the tag types are as expected
        $this->assertEquals(4, $tagTypes[0]->getId());
        $this->assertEquals("Other", $tagTypes[0]->getName());
        $this->assertEquals(3, $tagTypes[1]->getId());
        $this->assertEquals("Relationships", $tagTypes[1]->getName());
        $this->assertEquals(2, $tagTypes[2]->getId());
        $this->assertEquals("Timeline", $tagTypes[2]->getName());
        $this->assertEquals(1, $tagTypes[3]->getId());
        $this->assertEquals("Genre", $tagTypes[3]->getName());
        // Assert that the retrieved objects are instances of TagType
        foreach ($tagTypes as $tagType) {
            $this->assertInstanceOf(TagType::class, $tagType);
        }
    }

    /**
     * Test finding tag types with a limit of 2.
     * This test checks if only 2 tag types can be retrieved when a limit is set.
     */
    public function testFindLimitedBy02()
    {
        // Retrieve tag types with a limit of 2
        $tagTypes = $this->tagTypesTable->findLimitedBy([
            "limit" => 2
        ]);

        // Assert that two tag types are found
        $this->assertCount(2, $tagTypes);
        // Assert that the IDs and names of the tag types are as expected
        $this->assertEquals(1, $tagTypes[0]->getId());
        $this->assertEquals("Genre", $tagTypes[0]->getName());
        $this->assertEquals(4, $tagTypes[1]->getId());
        $this->assertEquals("Other", $tagTypes[1]->getName());
        // Assert that the retrieved objects are instances of TagType
        foreach ($tagTypes as $tagType) {
            $this->assertInstanceOf(TagType::class, $tagType);
        }
    }

    /**
     * Test finding tag types with a limit of 1 and an offset of 1.
     * This test checks if the second tag type can be retrieved when a limit of 1 and an offset of 1 are set.
     */
    public function testFindLimitedBy11()
    {
        // Retrieve tag types with a limit of 1 and an offset of 1
        $tagTypes = $this->tagTypesTable->findLimitedBy([
            "limit" => 1,
            "offset" => 1
        ]);

        // Assert that one tag type is found
        $this->assertCount(1, $tagTypes);
        // Assert that the ID and name of the tag type are as expected
        $this->assertEquals(4, $tagTypes[0]->getId());
        $this->assertEquals("Other", $tagTypes[0]->getName());
        // Assert that the retrieved object is an instance of TagType
        $this->assertInstanceOf(TagType::class, $tagTypes[0]);
    }

    /**
     * Test finding all tag types with search, order, and limit conditions.
     * This test checks if tag types can be found with combined search, order, and limit conditions.
     */
    public function testFindAll()
    {
        // Retrieve tag types with combined search, order, and limit conditions
        $tagTypes = $this->tagTypesTable->findAll(["search" => [
            "name" => "LIKE 'T%'"
        ], "order" => [
            "name" => "DESC"
        ], "limit" => [
            "limit" => 0,
            "offset" => 2
        ]]);

        // Assert that one tag type is found
        $this->assertCount(1, $tagTypes);
        // Assert that the ID and name of the tag type are as expected
        $this->assertEquals(2, $tagTypes[0]->getId());
        $this->assertEquals("Timeline", $tagTypes[0]->getName());
        // Assert that the retrieved object is an instance of TagType
        $this->assertInstanceOf(TagType::class, $tagTypes[0]);
    }

    /**
     * Test finding tag types with multiple search criteria.
     * This test checks if tag types can be found with multiple search criteria.
     */
    public function testFindSearchedByMultipleCriteria()
    {
        // Search for tag types with names starting with "T" and IDs greater than 1
        $tagTypes = $this->tagTypesTable->findSearchedBy([
            "name" => "LIKE 'T%'",
            "id" => "> 1"
        ]);

        // Assert that one tag type is found
        $this->assertCount(1, $tagTypes);
        // Assert that the ID and name of the tag type are as expected
        $this->assertEquals(2, $tagTypes[0]->getId());
        $this->assertEquals("Timeline", $tagTypes[0]->getName());
        // Assert that the retrieved object is an instance of TagType
        $this->assertInstanceOf(TagType::class, $tagTypes[0]);
    }

    /**
     * Test finding tag types with complex order and limit conditions.
     * This test checks if tag types can be found with complex order and limit conditions.
     */
    public function testFindAllWithComplexConditions()
    {
        // Retrieve tag types with complex order and limit conditions
        $tagTypes = $this->tagTypesTable->findAll([
            "search" => [
                "name" => "LIKE 'T%'"
            ],
            "order" => [
                "id" => "ASC"
            ],
            "limit" => [
                "limit" => 0,
                "offset" => 1
            ]
        ]);

        // Assert that one tag type is found
        $this->assertCount(1, $tagTypes);
        // Assert that the ID and name of the tag type are as expected
        $this->assertEquals(2, $tagTypes[0]->getId());
        $this->assertEquals("Timeline", $tagTypes[0]->getName());
        // Assert that the retrieved object is an instance of TagType
        $this->assertInstanceOf(TagType::class, $tagTypes[0]);
    }
}
