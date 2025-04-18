<?php

require_once __DIR__ . '/../src/endpoints/StatsEndpoint.php';
require_once __DIR__ . '/../src/table/StatsTable.php';

$endpoint = new StatsEndpoint(StatsTable::class);
$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            $endpoint->options($_REQUEST);
            break;

        case 'GET':
            $endpoint->get($_REQUEST, 'entity', $_GET['entity']);
            break;

        default:
            $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    ApiUtilities::httpInternalServerError( "Server error: " . $e->getMessage());
}
