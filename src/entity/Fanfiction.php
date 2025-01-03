<?php

if (file_exists("../src/entity/ComplexEntity.php"))
    require_once "../src/entity/ComplexEntity.php";
else if (file_exists("../../src/entity/ComplexEntity.php"))
    require_once "../../src/entity/ComplexEntity.php";

if (file_exists("../src/entity/Evaluable.php"))
    require_once "../src/entity/Evaluable.php";
else if (file_exists("../../src/entity/Evaluable.php"))
    require_once "../../src/entity/Evaluable.php";

/**
 * Fanfiction class.
 */
#[AllowDynamicProperties]
class Fanfiction extends ComplexEntity
{
    use Evaluable;

    /**
     * Author_id.
     * @var int
     */
    private int $author_id;
    /**
     * Rating_id.
     * @var int
     */
    private int $rating_id;
    /**
     * Description.
     * @var string
     */
    private string $description;
    /**
     * Language_id.
     * @var int
     */
    private int $language_id;
    /**
     * Fandoms_ids.
     * @var array
     */
    private array $fandoms_ids;
    /**
     * Relation_ids.
     * @var array
     */
    private array $relations_ids;
    /**
     * Characters_ids.
     * @var array
     */
    private array $characters_ids;
    /**
     * Tags_ids
     * @var array
     */
    private array $tags_ids;
    /**
     * Links.
     * @var array
     */
    private array $links;


    /**
     * Implied constructor.
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
     * Getter Author_id.
     * @return int Author_id.
     */
    public function getAuthorId(): int
    {
        return $this->author_id;
    }

    /**
     * Setter Author_id.
     * @param int $author_id New Author_id.
     * @return void
     */
    public function setAuthorId(int $author_id): void
    {
        $this->author_id = $author_id;
    }

    /**
     * Getter Rating_id.
     * @return int Rating_id.
     */
    public function getRatingId(): int
    {
        return $this->rating_id;
    }

    /**
     * Setter Rating_id.
     * @param int $rating_id New Rating_id.
     * @return void
     */
    public function setRatingId(int $rating_id): void
    {
        $this->rating_id = $rating_id;
    }

    /**
     * Getter Description.
     * @return string Description.
     */
    public function getDescription(): string
    {
        return $this->description;
    }

    /**
     * Setter Description.
     * @param string $description New Description.
     * @return void
     */
    public function setDescription(string $description): void
    {
        $this->description = $description;
    }

    /**
     * Getter Language_id.
     * @return int Language_id.
     */
    public function getLanguageId(): int
    {
        return $this->language_id;
    }

    /**
     * Setter Language_id.
     * @param string $language_id Language_id.
     * @return void
     */
    public function setLanguageId(string $language_id): void
    {
        $this->language_id = $language_id;
    }

    /**
     * Getter Fandomds_ids.
     * @return array Fandoms_ids.
     */
    public function getFandomsIds(): array
    {
        return $this->fandoms_ids;
    }

    /**
     * Setter Fandoms_ids.
     * @param array $fandoms_ids new Fandoms_ids.
     * @return void
     */
    public function setFandomsIds(array $fandoms_ids): void
    {
        $this->fandoms_ids = $fandoms_ids;
    }

    /**
     * Getter Relations_ids.
     * @return array Relations_ids.
     */
    public function getRelationsIds(): array
    {
        return $this->relations_ids;
    }

    /**
     * Setter Relations_ids.
     * @param array $relations_ids Relations_ids.
     * @return void
     */
    public function setRelationsIds(array $relations_ids): void
    {
        $this->relations_ids = $relations_ids;
    }

    /**
     * Getter Characters_Ids.
     * @return array Characters_Ids.
     */
    public function getCharactersIds(): array
    {
        return $this->characters_ids;
    }

    /**
     * Setter Characters_Ids.
     * @param array $characters_ids New Characters_Ids.
     * @return void
     */
    public function setCharactersIds(array $characters_ids): void
    {
        $this->characters_ids = $characters_ids;
    }

    /**
     * Getter Tags_ids.
     * @return array Tags_ids.
     */
    public function getTagsIds(): array
    {
        return $this->tags_ids;
    }

    /**
     * Setter Tags_ids.
     * @param array $tags_ids New Tags_ids.
     * @return void
     */
    public function setTagsIds(array $tags_ids): void
    {
        $this->tags_ids = $tags_ids;
    }

    /**
     * Getter Links.
     * @return array Links.
     */
    public function getLinks(): array
    {
        return $this->links;
    }

    /**
     * Setter Links.
     * @param array $links New Links.
     * @return void
     */
    public function setLinks(array $links)
    {
        $this->links = $links;
    }


    /**
     * Method to parse Fanfiction into an array for JSON parsing.
     * @return array Array of Fanfiction data.
     */
    public function jsonSerialize(): array
    {
        // Initialization of the associations array
        $associations = [];

        if (property_exists($this, "author")) {
            // If author property exists,
            // adding it to associations array.
            $associations["author"] = $this->author;
        }

        if (property_exists($this, "fandoms")) {
            // If fandoms property exists,
            // adding it to associations array.
            $associations["fandoms"] = $this->fandoms;
        }

        if (property_exists($this, "language")) {
            // If language property exists,
            // adding it to associations array.
            $associations["language"] = $this->language;
        }

        if (property_exists($this, "relations")) {
            // If relations property exists,
            // adding it to associations array.
            $associations["relations"] = $this->relations;
        }

        if (property_exists($this, "characters")) {
            // If characters property exists,
            // adding it to associations array.
            $associations["characters"] = $this->characters;
        }

        if (property_exists($this, "tags")) {
            // If tags property exists,
            // adding it to associations array.
            $associations["tags"] = $this->tags;
        }

        if (property_exists($this, "score")) {
            // If score property exists,
            // adding it to associations array.
            $associations["score"] = $this->score;
        }

        // Return array of data from Fanfiction.
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
     * Method to create a new Fanfiction.
     * @return mixed new Fanfiction.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}
