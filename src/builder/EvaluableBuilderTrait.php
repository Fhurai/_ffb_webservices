<?php

trait EvaluableBuilderTrait{

    /**
     * Sets the score ID for the Series object.
     *
     * @param int|null $scoreId The score ID.
     * @return mixed The current instance.
     */
    public function withScoreId(?int $scoreId): mixed
    {
        $this->obj->setScoreId($scoreId); // Set the score ID of the Series object.
        return $this; // Return the builder instance for chaining.
    }

    public function withScore(Score $score): mixed
    {
        $this->obj->setScore($score);
        return $this;
    }

    /**
     * Sets the evaluation for the Series object.
     *
     * @param string|null $evaluation The evaluation.
     * @return mixed The current instance.
     */
    public function withEvaluation(?string $evaluation): mixed
    {
        $this->obj->setEvaluation($evaluation); // Set the evaluation of the Series object.
        return $this; // Return the builder instance for chaining.
    }
}
