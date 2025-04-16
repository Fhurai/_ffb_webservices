<?php

require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";

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
