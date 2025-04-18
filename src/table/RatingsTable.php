<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/ParametersTable.php";
require_once __DIR__ . "/../entity/Rating.php";

/**
 * Class RatingsTable
 * Handles operations related to the `ratings` table in the database.
 */
class RatingsTable extends ParametersTable
{
    protected const TABLE_NAME = 'ratings';
    protected const ENTITY_CLASS = Rating::class;

    protected function parseEntity(array $row): Rating
    {
        return new Rating($row['id'], $row['name']);
    }
}
