<?php

require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\AuthorBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
class AuthorBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new AuthorBuilder();
    }
}
