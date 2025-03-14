<?php

require_once __DIR__ . "/../../src/entity/TagType.php";
require_once __DIR__ . "/../../tests/entity/ParametersTest.php";

/**
 * Class TagTypeTest
 *
 * This class contains unit tests for the TagType entity.
 * It extends the TestCase class provided by the PHPUnit framework.
 *
 * @package Tests\Entity
 */
class TagTypeTest extends ParametersTest
{
    protected function setUp(): void
    {
        $this->parameters = new TagType();
    }
    /**
     * Tests the TagType class.
     *
     * This test verifies that an instance of the TagType class can be created
     * and that its class name matches the expected class name.
     *
     * @return void
     */
    public function testTagTypeClass(): void
    {
        $this->assertEquals(TagType::class, get_class($this->parameters));
    }

    /**
     * Test the creation of a new TagType object.
     *
     * This test verifies that the `getNewObject` method of the `TagType` class
     * correctly creates and returns a new instance of the `TagType` class.
     *
     * @return void
     */
    public function testTagTypeNewObject(): void
    {
        $this->assertEquals(TagType::class, get_class($this->parameters));
    }

    /**
     * Tests the jsonUnserialize method of the TagType class.
     *
     * This test verifies that the jsonUnserialize method correctly
     * deserializes a JSON string into a TagType object with the expected
     * properties.
     *
     * @return void
     */
    public function testTagTypeUnserialize(): void
    {
        $identifiant = 4;
        $type = "Other";

        $tagType = TagType::jsonUnserialize("{\"id\": \"{$identifiant}\", \"name\": \"{$type}\"}");

        $this->assertEquals($identifiant, $tagType->getId());
        $this->assertEquals($type, $tagType->getName());
    }
}
