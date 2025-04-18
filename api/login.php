<?php

require_once __DIR__ . '/../src/endpoints/LoginEndpoint.php';
require_once __DIR__ . '/../src/table/ActionsTable.php';

$endpoint = new LoginEndpoint();
$method = $_SERVER['REQUEST_METHOD'];

try {
    if($method === 'POST'){
        $endpoint->post($method);
    } else {
        $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    ApiUtilities::httpInternalServerError( "Server error: " . $e->getMessage());
}
