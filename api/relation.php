<?php
require_once __DIR__ . '/../src/table/RelationsTable.php';
$tableClass = RelationsTable::class;
$defaultSearch = ['delete_date' => 'IS NULL'];
require_once __DIR__ . '/entityEndpoint.php';
