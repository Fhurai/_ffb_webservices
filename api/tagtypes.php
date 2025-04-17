<?php

// CORS headers must be at the TOP
// These headers enable cross-origin requests and define allowed methods and headers.
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: GET, OPTIONS");
header('Content-Type: application/json; charset=utf-8');

// Include necessary configuration and utility files
require_once __DIR__ . '/../config/config.php'; // Application configuration
require_once __DIR__ . '/../src/utilities/ApiUtilities.php'; // Utility functions for API responses
require_once __DIR__ . '/../src/table/TagTypesTable.php'; // Database table abstraction for tag types

// Determine the HTTP request method
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    // Handle preflight requests for CORS
    ApiUtilities::httpOk(null);
} elseif ($method === 'GET') {
    ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    // Handle GET ALL request to retrieve all tag types
    $table = new TagTypesTable("main", "user"); // Initialize TagTypesTable with database and table name
    $tagTypes = $table->findAll([]); // Fetch all tag types from the database

    if ($tagTypes) {
        // Respond with the list of tag types if found
        ApiUtilities::httpOk($tagTypes);
    } else {
        // Respond with a 404 error if no tag types are found
        ApiUtilities::httpNotFound("No tag types found");
    }
} else {
    // Respond with a 405 error for unsupported HTTP methods
    ApiUtilities::httpMethodNotAllowed("Method not allowed");
}
