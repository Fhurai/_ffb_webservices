<?php

require_once __DIR__ . "/../../src/exception/FfbTableException.php";

use PHPUnit\Framework\TestCase;

#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
class FfbTableExceptionTest extends TestCase {

    public function testConstructorWithMessage() {
        $exception = new FfbTableException("Test message");
        $this->assertEquals("Test message", $exception->getMessage());
        $this->assertEquals(500, $exception->getCode());
    }

    public function testConstructorWithMessageAndCode() {
        $exception = new FfbTableException("Test message", 404);
        $this->assertEquals("Test message", $exception->getMessage());
        $this->assertEquals(404, $exception->getCode());
    }

    public function testConstructorWithMessageCodeAndPrevious() {
        $previousException = new Exception("Previous exception");
        $exception = new FfbTableException("Test message", 404, $previousException);
        $this->assertEquals("Test message", $exception->getMessage());
        $this->assertEquals(404, $exception->getCode());
        $this->assertSame($previousException, $exception->getPrevious());
    }
}
