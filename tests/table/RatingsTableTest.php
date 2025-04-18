<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Rating.php';
require_once __DIR__ . '/../../src/table/RatingsTable.php';
require_once __DIR__ . '/../../src/table/Connection.php';

#[\PHPUnit\Framework\Attributes\CoversClass(Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(FfbException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(Parameters::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(RatingsTable::class)]
class RatingsTableTest extends TestCase
{
    private RatingsTable $ratingsTable;

    protected function setUp(): void
    {
        // Create RatingsTable with real connection
        $this->ratingsTable = new RatingsTable('tests', 'user');
    }

    public function testGet()
    {
        // Test existing ID
        $rating = $this->ratingsTable->get(1);
        $this->assertInstanceOf(Rating::class, $rating);
        $this->assertEquals('K+ / 7', $rating->getName());

        // Test non-existing ID
        $this->expectException(FfbTableException::class);
        $this->ratingsTable->get(999);
    }

    public function testFindAll()
    {
        // Get all ratings
        $result = $this->ratingsTable->findAll([]);
        $this->assertCount(5, $result);

        // Verify all items are Rating instances
        $this->assertContainsOnlyInstancesOf(Rating::class, $result);
    }

    public function testFindSearchedBy()
    {
        // Exact match
        $result = $this->ratingsTable->findSearchedBy(['name' => '%T%']);
        $this->assertCount(1, $result);
        $this->assertEquals(2, $result[0]->getId());

        // Partial match with LIKE
        $result = $this->ratingsTable->findSearchedBy(['name' => '%M%']);
        $this->assertCount(2, $result);

        // Operator match
        $result = $this->ratingsTable->findSearchedBy(['id' => '> 3']);
        $this->assertCount(1, $result); // IDs 4 and 5
    }

    public function testFindOrderedBy()
    {
        // Order by name ASC
        $result = $this->ratingsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertEquals('K / 3', $result[0]->getName());
        $this->assertEquals('K+ / 7', $result[1]->getName());

        // Order by id DESC
        $result = $this->ratingsTable->findOrderedBy(['id' => 'DESC']);
        $this->assertEquals(4, $result[0]->getId());
        $this->assertEquals(3, $result[1]->getId());
    }

    public function testFindLimitedBy()
    {
        // Limit 2
        $result = $this->ratingsTable->findLimitedBy(['limit' => 2]);
        $this->assertCount(2, $result);

        // Limit 3 with offset 2
        $result = $this->ratingsTable->findLimitedBy(['limit' => 3, 'offset' => 2]);
        $this->assertCount(3, $result);
        $this->assertEquals(3, $result[0]->getId()); // Default order is by ID ASC
    }

    public function testComplexCombination()
    {
        // Search + Order + Limit
        $result = $this->ratingsTable->findAll([
            'search' => ['name' => '%M%'],
            'order' => ['name' => 'DESC'],
            'limit' => ['limit' => 2]
        ]);

        $expectedNames = ['MA / 18', 'M / 16'];
        $this->assertCount(2, $result);
        $this->assertEquals($expectedNames, [$result[0]->getName(), $result[1]->getName()]);
    }
}
