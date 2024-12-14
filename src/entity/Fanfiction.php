<?php

require_once "../src/entity/ComplexEntity.php";
require_once "../src/entity/Evaluable.php";

#[AllowDynamicProperties]
class Fanfiction extends ComplexEntity
{
    use Evaluable;

    private int $author_id;
    private int $rating_id;
    private string $description;
    private int $language_id;
    private array $fandoms_ids;
    private array $relations_ids;
    private array $characters_ids;
    private array $tags_ids;
    private array $links;


    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
        $this->setAuthorId(-1);
        $this->setRatingId(-1);
        $this->setDescription("");
        $this->setLanguageId(-1);
        $this->setFandomsIds([]);
        $this->setRelationsIds([]);
        $this->setCharactersIds([]);
        $this->setTagsIds([]);
        $this->setScoreId(-1);
        $this->setEvaluation("");
        $this->setLinks([]);
    }

    /**
     * 
     */
    public function getAuthorId(): int
    {
        return $this->author_id;
    }

    /**
     * 
     */
    public function setAuthorId(int $author_id): void
    {
        $this->author_id = $author_id;
    }

    /**
     * 
     */
    public function getRatingId(): int
    {
        return $this->rating_id;
    }

    /**
     * 
     */
    public function setRatingId(int $rating_id): void
    {
        $this->rating_id = $rating_id;
    }

    /**
     * 
     */
    public function getDescription(): string
    {
        return $this->description;
    }

    /**
     * 
     */
    public function setDescription(string $description): void
    {
        $this->description = $description;
    }

    /**
     * 
     */
    public function getLanguageId(): int
    {
        return $this->language_id;
    }

    /**
     * 
     */
    public function setLanguageId(string $language_id): void
    {
        $this->language_id = $language_id;
    }

    /**
     * 
     */
    public function getFandomsIds(): array
    {
        return $this->fandoms_ids;
    }

    /**
     * 
     */
    public function setFandomsIds(array $fandoms_ids): void
    {
        $this->fandoms_ids = $fandoms_ids;
    }
    /**
     * 
     */
    public function getRelationsIds(): array
    {
        return $this->relations_ids;
    }

    /**
     * 
     */
    public function setRelationsIds(array $relations_ids): void
    {
        $this->relations_ids = $relations_ids;
    }
    /**
     * 
     */
    public function getCharactersIds(): array
    {
        return $this->characters_ids;
    }

    /**
     * 
     */
    public function setCharactersIds(array $characters_ids): void
    {
        $this->characters_ids = $characters_ids;
    }
    /**
     * 
     */
    public function getTagsIds(): array
    {
        return $this->tags_ids;
    }

    /**
     * 
     */
    public function setTagsIds(array $tags_ids): void
    {
        $this->tags_ids = $tags_ids;
    }

    /**
     * 
     */
    public function getLinks(): array
    {
        return $this->links;
    }

    /**
     * 
     */
    public function setLinks(array $links){
        $this->links = $links;
    }


    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        $associations = [];

        if(property_exists($this, "author")){
            $associations["author"] = $this->author;
        }

        if(property_exists($this, "fandoms")){
            $associations["fandoms"] = $this->fandoms;
        }

        if(property_exists($this, "language")){
            $associations["language"] = $this->language;
        }

        if(property_exists($this, "relations")){
            $associations["relations"] = $this->relations;
        }

        if(property_exists($this, "characters")){
            $associations["characters"] = $this->characters;
        }

        if(property_exists($this, "tags")){
            $associations["tags"] = $this->tags;
        }

        if(property_exists($this, "score")){
            $associations["score"] = $this->score;
        }

        return array_merge(parent::jsonSerialize(), [
            "author_id" => $this->getAuthorId(),
            "rating_id" => $this->getRatingId(),
            "description" => $this->getDescription(),
            "language_id" => $this->getLanguageId(),
            "fandoms_ids" => $this->getFandomsIds(),
            "relations_ids" => $this->getRelationsIds(),
            "characters_ids" => $this->getCharactersIds(),
            "tags_ids" => $this->getTagsIds(),
            "score_id" => $this->getScoreId(),
            "evaluation" => $this->getEvaluation(),
            "links" => $this->getLinks()
        ], $associations);
    }

    /**
     * 
     * @param mixed $json
     * @return Character
     */
    public static function jsonUnserialize($json): Fanfiction
    {
        $entity = new Fanfiction();

        $properties = parent::getProperties($entity);

        foreach (json_decode($json, true) as $key => $data) {

            if (in_array($key, $properties)) {

                $getFunction = parent::getterFunction($key);
                $setFunction = parent::setterFunction($key);

                if ($entity->$getFunction() instanceof DateTime) {
                    $date = is_string($data) && !empty($data) ? DateTime::createFromFormat("Y-m-d H:i:s", $data, new DateTimeZone("Europe/Paris")) : null;
                    $entity->$setFunction($date);
                } else {
                    $entity->$setFunction($data);
                }
            } else {
                $entity->$key = parent::parseDataProperty($key, $data);
            }
        }
        return $entity;
    }
}
