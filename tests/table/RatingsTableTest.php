<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/RatingsTable.php';
require_once __DIR__ . '/../../src/entity/Rating.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class RatingsTableTest extends TestCase
{
    private RatingsTable $ratingsTable;

    protected function setUp(): void
    {
        $this->ratingsTable = new RatingsTable("tests", "user");
    }

    public function testGetRatingById()
    {
        $rating = $this->ratingsTable->get(0);

        $this->assertEquals(0, $rating->getId());
        $this->assertEquals("K / 3", $rating->getName());
    }

    public function testGetRatingByIdNotFound()
    {
        try {
            $rating = $this->ratingsTable->get(6);
            $this->assertEquals(6, $rating->getId());
        } catch (Exception $e) {
            $this->assertInstanceOf(FfbTableException::class, $e);
        }
    }

    public function testFindSearchedByEquality()
    {
        $ratings = $this->ratingsTable->findSearchedBy([
            "name" => "K+ / 7"
        ]);

        $this->assertCount(1, $ratings);
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
    }

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
    }

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
    }

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
    }

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
    }

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
    }


    public function testFindLimitedBy11()
    {
        $ratings = $this->ratingsTable->findLimitedBy([
            "limit" => 1,
            "offset" => 1
        ]);

        $this->assertCount(1, $ratings);
        $this->assertEquals(1, $ratings[0]->getId());
        $this->assertEquals("K+ / 7", $ratings[0]->getName());
    }

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
    }
}
