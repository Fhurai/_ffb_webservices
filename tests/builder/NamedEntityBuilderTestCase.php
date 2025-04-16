<?php

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
