<?php
require_once __DIR__ . '/../src/table/UsersTable.php';
$tableClass = UsersTable::class;
$defaultSearch = ['delete_date' => 'IS NULL'];
require_once __DIR__ . '/entityEndpoint.php';
