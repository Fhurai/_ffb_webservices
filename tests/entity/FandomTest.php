<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Fandom.php';

class FandomTest extends TestCase
{
    public function testConstructorInitializesDefaultValues()
    {
        $fandom = new Fandom();
        $this->assertSame('', $fandom->getName());
        $this->assertEquals(0, $fandom->getId());
    }

    public function testNameSetterAndGetter()
    {
        $fandom = new Fandom();
        $testName = 'Lord of the Rings Fandom';
        
        $fandom->setName($testName);
        $this->assertSame($testName, $fandom->getName());
    }

    public function testJsonSerializationContainsRequiredFields()
    {
        $fandom = new Fandom();
        $fandom->setName('Star Wars Universe');
        $data = $fandom->jsonSerialize();

        $this->assertArrayHasKey('id', $data);
        $this->assertArrayHasKey('name', $data);
        $this->assertEquals($fandom->getId(), $data['id']);
        $this->assertEquals('Star Wars Universe', $data['name']);
    }

    public function testGetNewObjectReturnsFandomInstance()
    {
        $fandom = Fandom::getNewObject();
        $this->assertInstanceOf(Fandom::class, $fandom);
    }

    public function testNameModificationPersists()
    {
        $fandom = new Fandom();
        $originalName = 'Initial Name';
        $modifiedName = 'Updated Name';

        $fandom->setName($originalName);
        $this->assertSame($originalName, $fandom->getName());

        $fandom->setName($modifiedName);
        $this->assertSame($modifiedName, $fandom->getName());
    }
}