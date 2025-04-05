<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/ScoresTable.php';
require_once __DIR__ . '/../../src/entity/Score.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class ScoresTableTest extends TestCase
{
    private ScoresTable $scoresTable;

    /**
     * Set up the ScoresTable instance before each test.
     */
    protected function setUp(): void
    {
        $this->scoresTable = new ScoresTable("tests", "user");
    }

    /**
     * Test getting a score by its ID.
     * This test checks if the score with ID 0 can be retrieved correctly.
     */
    public function testGetScoreById()
    {
        // Retrieve the score with ID 0
        $score = $this->scoresTable->get(0);

        // Assert that the ID and name of the score are as expected
        $this->assertEquals(0, $score->getId());
        $this->assertEquals("Unacceptable", $score->getName());
        // Assert that the retrieved object is an instance of Score
        $this->assertInstanceOf(Score::class, $score);

        // Additional assertions
        $this->assertNotEmpty($score->getName(), "Score name should not be empty");
        $this->assertIsString($score->getName(), "Score name should be a string");
    }

    /**
     * Test getting a score by an ID that does not exist.
     * This test checks if an exception is thrown when trying to get a score with a non-existent ID.
     */
    public function testGetScoreByIdNotFound()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->scoresTable->get(6);

        // Additional assertion to ensure exception is thrown
        $this->assertTrue(true, "Exception was correctly thrown");
    }

    /**
     * Test finding scores by exact match.
     * This test checks if the score with the exact name "Acceptable" can be found.
     */
    public function testFindSearchedByEquality()
    {
        // Search for scores with the exact name "Acceptable"
        $scores = $this->scoresTable->findSearchedBy([
            "name" => "Acceptable"
        ]);

        // Assert that one score is found
        $this->assertCount(1, $scores);
        // Assert that the ID and name of the score are as expected
        $this->assertEquals(3, $scores[0]->getId());
        $this->assertEquals("Acceptable", $scores[0]->getName());
        // Assert that the retrieved object is an instance of Score
        $this->assertInstanceOf(Score::class, $scores[0]);

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    /**
     * Test finding scores using a LIKE query.
     * This test checks if scores with names starting with "Score" can be found using a LIKE query.
     */
    public function testFindSearchedByLike()
    {
        // Search for scores with names starting with "Score"
        $scores = $this->scoresTable->findSearchedBy([
            "name" => "LIKE 'Acceptable%'"
        ]);

        // Assert that two scores are found
        $this->assertCount(1, $scores);
        // Assert that the IDs and names of the scores are as expected
        $this->assertEquals(3, $scores[0]->getId());
        $this->assertEquals("Acceptable", $scores[0]->getName());
        // Assert that the retrieved objects are instances of Score
        $this->assertInstanceOf(Score::class, $scores[0]);

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    /**
     * Test finding scores with a condition greater than a specified value.
     * This test checks if scores with IDs greater than 1 can be found.
     */
    public function testFindSearchedBySuperior()
    {
        // Search for scores with IDs greater than 1
        $scores = $this->scoresTable->findSearchedBy([
            "id" => "> 1"
        ]);

        // Assert that three scores are found
        $this->assertCount(4, $scores);
        // Assert that the IDs and names of the scores are as expected
        $this->assertEquals(2, $scores[0]->getId());
        $this->assertEquals("Needs improvement", $scores[0]->getName());
        $this->assertEquals(3, $scores[1]->getId());
        $this->assertEquals("Acceptable", $scores[1]->getName());
        $this->assertEquals(4, $scores[2]->getId());
        $this->assertEquals("Good", $scores[2]->getName());
        $this->assertEquals(5, $scores[3]->getId());
        $this->assertEquals("Excellent", $scores[3]->getName());
        // Assert that the retrieved objects are instances of Score
        $this->assertInstanceOf(Score::class, $scores[0]);
        $this->assertInstanceOf(Score::class, $scores[1]);
        $this->assertInstanceOf(Score::class, $scores[2]);
        $this->assertInstanceOf(Score::class, $scores[3]);

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    /**
     * Test finding scores ordered by name in ascending order.
     * This test checks if scores can be ordered by name in ascending order.
     */
    public function testFindOrderedByAsc()
    {
        // Retrieve scores ordered by name in ascending order
        $scores = $this->scoresTable->findOrderedBy([
            "name" => "ASC"
        ]);

        // Assert that five scores are found
        $this->assertCount(6, $scores);
        // Assert that the IDs and names of the scores are as expected
        $this->assertEquals(3, $scores[0]->getId());
        $this->assertEquals("Acceptable", $scores[0]->getName());
        $this->assertEquals(5, $scores[1]->getId());
        $this->assertEquals("Excellent", $scores[1]->getName());
        $this->assertEquals(4, $scores[2]->getId());
        $this->assertEquals("Good", $scores[2]->getName());
        $this->assertEquals(2, $scores[3]->getId());
        $this->assertEquals("Needs improvement", $scores[3]->getName());
        $this->assertEquals(1, $scores[4]->getId());
        $this->assertEquals("Poor", $scores[4]->getName());
        // Assert that the retrieved objects are instances of Score
        foreach ($scores as $score) {
            $this->assertInstanceOf(Score::class, $score);
        }

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    /**
     * Test finding scores ordered by ID in descending order.
     * This test checks if scores can be ordered by ID in descending order.
     */
    public function testFindOrderedByDesc()
    {
        // Retrieve scores ordered by ID in descending order
        $scores = $this->scoresTable->findOrderedBy([
            "id" => "DESC"
        ]);

        // Assert that five scores are found
        $this->assertCount(6, $scores);
        // Assert that the IDs and names of the scores are as expected
        $this->assertEquals(5, $scores[0]->getId());
        $this->assertEquals("Excellent", $scores[0]->getName());
        $this->assertEquals(4, $scores[1]->getId());
        $this->assertEquals("Good", $scores[1]->getName());
        $this->assertEquals(3, $scores[2]->getId());
        $this->assertEquals("Acceptable", $scores[2]->getName());
        $this->assertEquals(2, $scores[3]->getId());
        $this->assertEquals("Needs improvement", $scores[3]->getName());
        $this->assertEquals(1, $scores[4]->getId());
        $this->assertEquals("Poor", $scores[4]->getName());
        // Assert that the retrieved objects are instances of Score
        foreach ($scores as $score) {
            $this->assertInstanceOf(Score::class, $score);
        }

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    /**
     * Test finding scores with a limit of 2.
     * This test checks if only 2 scores can be retrieved when a limit is set.
     */
    public function testFindLimitedBy02()
    {
        // Retrieve scores with a limit of 2
        $scores = $this->scoresTable->findLimitedBy([
            "limit" => 2
        ]);

        // Assert that two scores are found
        $this->assertCount(2, $scores);
        // Assert that the IDs and names of the scores are as expected
        $this->assertEquals(3, $scores[0]->getId());
        $this->assertEquals("Acceptable", $scores[0]->getName());
        $this->assertEquals(5, $scores[1]->getId());
        $this->assertEquals("Excellent", $scores[1]->getName());
        // Assert that the retrieved objects are instances of Score
        foreach ($scores as $score) {
            $this->assertInstanceOf(Score::class, $score);
        }

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    /**
     * Test finding scores with a limit of 1 and an offset of 1.
     * This test checks if the second score can be retrieved when a limit of 1 and an offset of 1 are set.
     */
    public function testFindLimitedBy11()
    {
        // Retrieve scores with a limit of 1 and an offset of 1
        $scores = $this->scoresTable->findLimitedBy([
            "limit" => 1,
            "offset" => 1
        ]);

        // Assert that one score is found
        $this->assertCount(1, $scores);
        // Assert that the ID and name of the score are as expected
        $this->assertEquals(5, $scores[0]->getId());
        $this->assertEquals("Excellent", $scores[0]->getName());
        // Assert that the retrieved object is an instance of Score
        $this->assertInstanceOf(Score::class, $scores[0]);

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    /**
     * Test finding all scores with search, order, and limit conditions.
     * This test checks if scores can be found with combined search, order, and limit conditions.
     */
    public function testFindAll()
    {
        // Retrieve scores with combined search, order, and limit conditions
        $scores = $this->scoresTable->findAll(["search" => [
            "name" => "LIKE 'P%'"
        ], "order" => [
            "name" => "DESC"
        ], "limit" => [
            "limit" => 0,
            "offset" => 2
        ]]);

        // Assert that one score is found
        $this->assertCount(1, $scores);
        // Assert that the ID and name of the score is as expected
        $this->assertEquals(1, $scores[0]->getId());
        $this->assertEquals("Poor", $scores[0]->getName());
        // Assert that the retrieved object is instance of Score
        $this->assertInstanceOf(Score::class, $scores[0]);

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    /**
     * Test finding scores with multiple search criteria.
     * This test checks if scores can be found with multiple search criteria.
     */
    public function testFindSearchedByMultipleCriteria()
    {
        // Search for scores with names starting with "Score" and IDs greater than 0
        $scores = $this->scoresTable->findSearchedBy([
            "name" => "LIKE 'N%'",
            "id" => "> 0"
        ]);

        // Assert that one score is found
        $this->assertCount(1, $scores);
        // Assert that the ID and name of the score are as expected
        $this->assertEquals(2, $scores[0]->getId());
        $this->assertEquals("Needs improvement", $scores[0]->getName());
        // Assert that the retrieved object is an instance of Score
        $this->assertInstanceOf(Score::class, $scores[0]);

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    /**
     * Test finding scores with complex order and limit conditions.
     * This test checks if scores can be found with complex order and limit conditions.
     */
    public function testFindAllWithComplexConditions()
    {
        // Retrieve scores with complex order and limit conditions
        $scores = $this->scoresTable->findAll([
            "search" => [
                "name" => "LIKE '%oo%'"
            ],
            "order" => [
                "id" => "ASC"
            ],
            "limit" => [
                "limit" => 1,
                "offset" => 1
            ]
        ]);

        // Assert that one score is found
        $this->assertCount(1, $scores);
        // Assert that the ID and name of the score are as expected
        $this->assertEquals(4, $scores[0]->getId());
        $this->assertEquals("Good", $scores[0]->getName());
        // Assert that the retrieved object is an instance of Score
        $this->assertInstanceOf(Score::class, $scores[0]);

        // Additional assertions
        $this->assertNotEmpty($scores, "Scores array should not be empty");
        $this->assertIsArray($scores, "Scores should be returned as an array");
    }

    
    /**
     * Test finding scores with empty search criteria.
     * This test checks if an exception is thrown when search criteria are empty.
     */
    public function testFindSearchedByEmptyCriteria()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Attempt to search with empty criteria
        $this->scoresTable->findSearchedBy([]);
    }

    /**
     * Test finding scores with a negative limit.
     * This test checks if an exception is thrown when the limit is negative.
     */
    public function testFindLimitedByNegativeLimit()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Limit must be a non-negative integer!");

        // Attempt to retrieve scores with a negative limit
        $this->scoresTable->findLimitedBy([
            "limit" => -1
        ]);
    }

    /**
     * Test finding scores with a negative offset.
     * This test checks if an exception is thrown when the offset is negative.
     */
    public function testFindLimitedByNegativeOffset()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Offset must be a non-negative integer!");

        // Attempt to retrieve scores with a negative offset
        $this->scoresTable->findLimitedBy([
            "limit" => 1,
            "offset" => -1
        ]);
    }

    /**
     * Test finding scores with a limit of zero.
     * This test checks if no scores are returned when the limit is zero.
     */
    public function testFindLimitedByZeroLimit()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Retrieve scores with a limit of zero
        $scores = $this->scoresTable->findLimitedBy([
            "limit" => 0
        ]);
    }
}
