<?php

trait Evaluable {

    private int $score_id;
    private string $evaluation;

    public function getScoreId(): int
    {
        return $this->score_id;
    }

    public function setScoreId(int $score_id): void
    {
        $this->score_id = $score_id;
    }

    public function getEvaluation(): string
    {
        return $this->evaluation;
    }

    public function setEvaluation(string $evaluation): void
    {
        $this->evaluation = $evaluation;
    }
}