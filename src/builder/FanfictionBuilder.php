<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/EvaluableBuilderTrait.php";
require_once __DIR__ . "/../entity/Fanfiction.php";

final class FanfictionBuilder extends NamedEntityBuilder
{
    use EvaluableBuilderTrait;

    /**
     * @var Fanfiction
     */
    protected $obj;

    /**
     * Resets the Fanfiction object to a new instance.
     */
    public function reset(): void
    {
        $this->obj = new Fanfiction();
    }

    /**
     * Sets the author ID for the Fanfiction object.
     *
     * @param int $authorId The author ID.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withAuthorId(int $authorId): FanfictionBuilder
    {
        $this->obj->setAuthorId($authorId);
        return $this;
    }

    /**
     * Sets the rating ID for the Fanfiction object.
     *
     * @param int $ratingId The rating ID.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withRatingId(int $ratingId): FanfictionBuilder
    {
        $this->obj->setRatingId($ratingId);
        return $this;
    }

    /**
     * Sets the description for the Fanfiction object.
     *
     * @param string $description The description.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withDescription(string $description): FanfictionBuilder
    {
        $this->obj->setDescription($description);
        return $this;
    }

    /**
     * Sets the language ID for the Fanfiction object.
     *
     * @param int $languageId The language ID.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withLanguageId(int $languageId): FanfictionBuilder
    {
        $this->obj->setLanguageId($languageId);
        return $this;
    }

    /**
     * Sets the fandom for the Fanfiction object.
     *
     * @param array $fandoms The fandoms array.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withFandom(string $fandoms): FanfictionBuilder
    {
        // Sort the fandoms array to maintain order.
        sort($fandoms);

        // Assign the provided fandoms to the Fanfiction object's fandoms property.
        $this->obj->setFandoms($fandoms);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }

    /**
     * Adds a fandom to the Fanfiction object.
     *
     * @param Fandom $fandom The fandom to add.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function addFandom(Fandom $fandom): FanfictionBuilder
    {
        $fandoms = [];
        if ($this->obj->hasFandoms()) {
            $fandoms = $this->obj->getFandoms();
        }

        array_push($fandoms, $fandom);
        sort($fandoms);
        $this->obj->setFandoms($fandoms);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }

    /**
     * Sets the characters for the Fanfiction object.
     *
     * @param array $characters The characters array.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withCharacters(array $characters): FanfictionBuilder
    {
        usort($characters, function($a, $b){
            return strcmp($a->getName(), $b->getName());
        });

        // Assign the provided characters to the Fanfiction object's characters property.
        $this->obj->setCharacters($characters);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }

    /**
     * Adds a character to the Fanfiction object.
     *
     * @param Character $character The character to add.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function addCharacter(Character $character): FanfictionBuilder
    {
        $characters = [];
        if ($this->obj->hasCharacters()) {
            $characters = $this->obj->getCharacters();
        }

        array_push($characters, $character);
        sort($characters);
        $this->obj->setCharacters($characters);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }

    /**
     * Sets the relations for the Fanfiction object.
     *
     * @param array $relations The relations array.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withRelations(array $relations): FanfictionBuilder
    {
        sort($relations);
        $this->obj->setRelations($relations);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }

    /**
     * Adds a relation to the Fanfiction object.
     *
     * @param Relation $relation The relation to add.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function addRelation(Relation $relation): FanfictionBuilder
    {
        $relations = [];
        if ($this->obj->hasRelations()) {
            $relations = $this->obj->getRelations();
        }

        array_push($relations, $relation);
        sort($relations);
        $this->obj->setRelations($relations);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }

    /**
     * Sets the tags for the Fanfiction object.
     *
     * @param array $tags The tags array.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withTags(array $tags): FanfictionBuilder
    {
        sort($tags);
        $this->obj->setTags($tags);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }

    /**
     * Adds a tag to the Fanfiction object.
     *
     * @param Tag $tag The tag to add.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function addTag(Tag $tag): FanfictionBuilder
    {
        $tags = [];
        if ($this->obj->hasTags()) {
            $tags = $this->obj->getTags();
        }

        array_push($tags, $tag);
        sort($tags);
        $this->obj->setTags($tags);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }
}
