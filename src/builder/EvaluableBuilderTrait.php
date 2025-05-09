<?php

trait EvaluableBuilderTrait
{

    /**
     * Sets the score ID for the Series object.
     *
     * @param  int|null $scoreId The score ID.
     * @return mixed The current instance.
     */
    public function withScoreId(?int $scoreId): mixed
    {
        if($scoreId < 0){
            throw new FfbException("Score_id must be positive");
        }
        $this->obj->setScoreId($scoreId); // Set the score ID of the Series object.
        return $this; // Return the builder instance for chaining.
    }

    /**
     * Sets the Score object for the Series object.
     *
     * @param  Score $score The Score object.
     * @return mixed The current instance.
     */
    public function withScore(Score $score): mixed
    {
        $this->obj->setScore($score); // Set the Score object of the Series object.
        return $this; // Return the builder instance for chaining.
    }

    /**
     * Sets the evaluation for the Series object.
     *
     * @param  string|null $evaluation The evaluation.
     * @return mixed The current instance.
     */
    public function withEvaluation(?string $evaluation): mixed
    {
        $this->obj->setEvaluation($evaluation); // Set the evaluation of the Series object.
        return $this; // Return the builder instance for chaining.
    }
}
