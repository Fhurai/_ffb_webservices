<?php

require_once __DIR__ . "/../../src/entity/Score.php";
require_once __DIR__ . "/../../tests/entity/ParametersTest.php";

/**
 * Class ScoreTest
 *
 * This class contains unit tests for the Score entity.
 * It extends the TestCase class provided by the PHPUnit framework.
 *
 * @package Tests\Entity
 */
class ScoreTest extends ParametersTest
{
    protected function setUp(): void
    {
        $this->parameters = new Score(3, "Acceptable");
    }
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
        $this->assertEquals(Score::class, get_class($this->parameters));
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
        $this->assertEquals(Score::class, get_class($this->parameters));
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
