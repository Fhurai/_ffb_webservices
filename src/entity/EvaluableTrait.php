<?php

/**
 * Evaluable trait
 */
trait EvaluableTrait
{
    /**
     * Evaluable identifier.
     * @var int
     */
    private ?int $score_id;
    /**
     * Evaluable score.
     * @var Score
     */
    private ?Score $score;
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
     * Getter Score.
     * @return ?Score Score.
     */
    public function getScore(): ?Score
    {
        return $this->score;
    }

    public function hasScore(): bool
    {
        return $this->score  !== null;
    }

    /**
     * Setter Score.
     * @param Score|array|null $score New Score.
     * @return void
     */
    public function setScore(Score|array|null $score): void
    {
        $this->score = is_array($score)
            ? Score::jsonUnserialize(json_encode($score))
            : $score;
    }

    /**
     * Getter Evaluation.
     * @return ?string Evaluation.
     */
    public function getEvaluation(): ?string
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
