<?php

require_once __DIR__ . "/EntityBuilder.php";
require_once __DIR__ . "/../entity/Link.php";

/**
 * Class LinkBuilder
 * Implements the BuilderInterface to build Link objects.
 * Provides methods to set properties of a Link object in a fluent interface style.
 */
final class LinkBuilder extends EntityBuilder
{

    /**
     * @var Link The Link object being built.
     * This property holds the instance of the Link entity being constructed.
     */
    protected $obj;

    /**
     * Resets the builder by creating a new Link object.
     * This method is typically called at the start of the building process.
     */
    public function reset(): void
    {
        $this->obj = new Link();
    }

    /**
     * Sets the URL of the Link.
     *
     * @param  string $url The URL to set. Must be a valid string.
     * @return LinkBuilder The current instance of LinkBuilder for method chaining.
     * @throws \InvalidArgumentException If the provided URL is not a string.
     */
    public function withUrl(string $url): LinkBuilder
    {
        if (is_numeric($url)) {
            throw new \InvalidArgumentException("Expected string value");
        }
        $this->obj->setUrl($url);
        return $this;
    }

    /**
     * Sets the fanfiction ID of the Link.
     *
     * @param  int $fanfictionId The fanfiction ID to set. Must be a numeric value.
     * @return LinkBuilder The current instance of LinkBuilder for method chaining.
     * @throws \InvalidArgumentException If the provided fanfiction ID is not numeric.
     */
    public function withFanfictionId(int $fanfictionId): LinkBuilder
    {
        if(!is_numeric($fanfictionId)) {
            throw new \InvalidArgumentException("Expected numeric value");
        }
        $this->obj->setFanfictionId($fanfictionId);
        return $this;
    }
}
