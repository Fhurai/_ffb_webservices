<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Action.php';

/**
 * Unit tests for the Action class.
 */
#[CoversClass(\Parameters::class)]
#[CoversClass(\ParameterTrait::class)]
#[CoversClass(\Action::class)]
class ActionTest extends TestCase
{
    /**
     * Tests that the constructor correctly initializes properties.
     */
    public function testConstructorInitializesProperties()
    {
        // Arrange: Define test data for the Action constructor.
        $id = 1;
        $name = 'Test Action';

        // Act: Create a new Action instance using the constructor.
        $action = new Action($id, $name);

        // Assert: Verify that the properties are correctly initialized.
        $this->assertSame($id, $action->getId());
        $this->assertSame($name, $action->getName());
    }

    /**
     * Tests that the getNewObject method creates a new Action instance.
     */
    public function testGetNewObjectCreatesNewInstance()
    {
        // Arrange: Define test data for the getNewObject method.
        $id = 2;
        $name = 'New Action';

        // Act: Call the static getNewObject method to create a new Action instance.
        $action = Action::getNewObject($id, $name);

        // Assert: Verify that the returned object is an instance of Action
        // and that its properties are correctly initialized.
        $this->assertInstanceOf(Action::class, $action);
        $this->assertSame($id, $action->getId());
        $this->assertSame($name, $action->getName());
    }
}
