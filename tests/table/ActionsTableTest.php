<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Action.php';
require_once __DIR__ . '/../../src/table/ActionsTable.php';
require_once __DIR__ . '/../../src/table/Connection.php';

#[\PHPUnit\Framework\Attributes\CoversClass(Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(FfbException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(Parameters::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(ActionsTable::class)]
class ActionsTableTest extends TestCase
{
    private ActionsTable $actionsTable;

    protected function setUp(): void
    {
        // Create ActionsTable with real connection
        $this->actionsTable = new ActionsTable('tests', 'user');
    }

    public function testGet()
    {
        // Test existing ID
        $action = $this->actionsTable->get(1);
        $this->assertInstanceOf(Action::class, $action);
        $this->assertEquals('CREATION', $action->getName());

        // Test non-existing ID
        $this->expectException(FfbTableException::class);
        $this->actionsTable->get(999);
    }

    public function testFindAll()
    {
        // Get all actions
        $result = $this->actionsTable->findAll([]);
        $this->assertCount(5, $result);

        // Verify all items are Action instances
        $this->assertContainsOnlyInstancesOf(Action::class, $result);
    }

    public function testFindSearchedBy()
    {
        // Exact match
        $result = $this->actionsTable->findSearchedBy(['name' => 'UPDATE']);
        $this->assertCount(1, $result);
        $this->assertEquals(2, $result[0]->getId());

        // Partial match with LIKE
        $result = $this->actionsTable->findSearchedBy(['name' => '%E%']);
        $this->assertCount(5, $result); // CREATION, DELETE, UPDATE, RESTORE

        // Operator match
        $result = $this->actionsTable->findSearchedBy(['id' => '> 3']);
        $this->assertCount(2, $result); // IDs 4 and 5
    }

    public function testFindOrderedBy()
    {
        // Order by name ASC
        $result = $this->actionsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertEquals('CREATION', $result[0]->getName());
        $this->assertEquals('DELETE', $result[1]->getName());

        // Order by id DESC
        $result = $this->actionsTable->findOrderedBy(['id' => 'DESC']);
        $this->assertEquals(5, $result[0]->getId());
        $this->assertEquals(4, $result[1]->getId());
    }

    public function testFindLimitedBy()
    {
        // Limit 2
        $result = $this->actionsTable->findLimitedBy(['limit' => 2]);
        $this->assertCount(2, $result);

        // Limit 3 with offset 2
        $result = $this->actionsTable->findLimitedBy(['limit' => 3, 'offset' => 2]);
        $this->assertCount(3, $result);
        $this->assertEquals(5, $result[0]->getId()); // Default order is by ID ASC
    }

    public function testComplexCombination()
    {
        // Search + Order + Limit
        $result = $this->actionsTable->findAll(
            [
            'search' => ['name' => '%E%'],
            'order' => ['name' => 'DESC'],
            'limit' => ['limit' => 2]
            ]
        );

        $expectedNames = ['UPDATE', 'RESTORE'];
        $this->assertCount(2, $result);
        $this->assertEquals($expectedNames, [$result[0]->getName(), $result[1]->getName()]);
    }
}
