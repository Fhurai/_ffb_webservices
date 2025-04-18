<?php

/**
 * Evaluable trait
 */
trait EvaluableTrait
{
    /**
     * Evaluable identifier.
     * @var int|null
     */
    private ?int $scoreId;

    /**
     * Evaluable score.
     * @var Score|null
     */
    private ?Score $score;

    /**
     * Evaluable evaluation.
     * @var string|null
     */
    private ?string $evaluation;

    /**
     * Getter ScoreId
     * @return ?int ScoreId
     */
    public function getScoreId(): ?int
    {
        return $this->scoreId;
    }

    /**
     * Setter ScoreId
     * @param int|null $scoreId New ScoreId
     * @return void
     */
    public function setScoreId(int $scoreId = null): void
    {
        $this->scoreId = $scoreId;
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
        return isset($this->score);
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
     * @param string|null $evaluation New Evaluation.
     * @return void
     */
    public function setEvaluation(string $evaluation = null): void
    {
        $this->evaluation = $evaluation;
    }
}
