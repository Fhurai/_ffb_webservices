<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Rating.php';

/**
 * Unit tests for the Rating class.
 */
#[CoversClass(\Rating::class)]
class RatingTest extends TestCase
{
    /**
     * Tests that the constructor initializes properties correctly.
     */
    public function testConstructorInitializesProperties()
    {
        // Arrange: Define test data.
        $id = 1;
        $name = 'Test Rating';

        // Act: Create a new Rating instance.
        $rating = new Rating($id, $name);

        // Assert: Verify that the properties are initialized correctly.
        $this->assertSame($id, $rating->getId());
        $this->assertSame($name, $rating->getName());
    }

    /**
     * Tests that the getNewObject method creates a new Rating instance.
     */
    public function testGetNewObjectCreatesInstance()
    {
        // Arrange: Define test data.
        $id = 2;
        $name = 'New Rating';

        // Act: Use the getNewObject method to create a new Rating instance.
        $rating = Rating::getNewObject($id, $name);

        // Assert: Verify that the new instance is of the correct type and has the expected properties.
        $this->assertInstanceOf(Rating::class, $rating);
        $this->assertSame($id, $rating->getId());
        $this->assertSame($name, $rating->getName());
    }
}
