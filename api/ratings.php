<?php

// Include the required classes for handling endpoints and database table interactions
require_once __DIR__ . '/../src/endpoints/ParameterEndpoint.php'; // Handles API endpoint logic
require_once __DIR__ . '/../src/table/RatingsTable.php'; // Represents the Ratings database table

// Initialize the ParameterEndpoint with the RatingsTable class
$endpoint = new ParameterEndpoint(RatingsTable::class);

// Retrieve the HTTP request method (e.g., GET, POST, OPTIONS, etc.)
$method = $_SERVER['REQUEST_METHOD'];

try {
    // Handle the request based on the HTTP method
    switch ($method) {
        case 'OPTIONS':
            // Handle preflight requests (CORS or other OPTIONS requests)
            $endpoint->options($_REQUEST);
            break;

        case 'GET':
            // Handle GET requests
            // Pass the request parameters, default ordering, and a flag for additional processing
            $endpoint->get($_REQUEST, ['order' => ['id' => 'ASC']], true);
            break;

        default:
            // Respond with a "405 Method Not Allowed" error for unsupported methods
            $endpoint->methodNotAllowed($method);
    }
} catch (Exception $e) {
    // Handle any exceptions and respond with a "500 Internal Server Error"
    ApiUtilities::httpInternalServerError("Server error: " . $e->getMessage());
}