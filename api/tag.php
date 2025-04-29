<?php

require_once __DIR__ . '/../src/endpoints/EntityEndpoint.php';
require_once __DIR__ . '/../src/table/TagsTable.php';

$endpoint = new EntityEndpoint(TagsTable::class);
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

        case 'PUT':
            $endpoint->put($_REQUEST, json_decode(file_get_contents('php://input')));
            break;

        case 'PATCH':
            $endpoint->patch($_REQUEST, json_decode(file_get_contents('php://input')));
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
