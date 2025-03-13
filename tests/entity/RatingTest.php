<?php

require_once __DIR__ . "/../../src/entity/Rating.php";

use PHPUnit\Framework\TestCase;

/**
 * Class RatingTest
 *
 * This class contains unit tests for the Rating entity.
 * It extends the TestCase class provided by the PHPUnit framework.
 *
 * @package Tests\Entity
 */
class RatingTest extends TestCase
{
    /**
     * Tests the Rating class.
     *
     * This test verifies that an instance of the Rating class can be created
     * and that its class name matches the expected class name.
     *
     * @return void
     */
    public function testRatingClass(): void
    {
        $rating = new Rating();

        $this->assertEquals(Rating::class, get_class($rating));
    }

    /**
     * Test the creation of a new Rating object.
     *
     * This test verifies that the `getNewObject` method of the `Rating` class
     * correctly creates and returns a new instance of the `Rating` class.
     *
     * @return void
     */
    public function testRatingNewObject(): void
    {
        $rating = Rating::getNewObject();

        $this->assertEquals(Rating::class, get_class($rating));
    }

    /**
     * Tests the jsonUnserialize method of the Rating class.
     *
     * This test verifies that the jsonUnserialize method correctly
     * deserializes a JSON string into a Rating object with the expected
     * properties.
     *
     * @return void
     */
    public function testRatingUnserialize(): void
    {
        $identifiant = 2;
        $value = "T / 12";

        $rating = Rating::jsonUnserialize("{\"id\": \"{$identifiant}\", \"name\": \"{$value}\"}");

        $this->assertEquals($identifiant, $rating->getId());
        $this->assertEquals($value, $rating->getName());
    }
}
