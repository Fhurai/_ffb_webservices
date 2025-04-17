<?php

require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";
require_once __DIR__ . "/../../src/entity/Fanfiction.php";
require_once __DIR__ . "/../../src/entity/Fandom.php";
require_once __DIR__ . "/../../src/entity/Character.php";
require_once __DIR__ . "/../../src/entity/Relation.php";
require_once __DIR__ . "/../../src/entity/Tag.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\Character::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ComplexEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EvaluableTrait::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Fanfiction::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FanfictionBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Relation::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Tag::class)]
class FanfictionBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new FanfictionBuilder();
    }
    public function testWithAuthorId(): void
    {
        $authorId = 42;
        $entity = $this->builder->withAuthorId($authorId)->build();
        $this->assertEquals($authorId, $entity->getAuthorId());
    }
    public function testWithRatingId(): void
    {
        $ratingId = 5;
        $entity = $this->builder->withRatingId($ratingId)->build();
        $this->assertEquals($ratingId, $entity->getRatingId());
    }
    public function testWithDescription(): void
    {
        $description = "Epic space adventure";
        $entity = $this->builder->withDescription($description)->build();
        $this->assertEquals($description, $entity->getDescription());
    }
    public function testWithLanguageId(): void
    {
        $languageId = 1;
        $entity = $this->builder->withLanguageId($languageId)->build();
        $this->assertEquals($languageId, $entity->getLanguageId());
    }
    public function testWithScoreId(): void
    {
        $scoreId = 99;
        $entity = $this->builder->withScoreId($scoreId)->build();
        $this->assertEquals($scoreId, $entity->getScoreId());
    }
    public function testWithEvaluation(): void
    {
        $evaluation = "Highly recommended";
        $entity = $this->builder->withEvaluation($evaluation)->build();
        $this->assertEquals($evaluation, $entity->getEvaluation());
    }
    public function testAddFandom(): void
    {
        $fandom1 = new Fandom();
        $fandom1->setName("Star Wars");
        $fandom2 = new Fandom();
        $fandom2->setName("Star Trek");
        $entity = $this->builder->addFandom($fandom2)->addFandom($fandom1)->build();
        $this->assertEquals([$fandom2, $fandom1], $entity->getFandoms());
    }
    public function testWithCharactersSorted(): void
    {
        $characterA = new Character();
        $characterA->setName("Zorro");
        $characterB = new Character();
        $characterB->setName("Alice");
        $entity = $this->builder->withCharacters([$characterA, $characterB])->build();
        $this->assertEquals([$characterB, $characterA], $entity->getCharacters());
    }
    public function testAddCharacterSortsCollection(): void
    {
        $characterZ = new Character();
        $characterZ->setName("Zaphod");
        $characterA = new Character();
        $characterA->setName("Arthur");
        $entity = $this->builder->addCharacter($characterZ)->addCharacter($characterA)->build();
        $this->assertEquals([$characterA, $characterZ], $entity->getCharacters());
    }
    public function testWithRelations(): void
    {
        $relation1 = new Relation();
        $relation1->setName("Rivalry");
        $relation2 = new Relation();
        $relation2->setName("Friendship");
        $entity = $this->builder->withRelations([$relation1, $relation2])->build();
        $this->assertEquals([$relation2, $relation1], $entity->getRelations());
    }
    public function testAddRelationSortsCollection(): void
    {
        $relationB = new Relation();
        $relationB->setName("Bond");
        $relationA = new Relation();
        $relationA->setName("Alliance");
        $entity = $this->builder->addRelation($relationB)->addRelation($relationA)->build();
        $this->assertEquals([$relationA, $relationB], $entity->getRelations());
    }
    public function testWithTags(): void
    {
        $tag1 = new Tag();
        $tag1->setName("Sci-Fi");
        $tag2 = new Tag();
        $tag2->setName("Adventure");
        $entity = $this->builder->withTags([$tag1, $tag2])->build();
        $this->assertEquals([$tag2, $tag1], $entity->getTags());
    }
    public function testAddTagSortsCollection(): void
    {
        $tagZ = new Tag();
        $tagZ->setName("Zombies");
        $tagA = new Tag();
        $tagA->setName("Aliens");
        $entity = $this->builder->addTag($tagZ)->addTag($tagA)->build();
        $this->assertEquals([$tagA, $tagZ], $entity->getTags());
    }
    public function testWithInvalidFandomType(): void
    {
        $this->expectException(TypeError::class);
        $this->builder->addFandom(new Character());
    }
    public function testWithInvalidCharacterType(): void
    {
        $this->expectException(InvalidArgumentException::class);
        $this->builder->withCharacters([new Fandom()]);
    }
}
