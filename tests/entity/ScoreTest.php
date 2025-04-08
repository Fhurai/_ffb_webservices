<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Score.php';

/**
 * Unit tests for the Score class.
 */
class ScoreTest extends TestCase
{
    /**
     * Tests that the constructor initializes properties correctly.
     */
    public function testConstructorInitializesProperties()
    {
        // Arrange: Define test data
        $id = 1;
        $name = 'Test Score';

        // Act: Create a new Score instance
        $score = new Score($id, $name);

        // Assert: Verify that the properties are initialized correctly
        $this->assertSame($id, $score->getId());
        $this->assertSame($name, $score->getName());
    }

    /**
     * Tests that the getNewObject method creates a new Score instance.
     */
    public function testGetNewObjectCreatesInstance()
    {
        // Arrange: Define test data
        $id = 2;
        $name = 'New Test Score';

        // Act: Use the static method to create a new Score instance
        $score = Score::getNewObject($id, $name);

        // Assert: Verify that the new instance is of the correct type and has the correct properties
        $this->assertInstanceOf(Score::class, $score);
        $this->assertSame($id, $score->getId());
        $this->assertSame($name, $score->getName());
    }
}
