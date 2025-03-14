<?php

require_once __DIR__ . "/../../src/entity/Fandom.php";
require_once __DIR__ . "/../../tests/entity/NamedEntityTest.php";

/**
 * FandomTest class.
 */
class FandomTest extends NamedEntityTest
{
    protected function setUp(): void
    {
        $this->entity = new Fandom();
    }
    /**
     * Test the constructor of Fandom.
     */
    public function testConstructor()
    {
        $this->assertInstanceOf(Fandom::class, $this->entity);
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