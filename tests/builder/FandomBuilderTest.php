<?php

require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FandomBuilder::class)]
class FandomBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new FandomBuilder();
    }
}
