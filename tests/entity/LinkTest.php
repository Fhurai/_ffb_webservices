<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Link.php';

class LinkTest extends TestCase
{
    public function testConstructorInitializesDefaults(): void
    {
        $link = new Link();
        $this->assertSame('', $link->getUrl());
        $this->assertSame(-1, $link->getFanfictionId());
    }

    public function testSettersAndGetters(): void
    {
        $link = new Link();
        
        // Test URL setter/getter
        $testUrl = 'https://example.com';
        $link->setUrl($testUrl);
        $this->assertSame($testUrl, $link->getUrl());

        // Test Fanfiction ID setter/getter
        $testId = 42;
        $link->setFanfictionId($testId);
        $this->assertSame($testId, $link->getFanfictionId());
    }

    public function testJsonSerialize(): void
    {
        $link = new Link();
        $testUrl = 'https://test.com';
        $testId = 123;
        
        $link->setUrl($testUrl);
        $link->setFanfictionId($testId);

        $serialized = $link->jsonSerialize();

        // Verify Link-specific fields
        $this->assertArrayHasKey('url', $serialized);
        $this->assertArrayHasKey('fanfiction_id', $serialized);
        $this->assertSame($testUrl, $serialized['url']);
        $this->assertSame($testId, $serialized['fanfiction_id']);

        // Verify parent Entity fields exist (assuming Entity::jsonSerialize works)
        $this->assertArrayHasKey('id', $serialized);   // From parent Entity
    }

    public function testGetNewObject(): void
    {
        $newLink = Link::getNewObject();
        $this->assertInstanceOf(Link::class, $newLink);
        $this->assertSame('', $newLink->getUrl());
        $this->assertSame(-1, $newLink->getFanfictionId());
    }
}