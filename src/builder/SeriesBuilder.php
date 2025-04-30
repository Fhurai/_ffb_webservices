<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/EvaluableBuilderTrait.php";
require_once __DIR__ . "/../entity/Series.php";

/**
 * SeriesBuilder is responsible for constructing and resetting instances of the Series entity.
 * It extends the NamedEntityBuilder to inherit common functionality for named entities.
 */
final class SeriesBuilder extends NamedEntityBuilder
{
    use EvaluableBuilderTrait;

    /**
     * @var Series The Series object being built.
     */
    protected $obj;

    /**
     * Resets the Series object to a new instance.
     * This ensures the builder starts with a fresh Series object.
     */
    public function reset(): void
    {
        $this->obj = new Series(); // Create a new Series object.
    }

    /**
     * Sets the description for the Series object.
     *
     * @param  ?string $description The description to set.
     * @return SeriesBuilder The current instance of SeriesBuilder for method chaining.
     */
    public function withDescription(?string $description): SeriesBuilder
    {
        if($description === null){
            throw new FfbEndpointException('Description cannot be null');
        }
        $this->obj->setDescription($description); // Set the description of the Series object.
        return $this; // Return the builder instance for chaining.
    }

    /**
     * Sets the fanfictions for the Series object.
     *
     * @param  ?array $fanfictions An array of Fanfiction objects to associate with the Series.
     * @return SeriesBuilder The current instance of SeriesBuilder for method chaining.
     * @throws \FfbException If any element in the array is not an instance of Fanfiction.
     */
    public function withFanfictions(?array $fanfictions): SeriesBuilder
    {
        if($fanfictions === null){
            throw new FfbException('Fanfictions cannot be null');
        }
        foreach ($fanfictions as $fanfiction) {
            // Validate that each element is an instance of Fanfiction.
            if (!$fanfiction instanceof Fanfiction) {
                throw new \FfbException('Expected instance of Fanfiction');
            }
        }

        // Sort the fanfictions array alphabetically by their name.
        usort(
            $fanfictions,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );

        // Assign the sorted fanfictions to the Series object.
        $this->obj->setFanfictions($fanfictions);

        return $this; // Return the builder instance for chaining.
    }

    /**
     * Adds a single fanfiction to the Series object.
     *
     * @param  Fanfiction $fanfiction The Fanfiction object to add.
     * @return SeriesBuilder The current instance of SeriesBuilder for method chaining.
     */
    public function addFanfiction(Fanfiction $fanfiction): SeriesBuilder
    {
        // Retrieve the existing fanfictions or initialize an empty array.
        $fanfictions = [];
        if ($this->obj->hasFanfictions()) {
            $fanfictions = $this->obj->getFanfictions();
        }

        // Add the new fanfiction to the array.
        array_push($fanfictions, $fanfiction);

        // Sort the fanfictions array alphabetically by their name.
        usort(
            $fanfictions,
            function ($a, $b) {
                return strcmp($a->getName(), $b->getName());
            }
        );

        // Update the Series object with the new list of fanfictions.
        $this->obj->setFanfictions($fanfictions);

        return $this; // Return the builder instance for chaining.
    }
}
