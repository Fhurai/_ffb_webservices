<?php

/**
 * Evaluable trait
 */
trait Evaluable
{
    /**
     * Evaluable identifier.
     * @var int
     */
    private ?int $score_id;
    /**
     * Evaluable evaluation.
     * @var string
     */
    private ?string $evaluation;

    /**
     * Getter Score_id
     * @return ?int Score_id
     */
    public function getScoreId(): ?int
    {
        return $this->score_id;
    }

    /**
     * Setter Score_id
     * @param int $score_id New Score_id
     * @return void
     */
    public function setScoreId(int $score_id = null): void
    {
        $this->score_id = $score_id;
    }

    /**
     * Getter Evaluation.
     * @return string Evaluation.
     */
    public function getEvaluation(): string
    {
        return $this->evaluation;
    }

    /**
     * Setter Evaluation.
     * @param string $evaluation New Evaluation.
     * @return void
     */
    public function setEvaluation(string $evaluation = null): void
    {
        $this->evaluation = $evaluation;
    }
}