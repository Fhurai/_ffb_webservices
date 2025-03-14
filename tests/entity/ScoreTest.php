<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Score.php';

class ScoreTest extends TestCase
{
    public function testConstructorInitializesProperties()
    {
        $id = 1;
        $name = 'Test Score';
        $score = new Score($id, $name);

        $this->assertSame($id, $score->getId());
        $this->assertSame($name, $score->getName());
    }
}