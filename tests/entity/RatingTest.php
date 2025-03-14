<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Rating.php';

class RatingTest extends TestCase
{
    public function testConstructorInitializesProperties()
    {
        $id = 1;
        $name = 'Test Rating';
        $rating = new Rating($id, $name);

        $this->assertSame($id, $rating->getId());
        $this->assertSame($name, $rating->getName());
    }
}