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
require_once __DIR__ . '/../src/table/ScoresTable.php'; // Database table abstraction for scores

// Determine the HTTP request method
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    // Handle preflight requests for CORS
    ApiUtilities::HttpOk(null);
} elseif ($method === 'GET') {
    ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    // Handle GET ALL request to retrieve all scores
    $table = new ScoresTable("main", "user"); // Initialize ScoresTable with database and table name
    $scores = $table->findAll(['order' => ['id' => 'ASC']]); // Fetch all scores from the database

    if ($scores) {
        // Respond with the list of scores if found
        ApiUtilities::HttpOk($scores);
    } else {
        // Respond with a 404 error if no scores are found
        ApiUtilities::HttpNotFound("No scores found");
    }
} else {
    // Respond with a 405 error for unsupported HTTP methods
    ApiUtilities::HttpMethodNotAllowed("Method not allowed");
}
