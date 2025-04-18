<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Score.php';
require_once __DIR__ . '/../../src/table/ScoresTable.php';
require_once __DIR__ . '/../../src/table/Connection.php';

#[\PHPUnit\Framework\Attributes\CoversClass(Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(FfbException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(Parameters::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(ScoresTable::class)]
class ScoresTableTest extends TestCase
{
    private ScoresTable $scoresTable;

    protected function setUp(): void
    {
        // Create ScoresTable with real connection
        $this->scoresTable = new ScoresTable('tests', 'user');
    }

    public function testGet()
    {
        // Test existing ID
        $score = $this->scoresTable->get(1);
        $this->assertInstanceOf(Score::class, $score);
        $this->assertEquals('Poor', $score->getName());

        // Test non-existing ID
        $this->expectException(FfbTableException::class);
        $this->scoresTable->get(999);
    }

    public function testFindAll()
    {
        // Get all scores
        $result = $this->scoresTable->findAll([]);
        $this->assertCount(6, $result);

        // Verify all items are Score instances
        $this->assertContainsOnlyInstancesOf(Score::class, $result);
    }

    public function testFindSearchedBy()
    {
        // Exact match
        $result = $this->scoresTable->findSearchedBy(['name' => '%T%']);
        $this->assertCount(4, $result);
        $this->assertEquals(3, $result[0]->getId());

        // Partial match with LIKE
        $result = $this->scoresTable->findSearchedBy(['name' => '%M%']);
        $this->assertCount(1, $result);

        // Operator match
        $result = $this->scoresTable->findSearchedBy(['id' => '> 3']);
        $this->assertCount(2, $result); // IDs 4 and 5
    }

    public function testFindOrderedBy()
    {
        // Order by name ASC
        $result = $this->scoresTable->findOrderedBy(['name' => 'ASC']);
        $this->assertEquals('Acceptable', $result[0]->getName());
        $this->assertEquals('Excellent', $result[1]->getName());

        // Order by id DESC
        $result = $this->scoresTable->findOrderedBy(['id' => 'DESC']);
        $this->assertEquals(5, $result[0]->getId());
        $this->assertEquals(4, $result[1]->getId());
    }

    public function testFindLimitedBy()
    {
        // Limit 2
        $result = $this->scoresTable->findLimitedBy(['limit' => 2]);
        $this->assertCount(2, $result);

        // Limit 3 with offset 2
        $result = $this->scoresTable->findLimitedBy(['limit' => 3, 'offset' => 2]);
        $this->assertCount(3, $result);
        $this->assertEquals(4, $result[0]->getId()); // Default order is by ID ASC
    }

    public function testComplexCombination()
    {
        // Search + Order + Limit
        $result = $this->scoresTable->findAll([
            'search' => ['name' => '%oo%'],
            'order' => ['name' => 'DESC'],
            'limit' => ['limit' => 2]
        ]);

        $expectedNames = ['Poor', 'Good'];
        $this->assertCount(2, $result);
        $this->assertEquals($expectedNames, [$result[0]->getName(), $result[1]->getName()]);
    }
}
