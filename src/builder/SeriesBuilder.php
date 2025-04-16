<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/EvaluableBuilderTrait.php";
require_once __DIR__ . "/../entity/Series.php";

class SeriesBuilder extends NamedEntityBuilder
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
}
