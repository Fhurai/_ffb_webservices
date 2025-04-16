<?php

trait EvaluableBuilderTrait{

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