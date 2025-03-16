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
     */
    public function testGetRatingById()
    {
        $rating = $this->ratingsTable->get(0);

        $this->assertEquals(0, $rating->getId());
        $this->assertEquals("K / 3", $rating->getName());
        $this->assertInstanceOf(Rating::class, $rating);
    }

    /**
     * Test getting a rating by an ID that does not exist.
     */
    public function testGetRatingByIdNotFound()
    {
        try {
            $rating = $this->ratingsTable->get(6);
            $this->assertEquals(6, $rating->getId());
        } catch (Exception $e) {
            $this->assertInstanceOf(FfbTableException::class, $e);
            $this->assertEquals("No data for rating n°6", $e->getMessage());
        }
    }

    /**
     * Test finding ratings by exact match.
     */
    public function testFindSearchedByEquality()
    {
        $ratings = $this->ratingsTable->findSearchedBy([
            "name" => "K+ / 7"
        ]);

        $this->assertCount(1, $ratings);
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        $this->assertInstanceOf(Rating::class, $ratings[0]);
    }

    /**
     * Test finding ratings using a LIKE query.
     */
    public function testFindSearchedByLike()
    {
        $ratings = $this->ratingsTable->findSearchedBy([
            "name" => "LIKE 'K%'"
        ]);

        $this->assertCount(2, $ratings);
        $this->assertEquals(0, $ratings[0]->getId());
        $this->assertEquals("K / 3", $ratings[0]->getName());
        $this->assertEquals(1, $ratings[1]->getId());
        $this->assertEquals("K+ / 7", $ratings[1]->getName());
        $this->assertInstanceOf(Rating::class, $ratings[0]);
        $this->assertInstanceOf(Rating::class, $ratings[1]);
    }

    /**
     * Test finding ratings with a condition greater than a specified value.
     */
    public function testFindSearchedBySuperior()
    {
        $ratings = $this->ratingsTable->findSearchedBy([
            "id" => "> 1"
        ]);

        $this->assertCount(3, $ratings);
        $this->assertEquals(2, $ratings[0]->getId());
        $this->assertEquals("T / 12", $ratings[0]->getName());
        $this->assertEquals(3, $ratings[1]->getId());
        $this->assertEquals("M / 16", $ratings[1]->getName());
        $this->assertEquals(4, $ratings[2]->getId());
        $this->assertEquals("MA / 18", $ratings[2]->getName());
        $this->assertInstanceOf(Rating::class, $ratings[0]);
        $this->assertInstanceOf(Rating::class, $ratings[1]);
        $this->assertInstanceOf(Rating::class, $ratings[2]);
    }

    /**
     * Test finding ratings ordered by name in ascending order.
     */
    public function testFindOrderedByAsc()
    {
        $ratings = $this->ratingsTable->findOrderedBy([
            "name" => "ASC"
        ]);

        $this->assertCount(5, $ratings);
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
        foreach ($ratings as $rating) {
            $this->assertInstanceOf(Rating::class, $rating);
        }
    }

    /**
     * Test finding ratings ordered by ID in descending order.
     */
    public function testFindOrderedByDesc()
    {
        $ratings = $this->ratingsTable->findOrderedBy([
            "id" => "DESC"
        ]);

        $this->assertCount(5, $ratings);
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
        foreach ($ratings as $rating) {
            $this->assertInstanceOf(Rating::class, $rating);
        }
    }

    /**
     * Test finding ratings with a limit of 2.
     */
    public function testFindLimitedBy02()
    {
        $ratings = $this->ratingsTable->findLimitedBy([
            "limit" => 2
        ]);

        $this->assertCount(2, $ratings);
        $this->assertEquals(0, $ratings[0]->getId());
        $this->assertEquals("K / 3", $ratings[0]->getName());
        $this->assertEquals(1, $ratings[1]->getId());
        $this->assertEquals("K+ / 7", $ratings[1]->getName());
        foreach ($ratings as $rating) {
            $this->assertInstanceOf(Rating::class, $rating);
        }
    }

    /**
     * Test finding ratings with a limit of 1 and an offset of 1.
     */
    public function testFindLimitedBy11()
    {
        $ratings = $this->ratingsTable->findLimitedBy([
            "limit" => 1,
            "offset" => 1
        ]);

        $this->assertCount(1, $ratings);
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        $this->assertInstanceOf(Rating::class, $ratings[0]);
    }

    /**
     * Test finding all ratings with search, order, and limit conditions.
     */
    public function testFindAll()
    {
        $ratings = $this->ratingsTable->findAll(["search" => [
            "name" => "LIKE 'K%'"
        ], "order" => [
            "name" => "DESC"
        ], "limit" => [
            "limit" => 0,
            "offset" => 2
        ]]);

        $this->assertCount(2, $ratings);
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        $this->assertEquals(0, $ratings[1]->getId());
        $this->assertEquals("K / 3", $ratings[1]->getName());
        foreach ($ratings as $rating) {
            $this->assertInstanceOf(Rating::class, $rating);
        }
    }

    /**
     * Test finding ratings with multiple search criteria.
     */
    public function testFindSearchedByMultipleCriteria()
    {
        $ratings = $this->ratingsTable->findSearchedBy([
            "name" => "LIKE 'K%'",
            "id" => "> 0"
        ]);

        $this->assertCount(1, $ratings);
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        $this->assertInstanceOf(Rating::class, $ratings[0]);
    }

    /**
     * Test finding ratings with complex order and limit conditions.
     */
    public function testFindAllWithComplexConditions()
    {
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

        $this->assertCount(1, $ratings);
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
        $this->assertInstanceOf(Rating::class, $ratings[0]);
    }
}
