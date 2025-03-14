<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/TagType.php';

class TagTypeTest extends TestCase
{
    public function testConstructorInitializesProperties()
    {
        $id = 1;
        $name = 'Test TagType';
        $tagType = new TagType($id, $name);

        $this->assertSame($id, $tagType->getId());
        $this->assertSame($name, $tagType->getName());
    }
}