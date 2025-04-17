<?php

// CORS headers must be at the TOP
// These headers enable cross-origin requests and define allowed methods and headers.
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header('Content-Type: application/json; charset=utf-8');

// Include necessary configuration and utility files
require_once __DIR__ . '/../config/config.php'; // Application configuration
require_once __DIR__ . '/../src/utilities/ApiUtilities.php'; // Utility functions for API responses
require_once __DIR__ . '/../src/table/StatsTable.php'; // Database table abstraction for statistics

// Determine the HTTP request method
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    // Handle preflight requests for CORS
    ApiUtilities::httpOk(null);
} elseif ($method === 'GET') {
    // Handle GET requests
    if (array_key_exists('entity', $_GET)) {
        $parameter = $_GET['entity']; // Retrieve the 'entity' query parameter

        // Validate the entity against a predefined list of allowed values
        if (in_array($parameter, ['authors','characters','fandoms','fanfictions','languages','links','relations','series','tags','users'])) {
            $table = new StatsTable(); // Initialize StatsTable with database and table name
            $stats = $table->getStatsByEntity($parameter); // Fetch statistics based on the parameter

            if ($stats) {
                // Respond with the list of stats if found
                ApiUtilities::httpOk($stats);
            } else {
                // Respond with a 404 error if no stats are found
                ApiUtilities::httpNotFound("No stat found");
            }
        } else {
            // Respond with a 400 error if the parameter is invalid
            ApiUtilities::httpBadRequest("Invalid parameter");
        }
    } else {
        // Respond with a 400 error if the 'parameter' query parameter is missing
        ApiUtilities::httpBadRequest("Parameter is missing");
    }
} else {
    // Respond with a 405 error for unsupported HTTP methods
    ApiUtilities::httpMethodNotAllowed("Method not allowed");
}
