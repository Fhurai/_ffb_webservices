<?php

require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";
require_once __DIR__ . "/../../src/builder/LanguageBuilder.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Language::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\LanguageBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
class LanguageBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new LanguageBuilder();
    }
    public function testWithAbbreviation(): void
    {
        $abbreviation = "EN";
        $entity = $this->builder->withAbbreviation($abbreviation)->build();
        $this->assertEquals($abbreviation, $entity->getAbbreviation());
    }
}
