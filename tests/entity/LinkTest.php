<?php

require_once __DIR__ . "/../../src/entity/Link.php";
require_once __DIR__ . "/../../tests/entity/EntityTest.php";

class LinkTest extends EntityTest
{
    protected function setUp(): void
    {
        $this->entity = new Link();
    }

    public function testConstructor()
    {
        $link = new Link();
        $this->assertEquals("", $link->getUrl());
        $this->assertEquals(-1, $link->getFanfictionId());
    }

    public function testSetAndGetUrl()
    {
        $url = "https://example.com";
        $this->entity->setUrl($url);
        $this->assertEquals($url, $this->entity->getUrl());
    }

    public function testSetAndGetFanfictionId()
    {
        $fanfictionId = 123;
        $this->entity->setFanfictionId($fanfictionId);
        $this->assertEquals($fanfictionId, $this->entity->getFanfictionId());
    }

    public function testJsonSerialize()
    {
        $this->entity->setUrl("https://example.com");
        $this->entity->setFanfictionId(123);
        $expected = [
            "id" => 0,
            "creation_date" => $this->entity->getCreationDate(),
            "update_date" => $this->entity->getUpdateDate(),
            "delete_date" => $this->entity->getDeleteDate(),
            "url" => "https://example.com",
            "fanfiction_id" => 123
        ];
        $this->assertEqualsCanonicalizing($expected, $this->entity->jsonSerialize());
    }

    public function testGetNewObject()
    {
        $link = Link::getNewObject();
        $this->assertInstanceOf(Link::class, $link);
    }
}