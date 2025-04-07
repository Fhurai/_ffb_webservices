<?php

require_once __DIR__ . "/NamedEntityBuilderInterface.php";
require_once __DIR__ . "/../entity/Series.php";

class SeriesBuilder implements NamedEntityBuilderInterface
{
    private Series $obj;

    /**
     * Constructor to initialize the SeriesBuilder and reset the Series object.
     */
    public function __construct()
    {
        $this->reset(); // Initialize a new Series object.
    }

    /**
     * Builds and returns the Series object.
     *
     * @return Series The built Series object.
     */
    public function build(): Series
    {
        return $this->obj; // Return the current Series object.
    }

    /**
     * Resets the Series object to a new instance.
     */
    public function reset(): void
    {
        $this->obj = new Series(); // Create a new Series object.
    }

    /**
     * Sets the ID for the Series object.
     *
     * @param int|string $id The ID of the series, either as an integer or a string.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function withId(int|string $id): SeriesBuilder
    {
        // Check if the id is an integer
        if (is_integer($id)) {
            // Set the id
            $this->obj->setId($id);
        }
        // Check if the id is a string
        else if (is_string($id)) {
            // Convert the string to an integer
            $integer = (int) $id;
            // Set the id
            $this->obj->setId($integer);
        }
        return $this;
    }

    /**
     * Sets the creation date for the Series object.
     *
     * @param DateTime|string $creationDate The creation date as a DateTime object or a string.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function withCreationDate(DateTime|string $creationDate): SeriesBuilder
    {
        if ($creationDate instanceof DateTime) {
            $this->obj->setCreationDate($creationDate); // Set the creation date if it's a DateTime object.
        } else if (is_string($creationDate)) {
            $date = DateTime::createFromFormat("Y-m-d H:i:s", $creationDate);
            $this->obj->setCreationDate($date); // Parse and set the creation date if it's a string.
        }
        return $this; // Return the builder instance for chaining.
    }

    /**
     * Sets the delete date for the Series object.
     *
     * @param DateTime|string|null $deleteDate The delete date as a DateTime object or a string.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function withDeleteDate(DateTime|string|null $deleteDate): SeriesBuilder
    {
        if ($deleteDate instanceof DateTime) {
            $this->obj->setDeleteDate($deleteDate); // Set the delete date if it's a DateTime object.
        } else if (is_string($deleteDate)) {
            $date = DateTime::createFromFormat("Y-m-d H:i:s", $deleteDate);
            $this->obj->setDeleteDate($date); // Parse and set the delete date if it's a string.
        }
        // If delete date is null, set it to null in the Series object.
        else if ($deleteDate === null) {
            $this->obj->setDeleteDate(null); // Set delete date to null if not provided.
        }
        // If delete date is not provided, set it to null in the Series object.
        else {
            $this->obj->setDeleteDate(null); // Set delete date to null if not provided.
        }
        return $this; // Return the builder instance for chaining.
    }

    /**
     * Sets the update date for the Series object.
     *
     * @param DateTime|string $updateDate The update date as a DateTime object or a string.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function withUpdateDate(DateTime|string $updateDate): SeriesBuilder
    {
        if ($updateDate instanceof DateTime) {
            $this->obj->setUpdateDate($updateDate); // Set the update date if it's a DateTime object.
        } else if (is_string($updateDate)) {
            $date = DateTime::createFromFormat("Y-m-d H:i:s", $updateDate);
            $this->obj->setUpdateDate($date); // Parse and set the update date if it's a string.
        }
        return $this; // Return the builder instance for chaining.
    }

    /**
     * Sets the name for the Series object.
     *
     * @param string $name The name.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function withName(string $name): SeriesBuilder
    {
        $this->obj->setName($name); // Set the name of the Series object.
        return $this; // Return the builder instance for chaining.
    }

    /**
     * Sets the description for the Series object.
     *
     * @param string $description The description.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function withDescription(string $description): SeriesBuilder
    {
        $this->obj->setDescription($description); // Set the description of the Series object.
        return $this; // Return the builder instance for chaining.
    }

    /**
     * Sets the score ID for the Series object.
     *
     * @param int|null $scoreId The score ID.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function withScoreId(?int $scoreId): SeriesBuilder
    {
        $this->obj->setScoreId($scoreId); // Set the score ID of the Series object.
        return $this; // Return the builder instance for chaining.
    }

    /**
     * Sets the evaluation for the Series object.
     *
     * @param string|null $evaluation The evaluation.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function withEvaluation(?string $evaluation): SeriesBuilder
    {
        $this->obj->setEvaluation($evaluation); // Set the evaluation of the Series object.
        return $this; // Return the builder instance for chaining.
    }
}
