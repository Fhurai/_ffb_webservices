<?php

require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";

class AuthorBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new AuthorBuilder();
    }
}
