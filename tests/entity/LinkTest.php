<?php

require_once __DIR__ . "/../../src/entity/Link.php";
require_once __DIR__ . "/../../tests/entity/EntityTest.php";

class LinkTest extends EntityTest
{
    public function testConstructor()
    {
        $link = new Link();
        $this->assertEquals("", $link->getUrl());
        $this->assertEquals(-1, $link->getFanfictionId());
    }

    public function testSetAndGetUrl()
    {
        $link = new Link();
        $url = "https://example.com";
        $link->setUrl($url);
        $this->assertEquals($url, $link->getUrl());
    }

    public function testSetAndGetFanfictionId()
    {
        $link = new Link();
        $fanfictionId = 123;
        $link->setFanfictionId($fanfictionId);
        $this->assertEquals($fanfictionId, $link->getFanfictionId());
    }

    public function testJsonSerialize()
    {
        $link = new Link();
        $link->setUrl("https://example.com");
        $link->setFanfictionId(123);
        $expected = [
            "id" => 0,
            "creation_date" => $link->getCreationDate(),
            "update_date" => $link->getUpdateDate(),
            "delete_date" => $link->getDeleteDate(),
            "url" => "https://example.com",
            "fanfiction_id" => 123
        ];
        $this->assertEqualsCanonicalizing($expected, $link->jsonSerialize());
    }

    public function testGetNewObject()
    {
        $link = Link::getNewObject();
        $this->assertInstanceOf(Link::class, $link);
    }
}