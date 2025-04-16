<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/TagTypesTable.php';
require_once __DIR__ . '/../../src/entity/TagType.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

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
     * Test the get method with a valid ID.
     */
    public function testGetValidId(): void
    {
        $result = $this->tagTypesTable->get(1);
        $this->assertInstanceOf(TagType::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Genre", $result->getName());
    }

    /**
     * Test the get method with an invalid ID.
     */
    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->tagTypesTable->get(999);
    }

    /**
     * Test the get method with a non-integer ID.
     */
    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->tagTypesTable->get("invalid_id");
    }

    /**
     * Test the findSearchedBy method with valid search criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->tagTypesTable->findSearchedBy(['name' => 'Other%']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(TagType::class, $result[0]);
    }

    /**
     * Test the findSearchedBy method with invalid search criteria.
     */
    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->tagTypesTable->findSearchedBy(['invalid_column' => 'value']);
    }

    /**
     * Test the findSearchedBy method with empty search criteria.
     */
    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        $this->tagTypesTable->findSearchedBy([]);
    }

    /**
     * Test the findOrderedBy method with valid order criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->tagTypesTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(4, $result);
        $this->assertEquals("Genre", $result[0]->getName());
    }

    /**
     * Test the findOrderedBy method with invalid order direction.
     */
    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        $this->tagTypesTable->findOrderedBy(['name' => 'INVALID']);
    }

    /**
     * Test the findLimitedBy method with valid limit and offset.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->tagTypesTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Test the findLimitedBy method with a negative limit.
     */
    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->tagTypesTable->findLimitedBy(['limit' => -1]);
    }

    /**
     * Test the findLimitedBy method with a negative offset.
     */
    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        $this->tagTypesTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    /**
     * Test the findAll method with combined criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        $result = $this->tagTypesTable->findAll([
            'search' => ['name' => 'Genre%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
    }

    /**
     * Test the findAll method with no results.
     */
    public function testFindAllNoResults(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->tagTypesTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    /**
     * Test the findAll method with empty arguments.
     */
    public function testFindAllEmptyArguments(): void
    {
        $result = $this->tagTypesTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(4, $result);
    }

    /**
     * Test the findAll method with invalid search criteria.
     */
    public function testFindAllInvalidSearchCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->tagTypesTable->findAll([
            'search' => ['invalid_column' => 'value']
        ]);
    }

    /**
     * Test the findAll method with invalid order criteria.
     */
    public function testFindAllInvalidOrderCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->tagTypesTable->findAll([
            'order' => ['invalid_column' => 'ASC']
        ]);
    }

    /**
     * Test the findAll method with invalid limit criteria.
     */
    public function testFindAllInvalidLimitCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->tagTypesTable->findAll([
            'limit' => ['limit' => -10]
        ]);
    }
}
