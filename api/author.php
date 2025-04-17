<?php
require_once __DIR__ . '/../src/table/AuthorsTable.php';
$tableClass = AuthorsTable::class;
$defaultSearch = ['delete_date' => 'IS NULL'];
require_once __DIR__ . '/entityEndpoint.php';
