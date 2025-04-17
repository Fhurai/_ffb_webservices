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
require_once __DIR__ . '/../src/table/RatingsTable.php'; // Database table abstraction for ratings

// Determine the HTTP request method
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    // Handle preflight requests for CORS
    ApiUtilities::httpOk(null);
} elseif ($method === 'GET') {
    ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    // Handle GET ALL request to retrieve all ratings
    $table = new RatingsTable("main", "user"); // Initialize RatingsTable with database and table name
    $ratings = $table->findAll(['order' => ['id' => 'ASC']]); // Fetch all ratings from the database

    if ($ratings) {
        // Respond with the list of ratings if found
        ApiUtilities::httpOk($ratings);
    } else {
        // Respond with a 404 error if no ratings are found
        ApiUtilities::httpNotFound("No ratings found");
    }
} else {
    // Respond with a 405 error for unsupported HTTP methods
    ApiUtilities::httpMethodNotAllowed("Method not allowed");
}
