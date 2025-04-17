<?php
require_once __DIR__ . '/../src/table/FandomsTable.php';
$tableClass = FandomsTable::class;
$defaultSearch = ['delete_date' => 'IS NULL'];
require_once __DIR__ . '/entityEndpoint.php';
