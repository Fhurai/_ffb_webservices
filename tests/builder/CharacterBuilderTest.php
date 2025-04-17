<?php

require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";
require_once __DIR__ . "/../../src/entity/Fandom.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\Character::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\CharacterBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ComplexEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
class CharacterBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new CharacterBuilder();
    }
    public function testWithFandomIdUsingInteger(): void
    {
        $fandomId = 7;
        $entity = $this->builder->withFandomId($fandomId)->build();
        $this->assertEquals($fandomId, $entity->getFandomId());
    }
    public function testWithFandomIdUsingFandom(): void
    {
        $fandom = new Fandom();
        $fandom->setId(12);
        $entity = $this->builder->withFandomId($fandom)->build();
        $this->assertEquals($fandom->getId(), $entity->getFandomId());
    }
    public function testWithFandom(): void
    {
        $fandom = new Fandom();
        $fandom->setId(15);
        $entity = $this->builder->withFandom($fandom)->build();
        $this->assertSame($fandom, $entity->getFandom());
        $this->assertEquals($fandom->getId(), $entity->getFandomId());
    }
}
