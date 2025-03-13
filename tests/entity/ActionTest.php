<?php

require_once __DIR__ . "/../../src/entity/Action.php";

use PHPUnit\Framework\TestCase;

/**
 * Class ActionTest
 *
 * This class contains unit tests for the Action entity.
 * It extends the TestCase class provided by the PHPUnit framework.
 *
 * @package Tests\Entity
 */
class ActionTest extends TestCase
{
    /**
     * Tests the Action class.
     *
     * This test verifies that an instance of the Action class can be created
     * and that its class name matches the expected class name.
     *
     * @return void
     */
    public function testActionClass(): void
    {
        $action = new Action();

        $this->assertEquals(Action::class, get_class($action));
    }

    /**
     * Test the creation of a new Action object.
     *
     * This test verifies that the `getNewObject` method of the `Action` class
     * correctly creates and returns a new instance of the `Action` class.
     *
     * @return void
     */
    public function testActionNewObject(): void
    {
        $action = Action::getNewObject();

        $this->assertEquals(Action::class, get_class($action));
    }

    /**
     * Tests the jsonUnserialize method of the Action class.
     *
     * This test verifies that the jsonUnserialize method correctly
     * deserializes a JSON string into an Action object with the expected
     * properties.
     *
     * @return void
     */
    public function testActionUnserialize(): void
    {
        $identifiant = 1;
        $name = "CREATION";

        $action = Action::jsonUnserialize("{\"id\": \"{$identifiant}\", \"name\": \"{$name}\"}");

        $this->assertEquals($identifiant, $action->getId());
        $this->assertEquals($name, $action->getName());
    }
}