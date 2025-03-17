<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/ActionsTable.php';
require_once __DIR__ . '/../../src/entity/Action.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class ActionsTableTest extends TestCase
{
    private ActionsTable $actionsTable;

    /**
     * Set up the ActionsTable instance before each test.
     */
    protected function setUp(): void
    {
        $this->actionsTable = new ActionsTable("tests", "user");
    }

    /**
     * Test getting an action by its ID.
     * This test checks if the action with ID 1 can be retrieved correctly.
     */
    public function testGetActionById()
    {
        // Retrieve the action with ID 1
        $action = $this->actionsTable->get(1);

        // Assert that the ID and name of the action are as expected
        $this->assertEquals(1, $action->getId());
        $this->assertEquals("CREATION", $action->getName());
        // Assert that the retrieved object is an instance of Action
        $this->assertInstanceOf(Action::class, $action);
    }

    /**
     * Test getting an action by an ID that does not exist.
     * This test checks if an exception is thrown when trying to get an action with a non-existent ID.
     */
    public function testGetActionByIdNotFound()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->actionsTable->get(6);
    }

    /**
     * Test finding actions by exact match.
     * This test checks if the action with the exact name "DELETE" can be found.
     */
    public function testFindSearchedByEquality()
    {
        // Search for actions with the exact name "DELETE"
        $actions = $this->actionsTable->findSearchedBy([
            "name" => "DELETE"
        ]);

        // Assert that one action is found
        $this->assertCount(1, $actions);
        // Assert that the ID and name of the action are as expected
        $this->assertEquals(3, $actions[0]->getId());
        $this->assertEquals("DELETE", $actions[0]->getName());
        // Assert that the retrieved object is an instance of Action
        $this->assertInstanceOf(Action::class, $actions[0]);
    }

    /**
     * Test finding actions using a LIKE query.
     * This test checks if actions with names starting with "R" can be found using a LIKE query.
     */
    public function testFindSearchedByLike()
    {
        // Search for actions with names starting with "R"
        $actions = $this->actionsTable->findSearchedBy([
            "name" => "LIKE 'R%'"
        ]);

        // Assert that two actions are found
        $this->assertCount(2, $actions);
        // Assert that the IDs and names of the actions are as expected
        $this->assertEquals(5, $actions[0]->getId());
        $this->assertEquals("REMOVE", $actions[0]->getName());
        $this->assertEquals(4, $actions[1]->getId());
        $this->assertEquals("RESTORE", $actions[1]->getName());
        // Assert that the retrieved objects are instances of Action
        $this->assertInstanceOf(Action::class, $actions[0]);
        $this->assertInstanceOf(Action::class, $actions[1]);
    }

    /**
     * Test finding actions with a condition greater than a specified value.
     * This test checks if actions with IDs greater than 2 can be found.
     */
    public function testFindSearchedBySuperior()
    {
        // Search for actions with IDs greater than 2
        $actions = $this->actionsTable->findSearchedBy([
            "id" => "> 2"
        ]);

        // Assert that three actions are found
        $this->assertCount(3, $actions);
        // Assert that the IDs and names of the actions are as expected
        $this->assertEquals(3, $actions[0]->getId());
        $this->assertEquals("DELETE", $actions[0]->getName());
        $this->assertEquals(4, $actions[1]->getId());
        $this->assertEquals("RESTORE", $actions[1]->getName());
        $this->assertEquals(5, $actions[2]->getId());
        $this->assertEquals("REMOVE", $actions[2]->getName());
        // Assert that the retrieved objects are instances of Action
        $this->assertInstanceOf(Action::class, $actions[0]);
        $this->assertInstanceOf(Action::class, $actions[1]);
        $this->assertInstanceOf(Action::class, $actions[2]);
    }

    /**
     * Test finding actions ordered by name in ascending order.
     * This test checks if actions can be ordered by name in ascending order.
     */
    public function testFindOrderedByAsc()
    {
        // Retrieve actions ordered by name in ascending order
        $actions = $this->actionsTable->findOrderedBy([
            "name" => "ASC"
        ]);

        // Assert that five actions are found
        $this->assertCount(5, $actions);
        // Assert that the IDs and names of the actions are as expected
        $this->assertEquals(1, $actions[0]->getId());
        $this->assertEquals("CREATION", $actions[0]->getName());
        $this->assertEquals(3, $actions[1]->getId());
        $this->assertEquals("DELETE", $actions[1]->getName());
        $this->assertEquals(5, $actions[2]->getId());
        $this->assertEquals("REMOVE", $actions[2]->getName());
        $this->assertEquals(4, $actions[3]->getId());
        $this->assertEquals("RESTORE", $actions[3]->getName());
        $this->assertEquals(2, $actions[4]->getId());
        $this->assertEquals("UPDATE", $actions[4]->getName());
        // Assert that the retrieved objects are instances of Action
        foreach ($actions as $action) {
            $this->assertInstanceOf(Action::class, $action);
        }
    }

    /**
     * Test finding actions ordered by ID in descending order.
     * This test checks if actions can be ordered by ID in descending order.
     */
    public function testFindOrderedByDesc()
    {
        // Retrieve actions ordered by ID in descending order
        $actions = $this->actionsTable->findOrderedBy([
            "id" => "DESC"
        ]);

        // Assert that five actions are found
        $this->assertCount(5, $actions);
        // Assert that the IDs and names of the actions are as expected
        $this->assertEquals(5, $actions[0]->getId());
        $this->assertEquals("REMOVE", $actions[0]->getName());
        $this->assertEquals(4, $actions[1]->getId());
        $this->assertEquals("RESTORE", $actions[1]->getName());
        $this->assertEquals(3, $actions[2]->getId());
        $this->assertEquals("DELETE", $actions[2]->getName());
        $this->assertEquals(2, $actions[3]->getId());
        $this->assertEquals("UPDATE", $actions[3]->getName());
        $this->assertEquals(1, $actions[4]->getId());
        $this->assertEquals("CREATION", $actions[4]->getName());
        // Assert that the retrieved objects are instances of Action
        foreach ($actions as $action) {
            $this->assertInstanceOf(Action::class, $action);
        }
    }

    /**
     * Test finding actions with a limit of 2.
     * This test checks if only 2 actions can be retrieved when a limit is set.
     */
    public function testFindLimitedBy02()
    {
        // Retrieve actions with a limit of 2
        $actions = $this->actionsTable->findLimitedBy([
            "limit" => 2
        ]);

        // Assert that two actions are found
        $this->assertCount(2, $actions);
        // Assert that the IDs and names of the actions are as expected
        $this->assertEquals(1, $actions[0]->getId());
        $this->assertEquals("CREATION", $actions[0]->getName());
        $this->assertEquals(3, $actions[1]->getId());
        $this->assertEquals("DELETE", $actions[1]->getName());
        // Assert that the retrieved objects are instances of Action
        foreach ($actions as $action) {
            $this->assertInstanceOf(Action::class, $action);
        }
    }

    /**
     * Test finding actions with a limit of 1 and an offset of 1.
     * This test checks if the second action can be retrieved when a limit of 1 and an offset of 1 are set.
     */
    public function testFindLimitedBy11()
    {
        // Retrieve actions with a limit of 1 and an offset of 1
        $actions = $this->actionsTable->findLimitedBy([
            "limit" => 1,
            "offset" => 1
        ]);

        // Assert that one action is found
        $this->assertCount(1, $actions);
        // Assert that the ID and name of the action are as expected
        $this->assertEquals(3, $actions[0]->getId());
        $this->assertEquals("DELETE", $actions[0]->getName());
        // Assert that the retrieved object is an instance of Action
        $this->assertInstanceOf(Action::class, $actions[0]);
    }

    /**
     * Test finding all actions with search, order, and limit conditions.
     * This test checks if actions can be found with combined search, order, and limit conditions.
     */
    public function testFindAll()
    {
        // Retrieve actions with combined search, order, and limit conditions
        $actions = $this->actionsTable->findAll(["search" => [
            "name" => "LIKE 'R%'"
        ], "order" => [
            "name" => "DESC"
        ], "limit" => [
            "limit" => 0,
            "offset" => 2
        ]]);

        // Assert that two actions are found
        $this->assertCount(2, $actions);
        // Assert that the IDs and names of the actions are as expected
        $this->assertEquals(4, $actions[0]->getId());
        $this->assertEquals("RESTORE", $actions[0]->getName());
        $this->assertEquals(5, $actions[1]->getId());
        $this->assertEquals("REMOVE", $actions[1]->getName());
        // Assert that the retrieved objects are instances of Action
        foreach ($actions as $action) {
            $this->assertInstanceOf(Action::class, $action);
        }
    }

    /**
     * Test finding actions with multiple search criteria.
     * This test checks if actions can be found with multiple search criteria.
     */
    public function testFindSearchedByMultipleCriteria()
    {
        // Search for actions with names starting with "R" and IDs greater than 2
        $actions = $this->actionsTable->findSearchedBy([
            "name" => "LIKE 'R%'",
            "id" => "> 2"
        ]);

        // Assert that two actions are found
        $this->assertCount(2, $actions);
        // Assert that the IDs and names of the actions are as expected
        $this->assertEquals(5, $actions[0]->getId());
        $this->assertEquals("REMOVE", $actions[0]->getName());
        $this->assertEquals(4, $actions[1]->getId());
        $this->assertEquals("RESTORE", $actions[1]->getName());
        // Assert that the retrieved objects are instances of Action
        $this->assertInstanceOf(Action::class, $actions[0]);
        $this->assertInstanceOf(Action::class, $actions[1]);
    }

    /**
     * Test finding actions with complex order and limit conditions.
     * This test checks if actions can be found with complex order and limit conditions.
     */
    public function testFindAllWithComplexConditions()
    {
        // Retrieve actions with complex order and limit conditions
        $actions = $this->actionsTable->findAll([
            "search" => [
                "name" => "LIKE 'R%'"
            ],
            "order" => [
                "id" => "ASC"
            ],
            "limit" => [
                "limit" => 1,
                "offset" => 1
            ]
        ]);

        // Assert that one action is found
        $this->assertCount(1, $actions);
        // Assert that the ID and name of the action are as expected
        $this->assertEquals(5, $actions[0]->getId());
        $this->assertEquals("REMOVE", $actions[0]->getName());
        // Assert that the retrieved object is an instance of Action
        $this->assertInstanceOf(Action::class, $actions[0]);
    }
}
