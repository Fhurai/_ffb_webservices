<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/RatingsTable.php';
require_once __DIR__ . '/../../src/entity/Rating.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

class RatingsTableTest extends TestCase
{
    private RatingsTable $ratingsTable;

    /**
     * Set up the RatingsTable instance before each test.
     */
    protected function setUp(): void
    {
        $this->ratingsTable = new RatingsTable("tests", "user");
    }

    /**
     * Test the get method with a valid ID.
     * Ensures that the method returns a Rating object with the correct ID and name.
     */
    public function testGetValidId(): void
    {
        $result = $this->ratingsTable->get(1);
        $this->assertInstanceOf(Rating::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("K+ / 7", $result->getName());
    }

    /**
     * Test the get method with an invalid ID.
     * Verifies that an exception is thrown when the ID does not exist.
     */
    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->ratingsTable->get(999);
    }

    /**
     * Test the get method with a non-integer ID.
     * Ensures that a TypeError is thrown when the ID is not an integer.
     */
    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->ratingsTable->get("invalid_id");
    }

    /**
     * Test the findSearchedBy method with valid search criteria.
     * Confirms that the method returns an array of Rating objects matching the criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->ratingsTable->findSearchedBy(['name' => 'M / 16']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertEquals("M / 16", $result[0]->getName());
        $this->assertInstanceOf(Rating::class, $result[0]);
    }

    /**
     * Test the findSearchedBy method with invalid search criteria.
     * Ensures that an exception is thrown for invalid column names.
     */
    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->ratingsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    /**
     * Test the findSearchedBy method with empty search criteria.
     * Verifies that an exception is thrown when no search arguments are provided.
     */
    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        $this->ratingsTable->findSearchedBy([]);
    }

    /**
     * Test the findOrderedBy method with valid order criteria.
     * Confirms that the method returns an array of Rating objects ordered correctly.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->ratingsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(5, $result);
        $this->assertEquals("K / 3", $result[0]->getName());
    }

    /**
     * Test the findOrderedBy method with invalid order direction.
     * Ensures that an exception is thrown for invalid order directions.
     */
    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        $this->ratingsTable->findOrderedBy(['name' => 'INVALID']);
    }

    /**
     * Test the findLimitedBy method with valid limit and offset.
     * Confirms that the method returns a limited number of results starting from the offset.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->ratingsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Test the findLimitedBy method with a negative limit.
     * Verifies that an exception is thrown for invalid limit values.
     */
    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->ratingsTable->findLimitedBy(['limit' => -1]);
    }

    /**
     * Test the findLimitedBy method with a negative offset.
     * Ensures that an exception is thrown for invalid offset values.
     */
    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        $this->ratingsTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    /**
     * Test the findAll method with combined criteria.
     * Confirms that the method returns results matching the search, order, and limit criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        $result = $this->ratingsTable->findAll([
            'search' => ['name' => 'K%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Test the findAll method with no results.
     * Verifies that an exception is thrown when no results match the criteria.
     */
    public function testFindAllNoResults(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->ratingsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    /**
     * Test the findAll method with empty arguments.
     * Ensures that the method returns all results when no arguments are provided.
     */
    public function testFindAllEmptyArguments(): void
    {
        $result = $this->ratingsTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(5, $result);
    }

    /**
     * Test the findAll method with invalid search criteria.
     * Verifies that an exception is thrown for invalid column names in the search criteria.
     */
    public function testFindAllInvalidSearchCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->ratingsTable->findAll([
            'search' => ['invalid_column' => 'value']
        ]);
    }

    /**
     * Test the findAll method with invalid order criteria.
     * Ensures that an exception is thrown for invalid column names in the order criteria.
     */
    public function testFindAllInvalidOrderCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->ratingsTable->findAll([
            'order' => ['invalid_column' => 'ASC']
        ]);
    }

    /**
     * Test the findAll method with invalid limit criteria.
     * Verifies that an exception is thrown for invalid or missing limit values.
     */
    public function testFindAllInvalidLimitCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->ratingsTable->findAll([
            'limit' => ['limit' => -10]
        ]);
    }
}
