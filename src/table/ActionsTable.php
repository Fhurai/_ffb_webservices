<?php

require_once __DIR__ . "/ParametersTable.php";
require_once __DIR__ . "/../entity/Action.php";

/**
 * Class ActionsTable
 * Handles operations related to the `actions` table in the database.
 */
class ActionsTable extends ParametersTable
{
    protected const TABLE_NAME = 'actions';
    protected const ENTITY_CLASS = Action::class;

    protected function parseEntity(array $row): Action
    {
        return new Action($row['id'], $row['name']);
    }
}
