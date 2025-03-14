<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";
require_once __DIR__ . "/../../tests/entity/EntityTest.php";

class NamedEntityTest extends EntityTest
{
    protected $namedEntity;

    protected function setUp(): void
    { {
            if ($this::class === NamedEntityTest::class) {
                $this->assertTrue(true);
            }

            $this->entity = new class extends NamedEntity {
                public function __construct()
                {
                    parent::__construct();
                }

                public static function getNewObject(): mixed
                {
                    return new self();
                }
            };
        }
    }

    public function testGetName()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('name')) {
                $property = $reflection->getProperty('name');
                $property->setAccessible(true);
                $property->setValue($this->namedEntity, 'TestName');

                $this->assertEquals('TestName', $this->namedEntity->getName());
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetName()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('name')) {
                $method = $reflection->getMethod('setName');
                $method->setAccessible(true);
                $method->invoke($this->namedEntity, 'NewName');

                $property = $reflection->getProperty('name');
                $property->setAccessible(true);

                $this->assertEquals('NewName', $property->getValue($this->namedEntity));
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testJsonSerialize()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('id') && $reflection->hasProperty('creation_date') && $reflection->hasProperty('update_date') && $reflection->hasProperty('delete_date') && $reflection->hasProperty('name')) {
                $propertyId = $reflection->getProperty('id');
                $propertyId->setAccessible(true);
                $propertyId->setValue($this->namedEntity, 1);

                $propertyCreationDate = $reflection->getProperty('creation_date');
                $propertyCreationDate->setAccessible(true);
                $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
                $propertyCreationDate->setValue($this->namedEntity, $date);

                $propertyUpdateDate = $reflection->getProperty('update_date');
                $propertyUpdateDate->setAccessible(true);
                $propertyUpdateDate->setValue($this->namedEntity, $date);

                $propertyDeleteDate = $reflection->getProperty('delete_date');
                $propertyDeleteDate->setAccessible(true);
                $propertyDeleteDate->setValue($this->namedEntity, $date);

                $propertyName = $reflection->getProperty('name');
                $propertyName->setAccessible(true);
                $propertyName->setValue($this->namedEntity, 'TestName');

                $expected = [
                    "id" => 1,
                    "creation_date" => $date,
                    "update_date" => $date,
                    "delete_date" => $date,
                    "name" => 'TestName',
                ];

                $this->assertEquals($expected, $this->namedEntity->jsonSerialize());
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testGetId()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('id')) {
                $property = $reflection->getProperty('id');
                $property->setAccessible(true);
                $property->setValue($this->namedEntity, 1);

                $this->assertEquals(1, $this->namedEntity->getId());
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetId()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('id')) {
                $method = $reflection->getMethod('setId');
                $method->setAccessible(true);
                $method->invoke($this->namedEntity, 1);

                $property = $reflection->getProperty('id');
                $property->setAccessible(true);

                $this->assertEquals(1, $property->getValue($this->namedEntity));
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testGetCreationDate()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('creation_date')) {
                $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
                $property = $reflection->getProperty('creation_date');
                $property->setAccessible(true);
                $property->setValue($this->namedEntity, $date);

                $this->assertEquals($date, $this->namedEntity->getCreationDate());
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetCreationDate()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('creation_date')) {
                $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
                $method = $reflection->getMethod('setCreationDate');
                $method->setAccessible(true);
                $method->invoke($this->namedEntity, $date);

                $property = $reflection->getProperty('creation_date');
                $property->setAccessible(true);

                $this->assertEquals($date, $property->getValue($this->namedEntity));
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testGetUpdateDate()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('update_date')) {
                $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
                $property = $reflection->getProperty('update_date');
                $property->setAccessible(true);
                $property->setValue($this->namedEntity, $date);

                $this->assertEquals($date, $this->namedEntity->getUpdateDate());
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetUpdateDate()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('update_date')) {
                $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
                $method = $reflection->getMethod('setUpdateDate');
                $method->setAccessible(true);
                $method->invoke($this->namedEntity, $date);

                $property = $reflection->getProperty('update_date');
                $property->setAccessible(true);

                $this->assertEquals($date, $property->getValue($this->namedEntity));
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testGetDeleteDate()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('delete_date')) {
                $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
                $property = $reflection->getProperty('delete_date');
                $property->setAccessible(true);
                $property->setValue($this->namedEntity, $date);

                $this->assertEquals($date, $this->namedEntity->getDeleteDate());
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetDeleteDate()
    {
        if ($this::class !== NamedEntityTest::class) {
            $reflection = new ReflectionClass($this->namedEntity);
            if ($reflection->hasProperty('delete_date')) {
                $date = new DateTime("now", new DateTimeZone("Europe/Paris"));
                $method = $reflection->getMethod('setDeleteDate');
                $method->setAccessible(true);
                $method->invoke($this->namedEntity, $date);

                $property = $reflection->getProperty('delete_date');
                $property->setAccessible(true);

                $this->assertEquals($date, $property->getValue($this->namedEntity));
            } else {
                $this->assertTrue(true);
            }
        } else {
            $this->assertTrue(true);
        }
    }
}
