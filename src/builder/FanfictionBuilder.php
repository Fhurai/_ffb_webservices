<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/EvaluableBuilderTrait.php";
require_once __DIR__ . "/../entity/Fanfiction.php";

/**
 * FanfictionBuilder is responsible for constructing and resetting instances of the Fanfiction entity.
 * It extends the NamedEntityBuilder to inherit common functionality for named entities.
 */
final class FanfictionBuilder extends NamedEntityBuilder
{
    use EvaluableBuilderTrait;

    /**
     * @var Fanfiction The Fanfiction object being built.
     */
    protected $obj;

    /**
     * Resets the Fanfiction object to a new instance.
     * This ensures the builder starts with a clean state.
     */
    public function reset(): void
    {
        $this->obj = new Fanfiction();
    }

    /**
     * Sets the author ID for the Fanfiction object.
     *
     * @param  ?int $authorId The author ID.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withAuthorId(?int $authorId): FanfictionBuilder
    {
        if ($authorId === null) {
            throw new FfbException('Author ID cannot be null');
        }
        $this->obj->setAuthorId($authorId);
        return $this;
    }

    /**
     * Sets the author object for the Fanfiction.
     *
     * @param  Author $author The author object.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withAuthor(Author $author): FanfictionBuilder
    {
        $this->obj->setAuthor($author);
        return $this;
    }

    /**
     * Sets the rating ID for the Fanfiction object.
     *
     * @param  ?int $ratingId The rating ID.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withRatingId(?int $ratingId): FanfictionBuilder
    {
        if ($ratingId === null) {
            throw new FfbException('Rating ID cannot be null');
        }
        $this->obj->setRatingId($ratingId);
        return $this;
    }

    /**
     * Sets the rating object for the Fanfiction.
     *
     * @param  Rating $rating The rating object.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withRating(Rating $rating): FanfictionBuilder
    {
        $this->obj->setRating($rating);
        return $this;
    }

    /**
     * Sets the description for the Fanfiction object.
     *
     * @param  ?string $description The description.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withDescription(?string $description): FanfictionBuilder
    {
        if ($description === null) {
            throw new FfbException('Description cannot be null');
        }
        $this->obj->setDescription($description);
        return $this;
    }

    /**
     * Sets the language ID for the Fanfiction object.
     *
     * @param  ?int $languageId The language ID.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withLanguageId(?int $languageId): FanfictionBuilder
    {
        if ($languageId === null) {
            throw new FfbException('Language ID cannot be null');
        }
        $this->obj->setLanguageId($languageId);
        return $this;
    }

    /**
     * Sets the language object for the Fanfiction.
     *
     * @param  Language $language The language object.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withLanguage(Language $language): FanfictionBuilder
    {
        $this->obj->setLanguage($language);
        return $this;
    }

    /**
     * Sets the fandoms for the Fanfiction object.
     *
     * @param  ?array $fandoms An array of Fandom objects.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     * @throws \FfbException If any element in the array is not a Fandom instance.
     */
    public function withFandoms(?array $fandoms): FanfictionBuilder
    {
        if ($fandoms === null) {
            throw new FfbException('Fandoms cannot be null');
        }
        foreach ($fandoms as $fandom) {
            if (!$fandom instanceof Fandom) {
                throw new \FfbException('Expected instance of Fandom');
            }
        }

        // Sort the fandoms array alphabetically by name.
        usort(
            $fandoms,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );

        $this->obj->setFandoms($fandoms);
        return $this;
    }

    /**
     * Adds a single fandom to the Fanfiction object.
     *
     * @param  Fandom $fandom The fandom to add.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function addFandom(Fandom $fandom): FanfictionBuilder
    {
        $fandoms = $this->obj->hasFandoms() ? $this->obj->getFandoms() : [];
        array_push($fandoms, $fandom);

        // Sort the fandoms array alphabetically by name.
        usort(
            $fandoms,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );

        $this->obj->setFandoms($fandoms);
        return $this;
    }

    /**
     * Sets the characters for the Fanfiction object.
     *
     * @param  ?array $characters An array of Character objects.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     * @throws \FfbException If any element in the array is not a Character instance.
     */
    public function withCharacters(?array $characters): FanfictionBuilder
    {
        if ($characters === null) {
            throw new FfbException('Characters cannot be null');
        }
        foreach ($characters as $character) {
            if (!$character instanceof Character) {
                throw new \FfbException('Expected instance of Character');
            }
        }

        // Sort the characters array alphabetically by name.
        usort(
            $characters,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );

        $this->obj->setCharacters($characters);
        return $this;
    }

    /**
     * Adds a single character to the Fanfiction object.
     *
     * @param  Character $character The character to add.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function addCharacter(Character $character): FanfictionBuilder
    {
        $characters = $this->obj->hasCharacters() ? $this->obj->getCharacters() : [];
        array_push($characters, $character);

        // Sort the characters array alphabetically by name.
        usort(
            $characters,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );

        $this->obj->setCharacters($characters);
        return $this;
    }

    /**
     * Sets the relations for the Fanfiction object.
     *
     * @param  ?array $relations An array of Relation objects.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withRelations(?array $relations): FanfictionBuilder
    {
        if ($relations === null) {
            throw new FfbException('Relations cannot be null');
        }
        usort(
            $relations,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );
        $this->obj->setRelations($relations);

        return $this;
    }

    /**
     * Adds a single relation to the Fanfiction object.
     *
     * @param  Relation $relation The relation to add.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function addRelation(Relation $relation): FanfictionBuilder
    {
        $relations = $this->obj->hasRelations() ? $this->obj->getRelations() : [];
        array_push($relations, $relation);

        // Sort the relations array alphabetically by name.
        usort(
            $relations,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );
        $this->obj->setRelations($relations);

        return $this;
    }

    /**
     * Sets the tags for the Fanfiction object.
     *
     * @param  ?array $tags An array of Tag objects.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withTags(?array $tags): FanfictionBuilder
    {
        if ($tags === null) {
            throw new FfbException('Tags cannot be null');
        }
        usort(
            $tags,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );
        $this->obj->setTags($tags);

        return $this;
    }

    /**
     * Adds a single tag to the Fanfiction object.
     *
     * @param  Tag $tag The tag to add.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function addTag(Tag $tag): FanfictionBuilder
    {
        $tags = $this->obj->hasTags() ? $this->obj->getTags() : [];
        array_push($tags, $tag);

        // Sort the tags array alphabetically by name.
        usort(
            $tags,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );
        $this->obj->setTags($tags);

        return $this;
    }

    /**
     * Sets the links for the Fanfiction object.
     *
     * @param  ?array $links An array of Link objects.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withLinks(?array $links): FanfictionBuilder
    {
        if ($links === null) {
            throw new FfbException('Links cannot be null');
        }
        if(!$links[0] instanceof Link){
            $newLinks = [];
            foreach ($links as $link) {
                $newLinks[] = $link[0];
            }
            $links = $newLinks;
        }


        usort(
            $links,
            function ($a, $b) {
                return strcmp($a->getUrl(), $b->getUrl());
            }
        );
        $this->obj->setLinks($links);
        return $this;
    }

    /**
     * Adds a single link to the Fanfiction object.
     *
     * @param  Link $link The link to add.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function addLink(Link $link): FanfictionBuilder
    {
        $links = $this->obj->hasLinks() ? $this->obj->getLinks() : [];

        array_push($links, $link);
        usort(
            $links,
            function ($a, $b) {
                return strcmp($a->getUrl(), $b->getUrl());
            }
        );
        $this->obj->setLinks($links);

        return $this;
    }
}
