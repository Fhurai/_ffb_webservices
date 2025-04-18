<?php

require_once __DIR__ . '/../src/endpoints/EntitiesEndpoint.php';
require_once __DIR__ . '/../src/table/FandomsTable.php';

$endpoint = new EntitiesEndpoint(FandomsTable::class);
$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            $endpoint->options($_REQUEST);
            break;

        case 'GET':
            $endpoint->get($_REQUEST, ['delete_date' => 'IS NULL'], true);
            break;

        default:
            $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    ApiUtilities::httpInternalServerError( "Server error: " . $e->getMessage());
}