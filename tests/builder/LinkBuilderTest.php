<?php

require_once __DIR__ . "/../../tests/builder/EntityBuilderTestCase.php";
require_once __DIR__ . "/../../src/entity/Link.php";
require_once __DIR__ . "/../../src/builder/LinkBuilder.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Link::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\LinkBuilder::class)]
class LinkBuilderTest extends EntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new LinkBuilder();
    }
    public function testWithUrl(): void
    {
        $url = "https://example.com";
        $entity = $this->builder->withUrl($url)->build();
        $this->assertEquals($url, $entity->getUrl());
    }
    public function testWithFanfictionId(): void
    {
        $fanfictionId = 42;
        $entity = $this->builder->withFanfictionId($fanfictionId)->build();
        $this->assertEquals($fanfictionId, $entity->getFanfictionId());
    }
    public function testWithInvalidUrlType(): void
    {
        $this->expectException(InvalidArgumentException::class);
        $this->builder->withUrl(12345);
    }
    public function testWithInvalidFanfictionIdType(): void
    {
        $this->expectException(TypeError::class);
        $this->builder->withFanfictionId("invalid_id");
    }
}
