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
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setAuthorId(-1);
        $this->setRatingId(-1);
        $this->setDescription("");
        $this->setLanguageId(-1);
        $this->setScoreId(-1);
        $this->setEvaluation("");
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

        if (property_exists($this, "links")) {
            // If score property exists,
            // adding it to associations array.
            $associations["links"] = $this->links;
        }

        // Return array of data from Fanfiction.
        return array_merge(parent::jsonSerialize(), [
            "author_id" => $this->getAuthorId(),
            "rating_id" => $this->getRatingId(),
            "description" => $this->getDescription(),
            "language_id" => $this->getLanguageId(),
            "score_id" => $this->getScoreId(),
            "evaluation" => $this->getEvaluation()
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
