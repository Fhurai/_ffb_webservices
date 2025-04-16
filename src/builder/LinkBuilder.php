<?php

require_once __DIR__ . "/EntityBuilder.php";
require_once __DIR__ . "/../entity/Link.php";

/**
 * Class LinkBuilder
 * Implements the BuilderInterface to build Link objects.
 */
final class LinkBuilder extends EntityBuilder
{

    /**
     * @var Link The Link object being built.
     */
    protected $obj;

    /**
     * Resets the builder by creating a new Link object.
     */
    public function reset(): void
    {
        $this->obj = new Link();
    }

    /**
     * Sets the URL of the Link.
     *
     * @param string $url The URL to set.
     * @return LinkBuilder The current instance of LinkBuilder.
     */
    public function withUrl(string $url): LinkBuilder
    {
        if(is_numeric($url)){
            throw new \InvalidArgumentException("Expected string value");
        }
        $this->obj->setUrl($url);
        return $this;
    }

    /**
     * Sets the fanfiction ID of the Link.
     *
     * @param int $fanfictionId The fanfiction ID to set.
     * @return LinkBuilder The current instance of LinkBuilder.
     */
    public function withFanfictionId(int $fanfictionId): LinkBuilder
    {
        if(!is_numeric($fanfictionId)){
            throw new \InvalidArgumentException("Expected numeric value");
        }
        $this->obj->setFanfictionId($fanfictionId);
        return $this;
    }
}
