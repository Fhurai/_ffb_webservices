<?php

require_once __DIR__ . "/../../src/entity/ComplexEntity.php";
require_once __DIR__ . "/../../src/entity/Evaluable.php";

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
     * Associated Author entity (loaded only when needed).
     * @var Author|null
     */
    private ?Author $author = null;
    /**
     * Rating_id.
     * @var int
     */
    private int $rating_id;
    /**
     * Associated Rating entity (loaded only when needed).
     * @var Rating|null
     */
    private ?Rating $rating = null;
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
     * Associated Language entity (loaded only when needed).
     * @var Language|null
     */
    private ?Language $language = null;
    /**
     * Fandoms associated with the Fanfiction.
     * @var array|null
     */
    private ?array $fandoms = null;
    /**
     * Associated Score entity (loaded only when needed).
     * @var array|null
     */
    private ?array $characters = null;
    /**
     * Associated Score entity (loaded only when needed).
     * @var array|null
     */
    private ?array $relations = null;
    /**
     * Associated Score entity (loaded only when needed).
     * @var array|null
     */
    private ?array $tags = null;
    /**
     * Associated with the Fanfiction (loaded only when needed).
     * @var array|null
     */
    private ?array $links = null;

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
     * Getter Author.
     * @return Author|null Author.
     */
    public function getAuthor(): ?Author
    {
        if (!$this->author) {
            throw new \RuntimeException("author is not loaded. Use hasAuthor() to check first.");
        }
        return $this->author;
    }

    /**
     * Check if author is loaded.
     *
     * @return bool
     */
    public function hasAuthor(): bool
    {
        return $this->author !== null;
    }

    /**
     * Setter Author.
     * @param Author|array $author New Author.
     * @return void
     */
    public function setAuthor(Author|array $author): void
    {
        if (is_array($author)) {
            $this->author = Author::jsonUnserialize(json_encode($author));
        } else {
            $this->author = $author;
        }
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
     * Getter Rating.
     * @return Rating|null Rating.
     */
    public function getRating(): ?Rating
    {
        if (!$this->rating) {
            throw new \RuntimeException("rating is not loaded. Use hasRating() to check first.");
        }
        return $this->rating;
    }

    /**
     * Check if rating is loaded.
     *
     * @return bool
     */
    public function hasRating(): bool
    {
        return $this->rating !== null;
    }

    /**
     * Setter Rating.
     * @param Rating|array $rating New Rating.
     * @return void
     */
    public function setRating(Rating|array $rating): void
    {
        if (is_array($rating)) {
            $this->rating = Rating::jsonUnserialize(json_encode($rating));
        } else {
            $this->rating = $rating;
        }
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
     * Getter Language.
     * @return Language|null Language.
     */
    public function getLanguage(): ?Language
    {
        if (!$this->language) {
            throw new \RuntimeException("language is not loaded. Use hasLanguage() to check first.");
        }
        return $this->language;
    }

    /**
     * Check if language is loaded.
     *
     * @return bool
     */
    public function hasLanguage(): bool
    {
        return $this->language !== null;
    }

    /**
     * Setter Language.
     * @param Language|array $language New Language.
     * @return void
     */
    public function setLanguage(Language|array $language): void
    {
        if (is_array($language)) {
            $this->language = Language::jsonUnserialize(json_encode($language));
        } else {
            $this->language = $language;
        }
    }

    /**
     * Generic setter for array properties.
     * @param array $items New items.
     * @param string $class Class name for deserialization.
     * @return array Processed items.
     */
    private function setArrayProperty(array $items, string $class): array
    {
        $result = [];
        foreach ($items as $item) {
            if (is_array($item)) {
                $result[] = $class::jsonUnserialize(json_encode($item));
            } elseif ($item instanceof $class) {
                $result[] = $item;
            }
        }
        return $result;
    }

    /**
     * Generic getter for nullable array properties.
     * @param array|null $property Property to check.
     * @param string $name Property name for exception message.
     * @throws \RuntimeException
     * @return array|null
     */
    private function getNullableArrayProperty(?array $property, string $name): ?array
    {
        if (!$property) {
            throw new \RuntimeException("$name is not loaded. Use has" . ucfirst($name) . "() to check first.");
        }
        return $property;
    }

    /**
     * Setter Fandoms.
     * @param array $fandoms New Fandoms.
     * @return void
     */
    public function setFandoms(array $fandoms): void
    {
        $this->fandoms = $this->setArrayProperty($fandoms, Fandom::class);
    }

    /**
     * Getter Fandoms.
     * @return array|null
     */
    public function getFandoms(): ?array
    {
        return $this->getNullableArrayProperty($this->fandoms, "fandoms");
    }

    /**
     * Check if fandoms are loaded.
     *
     * @return bool
     */
    public function hasFandoms(): bool
    {
        return $this->fandoms !== null;
    }

    /**
     * Setter Characters.
     * @param array $characters New Characters.
     * @return void
     */
    public function setCharacters(array $characters): void
    {
        $this->characters = $this->setArrayProperty($characters, Character::class);
    }

    /**
     * Getter Characters.
     * @return array|null
     */
    public function getCharacters(): ?array
    {
        return $this->getNullableArrayProperty($this->characters, "characters");
    }

    /**
     * Check if characters are loaded.
     *
     * @return bool
     */
    public function hasCharacters(): bool
    {
        return $this->characters !== null;
    }

    /**
     * Setter Relations.
     * @param array $relations New Relations.
     * @return void
     */
    public function setRelations(array $relations): void
    {
        $this->relations = $this->setArrayProperty($relations, Relation::class);
    }

    /**
     * Getter Relations.
     * @return array|null
     */
    public function getRelations(): ?array
    {
        return $this->getNullableArrayProperty($this->relations, "relations");
    }

    /**
     * Check if relations are loaded.
     *
     * @return bool
     */
    public function hasRelations(): bool
    {
        return $this->relations !== null;
    }

    /**
     * Setter Tags.
     * @param array $tags New Tags.
     * @return void
     */
    public function setTags(array $tags): void
    {
        $this->tags = $this->setArrayProperty($tags, Tag::class);
    }

    /**
     * Getter Tags.
     * @return array|null
     */
    public function getTags(): ?array
    {
        return $this->getNullableArrayProperty($this->tags, "tags");
    }

    /**
     * Check if tags are loaded.
     *
     * @return bool
     */
    public function hasTags(): bool
    {
        return $this->tags !== null;
    }

    /**
     * Setter Links.
     * @param array $links New Links.
     * @return void
     */
    public function setLinks(array $links): void
    {
        $this->links = $this->setArrayProperty($links, Link::class);
    }

    /**
     * Getter Links.
     * @return array|null
     */
    public function getLinks(): ?array
    {
        return $this->getNullableArrayProperty($this->links, "links");
    }

    /**
     * Check if links are loaded.
     *
     * @return bool
     */
    public function hasLinks(): bool
    {
        return $this->links !== null;
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
