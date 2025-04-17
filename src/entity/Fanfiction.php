<?php

require_once __DIR__ . "/../../src/entity/ComplexEntity.php";
require_once __DIR__ . "/../../src/entity/EvaluableTrait.php";

/**
 * Fanfiction class.
 */
final class Fanfiction extends ComplexEntity
{
    use EntityTrait, EvaluableTrait, LazyAssociationTrait;

    private int $authorId;
    private ?Author $author = null;

    private int $ratingId;
    private ?Rating $rating = null;

    private string $description;

    private int $languageId;
    private ?Language $language = null;

    private ?array $fandoms = null;
    private ?array $characters = null;
    private ?array $relations = null;
    private ?array $tags = null;
    private ?array $links = null;

    public function __construct()
    {
        parent::__construct();
        $this->authorId = -1;
        $this->ratingId = -1;
        $this->description = "";
        $this->languageId = -1;
        $this->scoreId = -1;
        $this->evaluation = "";
    }

    public function getAuthorId(): int
    {
        return $this->authorId;
    }
    public function setAuthorId(int $id): void
    {
        $this->authorId = $id;
    }

    public function getAuthor(): Author
    {
        return $this->getRequiredAssociation($this->author, 'author');
    }
    public function hasAuthor(): bool
    {
        return $this->author !== null;
    }
    public function setAuthor(Author|array $author): void
    {
        $this->author = $this->setAssociation(Author::class, $author);
    }

    public function getRatingId(): int
    {
        return $this->ratingId;
    }
    public function setRatingId(int $id): void
    {
        $this->ratingId = $id;
    }

    public function getRating(): Rating
    {
        return $this->getRequiredAssociation($this->rating, 'rating');
    }
    public function hasRating(): bool
    {
        return $this->rating !== null;
    }
    public function setRating(Rating|array $rating): void
    {
        $this->rating = $this->setAssociation(Rating::class, $rating);
    }

    public function getDescription(): string
    {
        return $this->description;
    }
    public function setDescription(string $desc): void
    {
        $this->description = $desc;
    }

    public function getLanguageId(): int
    {
        return $this->languageId;
    }
    public function setLanguageId(int $id): void
    {
        $this->languageId = $id;
    }

    public function getLanguage(): Language
    {
        return $this->getRequiredAssociation($this->language, 'language');
    }
    public function hasLanguage(): bool
    {
        return $this->language !== null;
    }
    public function setLanguage(Language|array $language): void
    {
        $this->language = $this->setAssociation(Language::class, $language);
    }

    public function setFandoms(array $fandoms): void
    {
        $this->fandoms = $this->setArrayAssociation($fandoms, Fandom::class);
    }
    public function getFandoms(): array
    {
        return $this->getNullableArrayAssociation($this->fandoms, 'fandoms');
    }
    public function hasFandoms(): bool
    {
        return $this->fandoms !== null;
    }

    public function setCharacters(array $characters): void
    {
        $this->characters = $this->setArrayAssociation($characters, Character::class);
    }
    public function getCharacters(): array
    {
        return $this->getNullableArrayAssociation($this->characters, 'characters');
    }
    public function hasCharacters(): bool
    {
        return $this->characters !== null;
    }

    public function setRelations(array $relations): void
    {
        $this->relations = $this->setArrayAssociation($relations, Relation::class);
    }
    public function getRelations(): array
    {
        return $this->getNullableArrayAssociation($this->relations, 'relations');
    }
    public function hasRelations(): bool
    {
        return $this->relations !== null;
    }

    public function setTags(array $tags): void
    {
        $this->tags = $this->setArrayAssociation($tags, Tag::class);
    }
    public function getTags(): array
    {
        return $this->getNullableArrayAssociation($this->tags, 'tags');
    }
    public function hasTags(): bool
    {
        return $this->tags !== null;
    }

    public function setLinks(array $links): void
    {
        $this->links = $this->setArrayAssociation($links, Link::class);
    }
    public function getLinks(): array
    {
        return $this->getNullableArrayAssociation($this->links, 'links');
    }
    public function hasLinks(): bool
    {
        return $this->links !== null;
    }

    protected function getAssociationProperties(): array
    {
        return ["author", "fandoms", "language", "relations", "characters", "tags", "links", "score"];
    }

    public function jsonSerialize(): array
    {
        $associations = [];
        foreach ($this->getAssociationProperties() as $prop) {
            if ($this->{"has" . ucfirst($prop)}()) {
                $associations[$prop] = $this->$prop;
            }
        }
        return array_merge(parent::jsonSerialize(), [
            "author_id" => $this->authorId,
            "rating_id" => $this->ratingId,
            "description" => $this->description,
            "language_id" => $this->languageId,
            "score_id" => $this->scoreId,
            "evaluation" => $this->evaluation
        ], $associations);
    }
}
