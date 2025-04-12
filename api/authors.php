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
require_once __DIR__ . '/../src/table/AuthorsTable.php'; // Database table abstraction for authors

// Determine the HTTP request method
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    // Handle preflight requests for CORS
    ApiUtilities::HttpOk(null);
} else if ($method === 'GET') {
    $decode = ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    $db = strpos($decode->data->db, "ffb_") !== false ? explode('_', $decode->data->db)[1] : $decode->data->db; // Determine the database name based on the decoded JWT token

    try {
        // Handle GET ALL request to retrieve all authors
        $table = new AuthorsTable($db, $decode->data->isAdmin ? "admin" : "user"); // Initialize AuthorsTable with database and table name
        $authors = $table->findAll(['search' => ['delete_date' => 'IS NULL']]); // Fetch all authors from the database

        if ($authors) {
            // Respond with the list of authors if found
            ApiUtilities::HttpOk($authors);
        } else {
            // Respond with a 404 error if no authors are found
            ApiUtilities::HttpNotFound("No authors found");
        }
    } catch (FfbTableException $e) {
        ApiUtilities::HttpInternalServerError($e->getMessage());
    }
} else {
    // Respond with a 405 error for unsupported HTTP methods
    ApiUtilities::HttpMethodNotAllowed("Method not allowed");
}
