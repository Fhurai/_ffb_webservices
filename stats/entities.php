<?php

// Include the necessary endpoint and table classes
require_once __DIR__ . '/../src/endpoints/StatsEndpoint.php'; // Handles stats-related API requests
require_once __DIR__ . '/../src/table/StatsTable.php'; // Represents the stats table in the database

// Initialize the StatsEndpoint with the associated table class
$endpoint = new StatsEndpoint(StatsTable::class);

// Retrieve the HTTP request method (e.g., GET, POST, OPTIONS)
$method = $_SERVER['REQUEST_METHOD'];

try {
    // Handle the request based on the HTTP method
    switch ($method) {
        case 'OPTIONS':
            // Handle preflight requests for CORS
            $endpoint->options($_REQUEST);
            break;

        case 'GET':
            // Handle GET requests and pass 'entities' as an additional argument
            $endpoint->get($_REQUEST, 'entities');
            break;

        default:
            // Respond with a 405 Method Not Allowed for unsupported methods
            $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    // Handle any exceptions and respond with a 500 Internal Server Error
    ApiUtilities::httpInternalServerError("Server error: " . $e->getMessage());
}
