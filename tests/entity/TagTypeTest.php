<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/TagType.php';

/**
 * Unit tests for the TagType class.
 */
class TagTypeTest extends TestCase
{
    /**
     * Tests that the constructor correctly initializes properties.
     */
    public function testConstructorInitializesProperties()
    {
        $id = 1;
        $name = 'Test TagType';
        $tagType = new TagType($id, $name);

        $this->assertSame($id, $tagType->getId());
        $this->assertSame($name, $tagType->getName());
    }

    /**
     * Tests the getNewObject static method creates a new TagType instance.
     */
    public function testGetNewObjectCreatesInstance()
    {
        $id = 2;
        $name = 'Another TagType';
        $tagType = TagType::getNewObject($id, $name);

        $this->assertInstanceOf(TagType::class, $tagType);
        $this->assertSame($id, $tagType->getId());
        $this->assertSame($name, $tagType->getName());
    }
}
