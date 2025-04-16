<?php require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";
require_once __DIR__ . "/../../src/entity/Series.php";
require_once __DIR__ . "/../../src/entity/Fanfiction.php";
class SeriesBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new SeriesBuilder();
    }
    public function testWithDescription(): void
    {
        $description = "A thrilling trilogy";
        $entity = $this->builder->withDescription($description)->build();
        $this->assertEquals($description, $entity->getDescription());
    }
    public function testWithScoreId(): void
    {
        $scoreId = 85;
        $entity = $this->builder->withScoreId($scoreId)->build();
        $this->assertEquals($scoreId, $entity->getScoreId());
    }
    public function testWithEvaluation(): void
    {
        $evaluation = "Masterpiece";
        $entity = $this->builder->withEvaluation($evaluation)->build();
        $this->assertEquals($evaluation, $entity->getEvaluation());
    }
    public function testWithFanfictionsSorted(): void
    {
        $fanficA = new Fanfiction();
        $fanficA->setName("Zeta Story");
        $fanficB = new Fanfiction();
        $fanficB->setName("Alpha Tale");
        $entity = $this->builder->withFanfictions([$fanficA, $fanficB])->build();
        $this->assertEquals([$fanficB, $fanficA], $entity->getFanfictions());
    }
    public function testAddFandomSortsCollection(): void
    {
        $fanficZ = new Fanfiction();
        $fanficZ->setName("Zorro Chronicles");
        $fanficA = new Fanfiction();
        $fanficA->setName("Arthur Quest");
        $entity = $this->builder->addFandom($fanficZ)->addFandom($fanficA)->build();
        $this->assertEquals([$fanficA, $fanficZ], $entity->getFanfictions());
    }
    public function testWithInvalidFanfictionType(): void
    {
        $this->expectException(InvalidArgumentException::class);
        $this->builder->withFanfictions([new Fandom()]);
    }
}
