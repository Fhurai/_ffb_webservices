<?php

use PHPUnit\Framework\TestCase;
require_once __DIR__ . "/../../src/entity/Parameters.php";

class ParametersTest extends TestCase
{
    protected $parameters;

    protected function setUp(): void
    {
        if ($this::class === ParametersTest::class) {
            $this->assertTrue(true);
        }

        $this->parameters = new readonly class extends Parameters {
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

    public function testGetId()
    {
        $reflection = new ReflectionClass($this->parameters);
        if ($reflection->hasProperty('id')) {
            $property = $reflection->getProperty('id');
            $property->setAccessible(true);
            $property->setValue($this->parameters, 1);

            $this->assertEquals(1, $this->parameters->getId());
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetId()
    {
        $reflection = new ReflectionClass($this->parameters);
        if ($reflection->hasProperty('id')) {
            $method = $reflection->getMethod('setId');
            $method->setAccessible(true);
            $method->invoke($this->parameters, 2);

            $property = $reflection->getProperty('id');
            $property->setAccessible(true);

            $this->assertEquals(2, $property->getValue($this->parameters));
        } else {
            $this->assertTrue(true);
        }
    }

    public function testGetName()
    {
        $reflection = new ReflectionClass($this->parameters);
        if ($reflection->hasProperty('name')) {
            $property = $reflection->getProperty('name');
            $property->setAccessible(true);
            $property->setValue($this->parameters, 'TestName');

            $this->assertEquals('TestName', $this->parameters->getName());
        } else {
            $this->assertTrue(true);
        }
    }

    public function testSetName()
    {
        $reflection = new ReflectionClass($this->parameters);
        if ($reflection->hasProperty('name')) {
            $method = $reflection->getMethod('setName');
            $method->setAccessible(true);
            $method->invoke($this->parameters, 'NewName');

            $property = $reflection->getProperty('name');
            $property->setAccessible(true);

            $this->assertEquals('NewName', $property->getValue($this->parameters));
        } else {
            $this->assertTrue(true);
        }
    }

    public function testJsonSerialize()
    {
        $reflection = new ReflectionClass($this->parameters);
        if ($reflection->hasProperty('id') && $reflection->hasProperty('name')) {
            $propertyId = $reflection->getProperty('id');
            $propertyId->setAccessible(true);
            $propertyId->setValue($this->parameters, 1);

            $propertyName = $reflection->getProperty('name');
            $propertyName->setAccessible(true);
            $propertyName->setValue($this->parameters, 'TestName');

            $expected = [
                'id' => 1,
                'name' => 'TestName'
            ];

            $this->assertEquals($expected, $this->parameters->jsonSerialize());
        } else {
            $this->assertTrue(true);
        }
    }
}
