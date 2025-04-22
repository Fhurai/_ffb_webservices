<?php

require_once __DIR__ . '/../src/endpoints/ParameterEndpoint.php';
require_once __DIR__ . '/../src/table/TagTypesTable.php';

$endpoint = new ParameterEndpoint(TagTypesTable::class);
$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
    case 'OPTIONS':
        $endpoint->options($_REQUEST);
        break;

    case 'GET':
        $endpoint->get($_REQUEST, ['order' => ['id' => 'ASC']], true);
        break;

    default:
        $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    ApiUtilities::httpInternalServerError("Server error: " . $e->getMessage());
}
