<?php

require_once __DIR__ . "/../../src/exception/FfbTableException.php";

use PHPUnit\Framework\TestCase;

#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
class FfbTableExceptionTest extends TestCase
{
    private const TEST_MESSAGE = 'Test message';

    public function testConstructorWithMessage()
    {
        $exception = new FfbTableException(self::TEST_MESSAGE);
        $this->assertEquals(self::TEST_MESSAGE, $exception->getMessage());
        $this->assertEquals(500, $exception->getCode());
    }

    public function testConstructorWithMessageAndCode()
    {
        $exception = new FfbTableException(self::TEST_MESSAGE, 404);
        $this->assertEquals(self::TEST_MESSAGE, $exception->getMessage());
        $this->assertEquals(404, $exception->getCode());
    }

    public function testConstructorWithMessageCodeAndPrevious()
    {
        $previousException = new Exception('Previous exception');
        $exception = new FfbTableException(self::TEST_MESSAGE, 404, $previousException);
        $this->assertEquals(self::TEST_MESSAGE, $exception->getMessage());
        $this->assertEquals(404, $exception->getCode());
        $this->assertSame($previousException, $exception->getPrevious());
    }
}
