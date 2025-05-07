<?php

require_once __DIR__ . '/../src/endpoints/LoginEndpoint.php';
require_once __DIR__ . '/../src/table/ActionsTable.php';

$test = array_key_exists("test", $_GET);

$endpoint = new LoginEndpoint($test);
$method = $_SERVER['REQUEST_METHOD'];

try {
    if($method === 'POST') {
        $endpoint->post($method);
    } else {
        $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    ApiUtilities::httpInternalServerError("Server error: " . $e->getMessage());
}
