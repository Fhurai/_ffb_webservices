<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Link.php';

/**
 * Class LinkTest
 *
 * Unit tests for the Link entity class.
 */
#[CoversClass(\Link::class)]
class LinkTest extends TestCase
{
    /**
     * Test that the constructor initializes default values correctly.
     */
    public function testConstructorInitializesDefaults(): void
    {
        $link = new Link();
        // Verify that the default URL is an empty string
        $this->assertSame('', $link->getUrl());
        // Verify that the default Fanfiction ID is -1
        $this->assertSame(-1, $link->getFanfictionId());
    }

    /**
     * Test the setters and getters for URL and Fanfiction ID.
     */
    public function testSettersAndGetters(): void
    {
        $link = new Link();

        // Test URL setter/getter
        $testUrl = 'https://example.com';
        $link->setUrl($testUrl); // Set the URL
        $this->assertSame($testUrl, $link->getUrl()); // Verify the URL

        // Test Fanfiction ID setter/getter
        $testId = 42;
        $link->setFanfictionId($testId); // Set the Fanfiction ID
        $this->assertSame($testId, $link->getFanfictionId()); // Verify the ID
    }

    /**
     * Test the jsonSerialize method to ensure proper serialization.
     */
    public function testJsonSerialize(): void
    {
        $link = new Link();
        $testUrl = 'https://test.com';
        $testId = 123;

        // Set URL and Fanfiction ID
        $link->setUrl($testUrl);
        $link->setFanfictionId($testId);

        // Serialize the object to JSON
        $serialized = $link->jsonSerialize();

        // Verify that the serialized data contains the URL and Fanfiction ID
        $this->assertArrayHasKey('url', $serialized);
        $this->assertArrayHasKey('fanfiction_id', $serialized);
        $this->assertSame($testUrl, $serialized['url']);
        $this->assertSame($testId, $serialized['fanfiction_id']);

        // Verify that the parent Entity fields are also serialized
        $this->assertArrayHasKey('id', $serialized); // 'id' is inherited from Entity
    }

    /**
     * Test the getNewObject static method to ensure it returns a new Link instance.
     */
    public function testGetNewObject(): void
    {
        // Create a new Link object using the static method
        $newLink = Link::getNewObject();
        // Verify that the returned object is an instance of Link
        $this->assertInstanceOf(Link::class, $newLink);
        // Verify that the default URL and Fanfiction ID are set correctly
        $this->assertSame('', $newLink->getUrl());
        $this->assertSame(-1, $newLink->getFanfictionId());
    }

    /**
     * Test the setUrl method with invalid values to ensure exceptions are thrown.
     */
    public function testSetUrlWithInvalidValues(): void
    {
        $link = new Link();

        // Expect an exception when setting a null URL
        $this->expectException(TypeError::class);
        $link->setUrl(null);

        // Expect an exception when setting an empty string as the URL
        $this->expectException(TypeError::class);
        $link->setUrl('');
    }

    /**
     * Test the setFanfictionId method with invalid values to ensure exceptions are thrown.
     */
    public function testSetFanfictionIdWithInvalidValues(): void
    {
        $link = new Link();

        // Expect an exception when setting a negative ID other than -1
        $this->expectException(InvalidArgumentException::class);
        $link->setFanfictionId(-100);

        // Expect an exception when setting a non-integer value as the ID
        $this->expectException(TypeError::class);
        $link->setFanfictionId('abc');
    }

    /**
     * Test the jsonSerialize method with empty values to ensure proper serialization.
     */
    public function testJsonSerializeWithEmptyValues(): void
    {
        $link = new Link();

        // Serialize the object with default values
        $serialized = $link->jsonSerialize();

        // Verify that the serialized data contains the default URL and Fanfiction ID
        $this->assertSame('', $serialized['url']);
        $this->assertSame(-1, $serialized['fanfiction_id']);
    }
}
