<?php
require_once __DIR__ . '/../src/table/CharactersTable.php';
$tableClass = CharactersTable::class;
$defaultSearch = ['delete_date' => 'IS NULL'];
require_once __DIR__ . '/entitiesEndpoint.php';
