<?php

require_once __DIR__ . '/../src/endpoints/LoginEndpoint.php';
require_once __DIR__ . '/../src/table/ActionsTable.php';

$endpoint = new LoginEndpoint();
$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        
        case 'POST':
            $endpoint->post($method);
            break;

        default:
            $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    ApiUtilities::httpInternalServerError( "Server error: " . $e->getMessage());
}