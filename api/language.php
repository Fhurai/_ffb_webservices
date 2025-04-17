<?php
require_once __DIR__ . '/../src/table/LanguagesTable.php';
$tableClass = LanguagesTable::class;
$defaultSearch = ['delete_date' => 'IS NULL'];
require_once __DIR__ . '/entityEndpoint.php';
