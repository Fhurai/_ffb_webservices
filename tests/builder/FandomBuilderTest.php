<?php

require_once __DIR__ . "/../../tests/builder/NamedEntityBuilderTestCase.php";

class FandomBuilderTest extends NamedEntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new FandomBuilder();
    }
}
