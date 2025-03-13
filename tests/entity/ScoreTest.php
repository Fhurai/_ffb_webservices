<?php

require_once __DIR__ . "/../../src/entity/Score.php";

use PHPUnit\Framework\TestCase;

/**
 * Class ScoreTest
 *
 * This class contains unit tests for the Score entity.
 * It extends the TestCase class provided by the PHPUnit framework.
 *
 * @package Tests\Entity
 */
class ScoreTest extends TestCase
{
    /**
     * Tests the Score class.
     *
     * This test verifies that an instance of the Score class can be created
     * and that its class name matches the expected class name.
     *
     * @return void
     */
    public function testScoreClass(): void
    {
        $score = new Score();

        $this->assertEquals(Score::class, get_class($score));
    }

    /**
     * Test the creation of a new Score object.
     *
     * This test verifies that the `getNewObject` method of the `Score` class
     * correctly creates and returns a new instance of the `Score` class.
     *
     * @return void
     */
    public function testScoreNewObject(): void
    {
        $score = Score::getNewObject();

        $this->assertEquals(Score::class, get_class($score));
    }

    /**
     * Tests the jsonUnserialize method of the Score class.
     *
     * This test verifies that the jsonUnserialize method correctly
     * deserializes a JSON string into a Score object with the expected
     * properties.
     *
     * @return void
     */
    public function testScoreUnserialize(): void
    {
        $identifiant = 3;
        $points = "Acceptable";

        $score = Score::jsonUnserialize("{\"id\": \"{$identifiant}\", \"name\": \"{$points}\"}");

        $this->assertEquals($identifiant, $score->getId());
        $this->assertEquals($points, $score->getName());
    }
}
