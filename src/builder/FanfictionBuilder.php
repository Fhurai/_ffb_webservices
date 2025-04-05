<?php

require_once __DIR__ . "/NamedEntityBuilderInterface.php";
require_once __DIR__ . "/../entity/Fanfiction.php";

class FanfictionBuilder implements NamedEntityBuilderInterface
{

    private Fanfiction $obj;

    /**
     * Constructor to initialize the FanfictionBuilder and reset the Fanfiction object.
     */
    public function __construct()
    {
        $this->reset();
    }

    /**
     * Builds and returns the Fanfiction object.
     * 
     * @return Fanfiction The built Fanfiction object.
     */
    public function build(): Fanfiction
    {
        return $this->obj;
    }

    /**
     * Resets the Fanfiction object to a new instance.
     */
    public function reset(): void
    {
        $this->obj = new Fanfiction();
    }

    /**
     * Sets the ID for the Author object.
     * 
     * @param int|string $id The ID of the author, either as an integer or a string.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withId(int|string $id): FanfictionBuilder {
        // Check if the id is an integer
        if (is_integer($id)) {
            // Set the id
            $this->obj->setId($id);
        } 
        // Check if the id is a string
        else if (is_string($id)) {
            // Convert the string to an integer
            $integer = (int)$id;
            // Set the id
            $this->obj->setId($integer);
        }
        return $this;
    }

    /**
     * Sets the creation date for the Fanfiction object.
     * 
     * @param DateTime|string $creationDate The creation date as a DateTime object or a string.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withCreationDate(DateTime|string|null $creationDate): FanfictionBuilder
    {
        if ($creationDate instanceof DateTime) {
            $this->obj->setCreationDate($creationDate);
        } else if (is_string($creationDate)) {
            $date = DateTime::createFromFormat("Y-m-d H:i:s", $creationDate);
            $this->obj->setCreationDate($date);
        }
        return $this;
    }

    /**
     * Sets the delete date for the Fanfiction object.
     * 
     * @param DateTime|string|null $deleteDate The delete date as a DateTime object or a string.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withDeleteDate(DateTime|string|null $deleteDate): FanfictionBuilder
    {
        // Check if the delete date is a DateTime object, string, or null
        // and set it accordingly.
        if ($deleteDate instanceof DateTime) {
            $this->obj->setDeleteDate($deleteDate);
        } 
        // Check if the delete date is a string
        // and convert it to a DateTime object.
        else if (is_string($deleteDate)) {
            $date = DateTime::createFromFormat("Y-m-d H:i:s", $deleteDate);
            $this->obj->setDeleteDate($date);
        } 
        // If the delete date is null, set it to null in the Fanfiction object.
        else if($deleteDate === null){

            $this->obj->setDeleteDate(null);
        }
        return $this;
    }

    /**
     * Sets the update date for the Fanfiction object.
     * 
     * @param DateTime|string $updateDate The update date as a DateTime object or a string.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withUpdateDate(DateTime|string $updateDate): FanfictionBuilder
    {
        if ($updateDate instanceof DateTime) {
            $this->obj->setUpdateDate($updateDate);
        } else if (is_string($updateDate)) {
            $date = DateTime::createFromFormat("Y-m-d H:i:s", $updateDate);
            $this->obj->setUpdateDate($date);
        }
        return $this;
    }

    /**
     * Sets the name for the Fanfiction object.
     * 
     * @param string $name The name.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withName(string $name): FanfictionBuilder
    {
        $this->obj->setName($name);
        return $this;
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
        // Assign the provided fandoms to the Fanfiction object's fandoms property.
        $this->obj->fandoms = $fandoms;

        // Sort the fandoms array to maintain order.
        sort($this->obj->fandoms);

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
        // Check if the fandoms property is not set, and initialize it as an empty array if needed.
        if (!isset($this->obj->fandoms)) {
            $this->obj->fandoms = [];
        }

        // Add the provided fandom to the fandoms array.
        array_push($this->obj->fandoms, $fandom);

        // Sort the fandoms array to maintain order.
        sort($this->obj->fandoms);

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
        // Assign the provided characters to the Fanfiction object's characters property.
        $this->obj->characters = $characters;

        // Sort the characters array to maintain order.
        sort($this->obj->characters);

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
        // Check if the characters property is not set, and initialize it as an empty array if needed.
        if (!isset($this->obj->characters)) {
            $this->obj->characters = [];
        }

        // Add the provided character to the characters array.
        array_push($this->obj->characters, $character);

        // Sort the characters array to maintain order.
        sort($this->obj->characters);

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
        // Assign the provided relations to the Fanfiction object's relations property.
        $this->obj->relations = $relations;

        // Sort the relations array to maintain order.
        sort($this->obj->relations);

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
        // Check if the relations property is not set, and initialize it as an empty array if needed.
        if (!isset($this->obj->relations)) {
            $this->obj->relations = [];
        }

        // Add the provided relation to the relations array.
        array_push($this->obj->relations, $relation);

        // Sort the relations array to maintain order.
        sort($this->obj->relations);

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
        // Assign the provided tags to the Fanfiction object's tags property.
        $this->obj->tags = $tags;

        // Sort the tags array to maintain order.
        sort($this->obj->tags);

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
        // Check if the tags property is not set, and initialize it as an empty array if needed.
        if (!isset($this->obj->tags)) {
            $this->obj->tags = [];
        }

        // Add the provided tag to the tags array.
        array_push($this->obj->tags, $tag);

        // Sort the tags array to maintain order.
        sort($this->obj->tags);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }

    /**
     * Sets the score ID for the Fanfiction object.
     * 
     * @param int|null $scoreId The score ID.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withScoreId(?int $scoreId): FanfictionBuilder
    {
        // Set the score ID for the Fanfiction object.
        $this->obj->setScoreId($scoreId);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }

    /**
     * Sets the evaluation for the Fanfiction object.
     * 
     * @param string|null $evaluation The evaluation.
     * @return FanfictionBuilder The current instance of FanfictionBuilder.
     */
    public function withEvaluation(?string $evaluation): FanfictionBuilder
    {
        // Set the evaluation for the Fanfiction object.
        $this->obj->setEvaluation($evaluation);

        // Return the current instance of FanfictionBuilder.
        return $this;
    }
    
}
