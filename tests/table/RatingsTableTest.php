<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/RatingsTable.php';
require_once __DIR__ . '/../../src/entity/Rating.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

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
     * Test getting a rating by its ID.
     * This test checks if the rating with ID 0 can be retrieved correctly.
     */
    public function testGetRatingById()
    {
        // Retrieve the rating with ID 0
        $rating = $this->ratingsTable->get(0);

        // Assert that the ID and name of the rating are as expected
        $this->assertEquals(0, $rating->getId());
        $this->assertEquals("K / 3", $rating->getName());
        // Assert that the retrieved object is an instance of Rating
        $this->assertInstanceOf(Rating::class, $rating);
    }

    /**
     * Test getting a rating by an ID that does not exist.
     * This test checks if an exception is thrown when trying to get a rating with a non-existent ID.
     */
    public function testGetRatingByIdNotFound()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->ratingsTable->get(6);
    }

    /**
     * Test finding ratings by exact match.
     * This test checks if the rating with the exact name "K+ / 7" can be found.
     */
    public function testFindSearchedByEquality()
    {
        // Search for ratings with the exact name "K+ / 7"
        $ratings = $this->ratingsTable->findSearchedBy([
            "name" => "K+ / 7"
        ]);

        // Assert that one rating is found
        $this->assertCount(1, $ratings);
        // Assert that the ID and name of the rating are as expected
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        // Assert that the retrieved object is an instance of Rating
        $this->assertInstanceOf(Rating::class, $ratings[0]);
    }

    /**
     * Test finding ratings using a LIKE query.
     * This test checks if ratings with names starting with "K" can be found using a LIKE query.
     */
    public function testFindSearchedByLike()
    {
        // Search for ratings with names starting with "K"
        $ratings = $this->ratingsTable->findSearchedBy([
            "name" => "LIKE 'K%'"
        ]);

        // Assert that two ratings are found
        $this->assertCount(2, $ratings);
        // Assert that the IDs and names of the ratings are as expected
        $this->assertEquals(0, $ratings[0]->getId());
        $this->assertEquals("K / 3", $ratings[0]->getName());
        $this->assertEquals(1, $ratings[1]->getId());
        $this->assertEquals("K+ / 7", $ratings[1]->getName());
        // Assert that the retrieved objects are instances of Rating
        $this->assertInstanceOf(Rating::class, $ratings[0]);
        $this->assertInstanceOf(Rating::class, $ratings[1]);
    }

    /**
     * Test finding ratings with a condition greater than a specified value.
     * This test checks if ratings with IDs greater than 1 can be found.
     */
    public function testFindSearchedBySuperior()
    {
        // Search for ratings with IDs greater than 1
        $ratings = $this->ratingsTable->findSearchedBy([
            "id" => "> 1"
        ]);

        // Assert that three ratings are found
        $this->assertCount(3, $ratings);
        // Assert that the IDs and names of the ratings are as expected
        $this->assertEquals(2, $ratings[0]->getId());
        $this->assertEquals("T / 12", $ratings[0]->getName());
        $this->assertEquals(3, $ratings[1]->getId());
        $this->assertEquals("M / 16", $ratings[1]->getName());
        $this->assertEquals(4, $ratings[2]->getId());
        $this->assertEquals("MA / 18", $ratings[2]->getName());
        // Assert that the retrieved objects are instances of Rating
        $this->assertInstanceOf(Rating::class, $ratings[0]);
        $this->assertInstanceOf(Rating::class, $ratings[1]);
        $this->assertInstanceOf(Rating::class, $ratings[2]);
    }

    /**
     * Test finding ratings ordered by name in ascending order.
     * This test checks if ratings can be ordered by name in ascending order.
     */
    public function testFindOrderedByAsc()
    {
        // Retrieve ratings ordered by name in ascending order
        $ratings = $this->ratingsTable->findOrderedBy([
            "name" => "ASC"
        ]);

        // Assert that five ratings are found
        $this->assertCount(5, $ratings);
        // Assert that the IDs and names of the ratings are as expected
        $this->assertEquals(0, $ratings[0]->getId());
        $this->assertEquals("K / 3", $ratings[0]->getName());
        $this->assertEquals(1, $ratings[1]->getId());
        $this->assertEquals("K+ / 7", $ratings[1]->getName());
        $this->assertEquals(3, $ratings[2]->getId());
        $this->assertEquals("M / 16", $ratings[2]->getName());
        $this->assertEquals(4, $ratings[3]->getId());
        $this->assertEquals("MA / 18", $ratings[3]->getName());
        $this->assertEquals(2, $ratings[4]->getId());
        $this->assertEquals("T / 12", $ratings[4]->getName());
        // Assert that the retrieved objects are instances of Rating
        foreach ($ratings as $rating) {
            $this->assertInstanceOf(Rating::class, $rating);
        }
    }

    /**
     * Test finding ratings ordered by ID in descending order.
     * This test checks if ratings can be ordered by ID in descending order.
     */
    public function testFindOrderedByDesc()
    {
        // Retrieve ratings ordered by ID in descending order
        $ratings = $this->ratingsTable->findOrderedBy([
            "id" => "DESC"
        ]);

        // Assert that five ratings are found
        $this->assertCount(5, $ratings);
        // Assert that the IDs and names of the ratings are as expected
        $this->assertEquals(4, $ratings[0]->getId());
        $this->assertEquals("MA / 18", $ratings[0]->getName());
        $this->assertEquals(3, $ratings[1]->getId());
        $this->assertEquals("M / 16", $ratings[1]->getName());
        $this->assertEquals(2, $ratings[2]->getId());
        $this->assertEquals("T / 12", $ratings[2]->getName());
        $this->assertEquals(1, $ratings[3]->getId());
        $this->assertEquals("K+ / 7", $ratings[3]->getName());
        $this->assertEquals(0, $ratings[4]->getId());
        $this->assertEquals("K / 3", $ratings[4]->getName());
        // Assert that the retrieved objects are instances of Rating
        foreach ($ratings as $rating) {
            $this->assertInstanceOf(Rating::class, $rating);
        }
    }

    /**
     * Test finding ratings with a limit of 2.
     * This test checks if only 2 ratings can be retrieved when a limit is set.
     */
    public function testFindLimitedBy02()
    {
        // Retrieve ratings with a limit of 2
        $ratings = $this->ratingsTable->findLimitedBy([
            "limit" => 2
        ]);

        // Assert that two ratings are found
        $this->assertCount(2, $ratings);
        // Assert that the IDs and names of the ratings are as expected
        $this->assertEquals(0, $ratings[0]->getId());
        $this->assertEquals("K / 3", $ratings[0]->getName());
        $this->assertEquals(1, $ratings[1]->getId());
        $this->assertEquals("K+ / 7", $ratings[1]->getName());
        // Assert that the retrieved objects are instances of Rating
        foreach ($ratings as $rating) {
            $this->assertInstanceOf(Rating::class, $rating);
        }
    }

    /**
     * Test finding ratings with a limit of 1 and an offset of 1.
     * This test checks if the second rating can be retrieved when a limit of 1 and an offset of 1 are set.
     */
    public function testFindLimitedBy11()
    {
        // Retrieve ratings with a limit of 1 and an offset of 1
        $ratings = $this->ratingsTable->findLimitedBy([
            "limit" => 1,
            "offset" => 1
        ]);

        // Assert that one rating is found
        $this->assertCount(1, $ratings);
        // Assert that the ID and name of the rating are as expected
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        // Assert that the retrieved object is an instance of Rating
        $this->assertInstanceOf(Rating::class, $ratings[0]);
    }

    /**
     * Test finding all ratings with search, order, and limit conditions.
     * This test checks if ratings can be found with combined search, order, and limit conditions.
     */
    public function testFindAll()
    {
        // Retrieve ratings with combined search, order, and limit conditions
        $ratings = $this->ratingsTable->findAll(["search" => [
            "name" => "LIKE 'K%'"
        ], "order" => [
            "name" => "DESC"
        ], "limit" => [
            "limit" => 0,
            "offset" => 2
        ]]);

        // Assert that two ratings are found
        $this->assertCount(2, $ratings);
        // Assert that the IDs and names of the ratings are as expected
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        $this->assertEquals(0, $ratings[1]->getId());
        $this->assertEquals("K / 3", $ratings[1]->getName());
        // Assert that the retrieved objects are instances of Rating
        foreach ($ratings as $rating) {
            $this->assertInstanceOf(Rating::class, $rating);
        }
    }

    /**
     * Test finding ratings with multiple search criteria.
     * This test checks if ratings can be found with multiple search criteria.
     */
    public function testFindSearchedByMultipleCriteria()
    {
        // Search for ratings with names starting with "K" and IDs greater than 0
        $ratings = $this->ratingsTable->findSearchedBy([
            "name" => "LIKE 'K%'",
            "id" => "> 0"
        ]);

        // Assert that one rating is found
        $this->assertCount(1, $ratings);
        // Assert that the ID and name of the rating are as expected
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        // Assert that the retrieved object is an instance of Rating
        $this->assertInstanceOf(Rating::class, $ratings[0]);
    }

    /**
     * Test finding ratings with complex order and limit conditions.
     * This test checks if ratings can be found with complex order and limit conditions.
     */
    public function testFindAllWithComplexConditions()
    {
        // Retrieve ratings with complex order and limit conditions
        $ratings = $this->ratingsTable->findAll([
            "search" => [
                "name" => "LIKE 'K%'"
            ],
            "order" => [
                "id" => "ASC"
            ],
            "limit" => [
                "limit" => 1,
                "offset" => 1
            ]
        ]);

        // Assert that one rating is found
        $this->assertCount(1, $ratings);
        // Assert that the ID and name of the rating are as expected
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        // Assert that the retrieved object is an instance of Rating
        $this->assertInstanceOf(Rating::class, $ratings[0]);
    }
}
