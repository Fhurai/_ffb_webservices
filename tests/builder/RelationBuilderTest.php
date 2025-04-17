<?php require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";
require_once __DIR__ . "/../../src/entity/Relation.php";
require_once __DIR__ . "/../../src/entity/Character.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\Character::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ComplexEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Relation::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\RelationBuilder::class)]
class RelationBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new RelationBuilder();
    }
    public function testWithCharactersWithValidCharacters(): void
    {
        $character1 = new Character();
        $character1->setName("Zeta");
        $character2 = new Character();
        $character2->setName("Alpha");
        $entity = $this->builder->withCharacters([$character1, $character2])->build();
        $this->assertSame([$character1, $character2], $entity->characters);
        $this->assertEquals("Zeta / Alpha", $entity->getName());
    }
    public function testWithCharactersWithInvalidElements(): void
    {
        $this->expectException(InvalidArgumentException::class);
        $this->builder->withCharacters([new Character(), "InvalidElement"]);
    }
    public function testAddCharacterSingle(): void
    {
        $character = new Character();
        $character->setName("Beta");
        $entity = $this->builder->addCharacter($character)->build();
        $this->assertSame([$character], $entity->characters);
        $this->assertEquals("Beta", $entity->getName());
    }
    public function testAddMultipleCharactersSorted(): void
    {
        $characterA = new Character();
        $characterA->setName("Alpha");
        $characterZ = new Character();
        $characterZ->setName("Zeta");
        $entity = $this->builder->addCharacter($characterZ)->addCharacter($characterA)->build();
        $this->assertSame([$characterA, $characterZ], $entity->characters);
        $this->assertEquals("Alpha / Zeta", $entity->getName());
    }
}
