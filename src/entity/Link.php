<?php

require_once "../src/entity/Entity.php";

/**
 * Link class
 */
class Link extends Entity
{
    /**
     * URL.
     * @var string
     */
    private string $url;
    /**
     * Identifier fanfiction with the link.
     * @var int
     */
    private int $fanfiction_id;

    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setUrl("");
        $this->setFanfictionId(-1);
    }

    /**
     * Getter URL.
     * @return string URL.
     */
    public function getUrl(): string
    {
        return $this->url;
    }

    /**
     * Setter URL.
     * @param string $url new URL.
     * @return void
     */
    public function setUrl(string $url): void
    {
        $this->url = $url;
    }

    /**
     * Getter Identifier fanfiction.
     * @return int Identifier fanfiction.
     */
    public function getFanfictionId(): int
    {
        return $this->fanfiction_id;
    }

    /**
     * Setter Identifier fanfiction.
     * @param int $fanfiction_id new Identifier fanfiction.
     * @return void
     */
    public function setFanfictionId(int $fanfiction_id): void
    {
        $this->fanfiction_id = $fanfiction_id;
    }

    /**
     * Method to parse Link into an array for JSON parsing.
     * @return array Array of Link data.
     */
    public function jsonSerialize(): array
    {
        return array_merge(parent::jsonSerialize(), [
            "url" => $this->url,
            "fanfiction_id" => $this->fanfiction_id
        ]);
    }

    /**
     * Method to create a new Link.
     * @return mixed new Link.
     */
    public static function getNewObject(): mixed {
        return new self();
    }
}
