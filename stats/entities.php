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
    ApiUtilities::HttpOk(null);
} else if ($method === 'GET') {
    // Handle GET ALL request to retrieve all actions
    $table = new StatsTable(); // Initialize StatsTable with database and table name
    $actions = $table->getEntitiesStats(); // Fetch all actions from the database

    if ($actions) {
        // Respond with the list of actions if found
        ApiUtilities::HttpOk($actions);
    } else {
        // Respond with a 404 error if no actions are found
        ApiUtilities::HttpNotFound("No actions found");
    }
} else {
    // Respond with a 405 error for unsupported HTTP methods
    ApiUtilities::HttpMethodNotAllowed("Method not allowed");
}
