<?php

require_once __DIR__ . '/../src/endpoints/EntityEndpoint.php';
require_once __DIR__ . '/../src/table/SeriesTable.php';

$endpoint = new EntityEndpoint(SeriesTable::class);
$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            $endpoint->options($_REQUEST);
            break;

        case 'GET':
            $endpoint->get($_REQUEST, SrcUtilities::getQueryParameter('id'));
            break;

        case 'POST':
            $endpoint->post($_REQUEST, json_decode(file_get_contents('php://input')));
            break;


        default:
            $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    ApiUtilities::httpInternalServerError("Server error: " . $e->getMessage());
}
