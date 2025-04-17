<?php
require_once __DIR__ . '/../src/table/TagsTable.php';
$tableClass = TagsTable::class;
$defaultSearch = ['delete_date' => 'IS NULL'];
require_once __DIR__ . '/entitiesEndpoint.php';
