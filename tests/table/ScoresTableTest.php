<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/ScoresTable.php';
require_once __DIR__ . '/../../src/entity/Score.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Parameters::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Score::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ScoresTable::class)]
class ScoresTableTest extends TestCase
{
    private ScoresTable $scoresTable;

    /**
     * Set up the ScoresTable instance before each test.
     * This method initializes the ScoresTable object with test-specific parameters.
     */
    protected function setUp(): void
    {
        $this->scoresTable = new ScoresTable("tests", "user");
    }

    /**
     * Test the get method with a valid ID.
     * Verifies that the method returns a Score object with the expected properties.
     */
    public function testGetValidId(): void
    {
        $result = $this->scoresTable->get(1);
        $this->assertInstanceOf(Score::class, $result); // Ensure the result is a Score object.
        $this->assertEquals(1, $result->getId()); // Check that the ID matches.
        $this->assertEquals("Poor", $result->getName()); // Check that the name matches.
    }

    /**
     * Test the get method with an invalid ID.
     * Ensures that an exception is thrown when the ID does not exist.
     */
    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->scoresTable->get(999); // Attempt to fetch a non-existent ID.
    }

    /**
     * Test the get method with a non-integer ID.
     * Ensures that a TypeError is thrown for invalid input types.
     */
    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->scoresTable->get("invalid_id"); // Pass a string instead of an integer.
    }

    /**
     * Test the findSearchedBy method with valid search criteria.
     * Verifies that the method returns an array of matching Score objects.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->scoresTable->findSearchedBy(['name' => 'Excellent%']);
        $this->assertIsArray($result); // Ensure the result is an array.
        $this->assertCount(1, $result); // Check that one result is returned.
        $this->assertInstanceOf(Score::class, $result[0]); // Verify the result is a Score object.
    }

    /**
     * Test the findSearchedBy method with invalid search criteria.
     * Ensures that an exception is thrown for invalid column names.
     */
    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->scoresTable->findSearchedBy(['invalid_column' => 'value']); // Use an invalid column name.
    }

    /**
     * Test the findSearchedBy method with empty search criteria.
     * Ensures that an exception is thrown when no criteria are provided.
     */
    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        $this->scoresTable->findSearchedBy([]); // Pass an empty array as criteria.
    }

    /**
     * Test the findOrderedBy method with valid order criteria.
     * Verifies that the method returns an array of Score objects in the correct order.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->scoresTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result); // Ensure the result is an array.
        $this->assertCount(6, $result); // Check that six results are returned.
        $this->assertEquals("Acceptable", $result[0]->getName()); // Verify the first result is ordered correctly.
    }

    /**
     * Test the findOrderedBy method with invalid order direction.
     * Ensures that an exception is thrown for invalid order directions.
     */
    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        $this->scoresTable->findOrderedBy(['name' => 'INVALID']); // Use an invalid order direction.
    }

    /**
     * Test the findLimitedBy method with valid limit and offset.
     * Verifies that the method returns the correct number of results.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->scoresTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result); // Ensure the result is an array.
        $this->assertCount(2, $result); // Check that two results are returned.
    }

    /**
     * Test the findLimitedBy method with a negative limit.
     * Ensures that an exception is thrown for invalid limit values.
     */
    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->scoresTable->findLimitedBy(['limit' => -1]); // Use a negative limit value.
    }

    /**
     * Test the findLimitedBy method with a negative offset.
     * Ensures that an exception is thrown for invalid offset values.
     */
    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        $this->scoresTable->findLimitedBy(['limit' => 10, 'offset' => -5]); // Use a negative offset value.
    }

    /**
     * Test the findAll method with combined criteria.
     * Verifies that the method returns results matching all specified criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        $result = $this->scoresTable->findAll([
            'search' => ['name' => 'P%'], // Search for names starting with 'P'.
            'order' => ['name' => 'ASC'], // Order results by name in ascending order.
            'limit' => ['limit' => 2, 'offset' => 0] // Limit results to 2 with no offset.
        ]);
        $this->assertIsArray($result); // Ensure the result is an array.
        $this->assertCount(1, $result); // Check that one result is returned.
    }

    /**
     * Test the findAll method with no results.
     * Ensures that an exception is thrown when no results match the criteria.
     */
    public function testFindAllNoResults(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->scoresTable->findAll([
            'search' => ['name' => 'Nonexistent%'], // Use a search term that matches no results.
            'order' => ['name' => 'ASC'], // Order results by name in ascending order.
            'limit' => ['limit' => 2, 'offset' => 0] // Limit results to 2 with no offset.
        ]);
    }

    /**
     * Test the findAll method with empty arguments.
     * Verifies that the method returns all results when no criteria are provided.
     */
    public function testFindAllEmptyArguments(): void
    {
        $result = $this->scoresTable->findAll([]); // Pass an empty array as arguments.
        $this->assertIsArray($result); // Ensure the result is an array.
        $this->assertCount(6, $result); // Check that all six results are returned.
    }

    /**
     * Test the findAll method with invalid search criteria.
     * Ensures that an exception is thrown for invalid column names in the search criteria.
     */
    public function testFindAllInvalidSearchCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->scoresTable->findAll([
            'search' => ['invalid_column' => 'value'] // Use an invalid column name in the search criteria.
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

        $this->scoresTable->findAll([
            'order' => ['invalid_column' => 'ASC'] // Use an invalid column name in the order criteria.
        ]);
    }

    /**
     * Test the findAll method with invalid limit criteria.
     * Ensures that an exception is thrown for invalid limit values.
     */
    public function testFindAllInvalidLimitCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->scoresTable->findAll([
            'limit' => ['limit' => -10] // Use a negative limit value.
        ]);
    }
}
