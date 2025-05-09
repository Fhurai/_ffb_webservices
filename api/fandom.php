<?php

require_once __DIR__ . '/../src/endpoints/EntityEndpoint.php';
require_once __DIR__ . '/../src/table/FandomsTable.php';

$endpoint = new EntityEndpoint(FandomsTable::class);
$method = $_SERVER['REQUEST_METHOD'];
$phpInput = 'php://input';

try {
    switch ($method) {
        case 'OPTIONS':
            $endpoint->options($_REQUEST);
            break;

        case 'GET':
            $endpoint->get($_REQUEST, SrcUtilities::getQueryParameter('id'));
            break;

        case 'POST':
            $endpoint->post($_REQUEST, json_decode(file_get_contents($phpInput)));
            break;

        case 'PUT':
            $endpoint->put($_REQUEST, json_decode(file_get_contents($phpInput)));
            break;

        case 'PATCH':
            $endpoint->patch($_REQUEST, json_decode(file_get_contents($phpInput)));
            break;

        case 'DELETE':
            $endpoint->delete($_REQUEST, SrcUtilities::getQueryParameter('id'));
            break;

        default:
            $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    ApiUtilities::httpInternalServerError("Server error: " . $e->getMessage());
}
