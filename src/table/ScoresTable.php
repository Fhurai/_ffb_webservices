<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/ParametersTable.php";
require_once __DIR__ . "/../entity/Score.php";

/**
 * Class ScoresTable
 * Handles operations related to the `scores` table in the database.
 */
class ScoresTable extends ParametersTable
{
    protected const TABLE_NAME = 'scores';
    protected const ENTITY_CLASS = Score::class;

    protected function parseEntity(array $row): Score
    {
        return new Score($row['id'], $row['name']);
    }
}
