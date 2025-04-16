<?php

use PHPUnit\Framework\TestCase;

/**
 * @group abstract
 */
abstract class EntityBuilderTestCase extends TestCase
{
    protected mixed $builder;
    protected function setUp(): void
    {
        if (static::class === self::class) { // Check if it's the abstract class
            $this->markTestSkipped('Abstract base test skipped.');
        }
        parent::setUp();
        $this->builder = $this->getBuilder();
    }
    abstract protected function getBuilder(): mixed;
    public function testWithIdWithInteger(): void
    {
        $entity = $this->builder->withId(123)->build();
        $this->assertEquals(123, $entity->getId());
    }
    public function testWithIdWithString(): void
    {
        $entity = $this->builder->withId('456')->build();
        $this->assertEquals(456, $entity->getId());
    }
    public function testWithCreationDateUsingDateTime(): void
    {
        $date = new DateTime('now', new DateTimeZone('Europe/Paris'));
        $entity = $this->builder->withCreationDate($date)->build();
        $this->assertEquals($date, $entity->getCreationDate());
    }
    public function testWithCreationDateUsingString(): void
    {
        $dateString = '2023-10-01 12:34:56';
        $expectedDate = DateTime::createFromFormat('Y-m-d H:i:s', $dateString, new DateTimeZone('Europe/Paris'));
        $entity = $this->builder->withCreationDate($dateString)->build();
        $this->assertEquals($expectedDate, $entity->getCreationDate());
    }
    public function testWithDeleteDateWithNull(): void
    {
        $entity = $this->builder->withDeleteDate(null)->build();
        $this->assertNull($entity->getDeleteDate());
    }
}
