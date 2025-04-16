<?php

require_once __DIR__ . "/Entity.php";
require_once __DIR__ . "/EntityTrait.php";

final class Link extends Entity
{
    use EntityTrait;

    private string $url;
    private int $fanfiction_id;

    public function __construct()
    {
        parent::__construct();
        $this->setUrl("");
        $this->setFanfictionId(-1);
    }

    public function getUrl(): string { return $this->url; }
    public function setUrl(string $url): void { $this->url = $url; }

    public function getFanfictionId(): int { return $this->fanfiction_id; }
    public function setFanfictionId(int $fanfiction_id): void { $this->fanfiction_id = $fanfiction_id; }

    public function jsonSerialize(): array
    {
        return array_merge(parent::jsonSerialize(), [
            "url" => $this->url,
            "fanfiction_id" => $this->fanfiction_id
        ]);
    }
}
