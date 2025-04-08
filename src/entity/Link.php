<?php

require_once __DIR__ . "/Entity.php";

/**
 * Link class representing a link entity.
 */
class Link extends Entity
{
    /**
     * @var string URL of the link.
     */
    private string $url;

    /**
     * @var int Identifier of the associated fanfiction.
     */
    private int $fanfiction_id;

    /**
     * Constructor initializing default values.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setUrl("");
        $this->setFanfictionId(-1);
    }

    /**
     * Get the URL of the link.
     * @return string URL.
     */
    public function getUrl(): string
    {
        return $this->url;
    }

    /**
     * Set the URL of the link.
     * @param string $url New URL.
     */
    public function setUrl(string $url): void
    {
        $this->url = $url;
    }

    /**
     * Get the fanfiction identifier.
     * @return int Fanfiction identifier.
     */
    public function getFanfictionId(): int
    {
        return $this->fanfiction_id;
    }

    /**
     * Set the fanfiction identifier.
     * @param int $fanfiction_id New fanfiction identifier.
     */
    public function setFanfictionId(int $fanfiction_id): void
    {
        $this->fanfiction_id = $fanfiction_id;
    }

    /**
     * Convert the Link object to an array for JSON serialization.
     * @return array Link data as an array.
     */
    public function jsonSerialize(): array
    {
        return array_merge(parent::jsonSerialize(), [
            "url" => $this->url,
            "fanfiction_id" => $this->fanfiction_id
        ]);
    }

    /**
     * Create a new instance of Link.
     * @return self New Link instance.
     */
    public static function getNewObject(): self
    {
        return new self();
    }
}
