<?php

require_once "../src/entity/Entity.php";

class Link extends Entity
{
    private string $url;
    private int $fanfiction_id;

    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 
     */
    public function getUrl(): string
    {
        return $this->url;
    }

    /**
     * 
     */
    public function setUrl(string $url): void
    {
        $this->url = $url;
    }

    /**
     * 
     */
    public function getFanfictionId(): int
    {
        return $this->fanfiction_id;
    }

    /**
     * 
     */
    public function setFanfictionId(int $fanfiction_id): void
    {
        $this->fanfiction_id = $fanfiction_id;
    }

    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        return array_merge(parent::jsonSerialize(), [
            "url" => $this->url,
            "fanfiction_id" => $this->fanfiction_id
        ]);
    }

    public static function jsonUnserialize($json): Link
    {
        $entity = new Link();
        foreach (json_decode($json, true) as $key => $data) {

            $getFunction = parent::getterFunction($key);
            $setFunction = parent::setterFunction($key);

            if ($entity->$getFunction() instanceof DateTime) {
                $date = is_string($data) && !empty($data) ? DateTime::createFromFormat("Y-m-d H:i:s", $data, new DateTimeZone("Europe/Paris")) : null;
                $entity->$setFunction($date);
            } else {
                $entity->$setFunction($data);
            }
        }
        return $entity;
    }
}
