<?php

require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";
require_once __DIR__ . "/../../src/builder/TagBuilder.php";
require_once __DIR__ . "/../../src/entity/TagType.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\ComplexEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Parameters::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Tag::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\TagBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\TagType::class)]
class TagBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new TagBuilder();
    }
    public function testWithDescription(): void
    {
        $description = "Test description";
        $entity = $this->builder->withDescription($description)->build();
        $this->assertEquals($description, $entity->getDescription());
    }
    public function testWithTypeIdUsingInteger(): void
    {
        $typeId = 5;
        $entity = $this->builder->withTypeId($typeId)->build();
        $this->assertEquals($typeId, $entity->getTypeId());
    }
    public function testWithTypeIdUsingTagType(): void
    {
        $tagType = new TagType(1, "Genre");
        $entity = $this->builder->withTypeId($tagType)->build();
        $this->assertEquals($tagType->getId(), $entity->getTypeId());
    }
    public function testWithType(): void
    {
        $tagType = new TagType(1, "Genre");
        $entity = $this->builder->withType($tagType)->build();
        $this->assertSame($tagType, $entity->type);
        $this->assertEquals($tagType->getId(), $entity->getTypeId());
    }
}
