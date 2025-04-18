<?php

require_once __DIR__ . "/../../src/builder/AuthorBuilder.php";
require_once __DIR__ . "/../../src/builder/CharacterBuilder.php";
require_once __DIR__ . "/../../src/builder/FandomBuilder.php";
require_once __DIR__ . "/../../src/builder/FanfictionBuilder.php";
require_once __DIR__ . "/../../src/builder/LanguageBuilder.php";
require_once __DIR__ . "/../../src/builder/RelationBuilder.php";
require_once __DIR__ . "/../../src/builder/SeriesBuilder.php";
require_once __DIR__ . "/../../src/builder/TagBuilder.php";
require_once __DIR__ . "/../../tests/builder/EntityBuilderTestCase.php";

/**
 * @group abstract
 */
abstract class NamedEntityBuilderTestCase extends EntityBuilderTestCase
{
    protected function setUp(): void
    {
        if (static::class === self::class) { // Check if it's the abstract class
            $this->markTestSkipped('Abstract base test skipped.');
        }
        parent::setUp();
        $this->builder = $this->getBuilder();
    }

    public function testWithName(): void
    {
        $name = "Test Entity";
        $entity = $this->builder->withName($name)->build();
        $this->assertEquals($name, $entity->getName());
    }
}
