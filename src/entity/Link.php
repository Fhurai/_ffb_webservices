<?php

require_once __DIR__ . "/Entity.php";
require_once __DIR__ . "/EntityTrait.php";

final class Link extends Entity
{
    use EntityTrait;

    private string $url;
    private int $fanfictionId;

    public function __construct()
    {
        parent::__construct();
        $this->setUrl("");
        $this->setFanfictionId(-1);
    }

    public function getUrl(): string
    {
        return $this->url;
    }
    public function setUrl(string $url): void
    {
        $this->url = $url;
    }

    public function getFanfictionId(): int
    {
        return $this->fanfictionId;
    }
    public function setFanfictionId(int $fanfictionId): void
    {
        $this->fanfictionId = $fanfictionId;
    }

    public function jsonSerialize(): array
    {
        return array_merge(
            parent::jsonSerialize(),
            [
                "url" => $this->url,
                "fanfiction_id" => $this->fanfictionId
            ]
        );
    }
}
