<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/EvaluableBuilderTrait.php";
require_once __DIR__ . "/../entity/Series.php";

final class SeriesBuilder extends NamedEntityBuilder
{
    use EvaluableBuilderTrait;

    /**
     * @var Series
     */
    protected $obj;

    /**
     * Resets the Series object to a new instance.
     */
    public function reset(): void
    {
        $this->obj = new Series(); // Create a new Series object.
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
     * Sets the fanfiction for the Fanfiction object.
     *
     * @param array $fanfictions The fanfictions array.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function withFanfictions(array $fanfictions): SeriesBuilder
    {
        foreach($fanfictions as $fanfiction){
            if(!$fanfiction instanceof Fanfiction){
                throw new \InvalidArgumentException('Expected instance of Fanfiction');
            }
        }

        // Sort the fanfictions array to maintain order.
        usort($fanfictions, function($a, $b){
            return strcmp($a->getName(), $b->getName());
        });

        // Assign the provided fanfictions to the Fanfiction object's fanfictions property.
        $this->obj->setFanfictions($fanfictions);

        // Return the current instance of SeriesBuilder.
        return $this;
    }

    /**
     * Adds a fanfiction to the Fanfiction object.
     *
     * @param Fanfiction $fanfiction The fanfiction to add.
     * @return SeriesBuilder The current instance of SeriesBuilder.
     */
    public function addFandom(Fanfiction $fanfiction): SeriesBuilder
    {
        $fanfictions = [];
        if ($this->obj->hasFanfictions()) {
            $fanfictions = $this->obj->getFanfictions();
        }

        array_push($fanfictions, $fanfiction);
        usort($fanfictions, function($a, $b){
            return strcmp($a->getName(), $b->getName());
        });
        $this->obj->setFanfictions($fanfictions);

        // Return the current instance of SeriesBuilder.
        return $this;
    }
}
