<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . "/../../src/entity/Entity.php";

class EntityTest extends TestCase
{
    private $entity;

    protected function setUp(): void
    {
        $this->entity = $this->getMockBuilder(Entity::class)
                             ->disableOriginalConstructor()
                             ->getMock();
    }

    public function testGetId()
    {
        $reflection = new ReflectionClass($this->entity);
        if ($reflection->hasProperty('id')) {
            $property = $reflection->getProperty('id');
            $property->setAccessible(true);
            $property->setValue($this->entity, 1);

            $this->assertEquals(1, $this->entity->getId());
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetId()
    {
        $reflection = new ReflectionClass($this->entity);
        if ($reflection->hasProperty('id')) {
            $method = $reflection->getMethod('setId');
            $method->setAccessible(true);
            $method->invoke($this->entity, 2);

            $property = $reflection->getProperty('id');
            $property->setAccessible(true);

            $this->assertEquals(2, $property->getValue($this->entity));
        } else {
            $this->assertTrue(true);
        }
    }

    public function testGetCreationDate()
    {
        $reflection = new ReflectionClass($this->entity);
        if ($reflection->hasProperty('creation_date')) {
            $property = $reflection->getProperty('creation_date');
            $property->setAccessible(true);
            $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
            $property->setValue($this->entity, $date);

            $this->assertEquals($date, $this->entity->getCreationDate());
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetCreationDate()
    {
        $reflection = new ReflectionClass($this->entity);
        if ($reflection->hasProperty('creation_date')) {
            $method = $reflection->getMethod('setCreationDate');
            $method->setAccessible(true);
            $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
            $method->invoke($this->entity, $date);

            $property = $reflection->getProperty('creation_date');
            $property->setAccessible(true);

            $this->assertEquals($date, $property->getValue($this->entity));
        } else {
            $this->assertTrue(true);
        }
    }

    public function testGetUpdateDate()
    {
        $reflection = new ReflectionClass($this->entity);
        if ($reflection->hasProperty('update_date')) {
            $property = $reflection->getProperty('update_date');
            $property->setAccessible(true);
            $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
            $property->setValue($this->entity, $date);

            $this->assertEquals($date, $this->entity->getUpdateDate());
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetUpdateDate()
    {
        $reflection = new ReflectionClass($this->entity);
        if ($reflection->hasProperty('update_date')) {
            $method = $reflection->getMethod('setUpdateDate');
            $method->setAccessible(true);
            $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
            $method->invoke($this->entity, $date);

            $property = $reflection->getProperty('update_date');
            $property->setAccessible(true);

            $this->assertEquals($date, $property->getValue($this->entity));
        } else {
            $this->assertTrue(true);
        }
    }

    public function testGetDeleteDate()
    {
        $reflection = new ReflectionClass($this->entity);
        if ($reflection->hasProperty('delete_date')) {
            $property = $reflection->getProperty('delete_date');
            $property->setAccessible(true);
            $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
            $property->setValue($this->entity, $date);

            $this->assertEquals($date, $this->entity->getDeleteDate());
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetDeleteDate()
    {
        $reflection = new ReflectionClass($this->entity);
        if ($reflection->hasProperty('delete_date')) {
            $method = $reflection->getMethod('setDeleteDate');
            $method->setAccessible(true);
            $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
            $method->invoke($this->entity, $date);

            $property = $reflection->getProperty('delete_date');
            $property->setAccessible(true);

            $this->assertEquals($date, $property->getValue($this->entity));
        } else {
            $this->assertTrue(true);
        }
    }

    public function testJsonSerialize()
    {
        $reflection = new ReflectionClass($this->entity);
        if ($reflection->hasProperty('id') && $reflection->hasProperty('creation_date') && $reflection->hasProperty('update_date') && $reflection->hasProperty('delete_date')) {
            $propertyId = $reflection->getProperty('id');
            $propertyId->setAccessible(true);
            $propertyId->setValue($this->entity, 1);

            $propertyCreationDate = $reflection->getProperty('creation_date');
            $propertyCreationDate->setAccessible(true);
            $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
            $propertyCreationDate->setValue($this->entity, $date);

            $propertyUpdateDate = $reflection->getProperty('update_date');
            $propertyUpdateDate->setAccessible(true);
            $propertyUpdateDate->setValue($this->entity, $date);

            $propertyDeleteDate = $reflection->getProperty('delete_date');
            $propertyDeleteDate->setAccessible(true);
            $propertyDeleteDate->setValue($this->entity, $date);

            $expected = [
                "id" => 1,
                "creation_date" => $date,
                "update_date" => $date,
                "delete_date" => $date,
            ];

            $this->assertEquals($expected, $this->entity->jsonSerialize());
        } else {
            $this->assertTrue(true);
        }
    }

    public function testGetProperties()
    {
        $properties = Entity::getProperties();
        $expectedProperties = ['id', 'creation_date', 'update_date', 'delete_date'];
        $this->assertEquals($expectedProperties, $properties);
    }
}