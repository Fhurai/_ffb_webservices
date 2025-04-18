<?php require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";
require_once __DIR__ . "/../../src/entity/Series.php";
require_once __DIR__ . "/../../src/entity/Fanfiction.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\ComplexEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EvaluableTrait::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Fanfiction::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Series::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\SeriesBuilder::class)]
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

    public function testWithInvalidFanfictionType(): void
    {
        $this->expectException(InvalidArgumentException::class);
        $this->builder->withFanfictions([new Fandom()]);
    }
}
