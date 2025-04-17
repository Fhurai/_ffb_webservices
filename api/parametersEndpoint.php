<?php
// Set CORS headers for all responses
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: GET, OPTIONS");
header('Content-Type: application/json; charset=utf-8');

// Include common dependencies
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utility/ApiUtilities.php';

// Validate required configuration
if (!isset($tableClass) || !isset($findOptions)) {
    ApiUtilities::httpError(500, 'Controller configuration error');
    exit;
}

// Handle request methods
$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::httpOk(null);
            break;

        case 'GET':
            ApiUtilities::decodeJWT();
            $table = new $tableClass("main", "user");
            $data = $table->findAll($findOptions);
            ApiUtilities::httpOk($data ?: []);
            break;

        default:
            ApiUtilities::httpMethodNotAllowed("Method $method not allowed");
    }
} catch (Exception $e) {
    ApiUtilities::httpError(500, "Server error: " . $e->getMessage());
}
