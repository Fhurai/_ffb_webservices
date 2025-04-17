<?php

// CORS headers must be at the TOP
// These headers enable cross-origin requests and define allowed methods and headers.
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: GET, OPTIONS");
header('Content-Type: application/json; charset=utf-8');

// Include necessary configuration and utility files
require_once __DIR__ . '/../config/config.php'; // Application configuration
require_once __DIR__ . '/../src/utility/ApiUtilities.php'; // Utility functions for API responses
require_once __DIR__ . '/../src/table/ActionsTable.php'; // Database table abstraction for actions

// Determine the HTTP request method
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    // Handle preflight requests for CORS
    ApiUtilities::httpOk(null);
} elseif ($method === 'GET') {
    ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    // Handle GET ALL request to retrieve all actions
    $table = new ActionsTable("main", "user"); // Initialize ActionsTable with database and table name
    $actions = $table->findAll([]); // Fetch all actions from the database

    if ($actions) {
        // Respond with the list of actions if found
        ApiUtilities::httpOk($actions);
    } else {
        // Respond with a 404 error if no actions are found
        ApiUtilities::httpNotFound("No actions found");
    }
} else {
    // Respond with a 405 error for unsupported HTTP methods
    ApiUtilities::httpMethodNotAllowed("Method not allowed");
}
