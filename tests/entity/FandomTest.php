<?php

require_once __DIR__ . "/../../src/entity/Fandom.php";
require_once __DIR__ . "/../../tests/entity/NamedEntityTest.php";

/**
 * FandomTest class.
 */
class FandomTest extends NamedEntityTest
{
    /**
     * Test the constructor of Fandom.
     */
    public function testConstructor()
    {
        $fandom = new Fandom();
        $this->assertInstanceOf(Fandom::class, $fandom);
    }

    /**
     * Test the getNewObject method.
     */
    public function testGetNewObject()
    {
        $fandom = Fandom::getNewObject();
        $this->assertInstanceOf(Fandom::class, $fandom);
    }
}