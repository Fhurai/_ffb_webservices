<?php

// CORS headers must be at the TOP
// These headers enable cross-origin requests and define allowed methods and headers.
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: GET, POST, PUT, PATCH, DELETE, OPTIONS");
header('Content-Type: application/json; charset=utf-8');

// Include necessary configuration and utility files
require_once __DIR__ . '/../config/config.php'; // Application configuration
require_once __DIR__ . '/../src/utilities/ApiUtilities.php'; // Utility functions for API responses
require_once __DIR__ . '/../src/utilities/SrcUtilities.php'; // Utility functions for string manipulation
require_once __DIR__ . '/../src/table/AuthorsTable.php'; // Database table abstraction for authors
require_once __DIR__ . '/../src/builder/AuthorBuilder.php'; // Builder class for authors

// Determine the HTTP request method
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    // Handle preflight requests for CORS
    ApiUtilities::HttpOk(null);
} else if ($method === 'GET') {
    $decode = ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    $db = strpos($decode->data->db, "ffb_") !== false ? explode('_', $decode->data->db)[1] : $decode->data->db; // Determine the database name based on the decoded JWT token

    $id = SrcUtilities::getQueryParameter('id'); // Get the 'id' query parameter from the URL

    try{
        // Handle GET ALL request to retrieve all authors
        $table = new AuthorsTable($db, $decode->data->isAdmin ? "admin" : "user"); // Initialize AuthorsTable with database and table name
        $author = $table->get($id); // Fetch author from the database based on the 'id' parameter
        if ($author) {
            // Respond with the list of authors if found
            ApiUtilities::HttpOk($author);
        } else {
            // Respond with a 404 error if no authors are found
            ApiUtilities::HttpNotFound("No authors found");
        }
    } catch(FfbTableException $e) {

        ApiUtilities::HttpInternalServerError($e->getMessage());
    }
} else if ($method === 'POST') {
    $decode = ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    $db = strpos($decode->data->db, "ffb_") !== false ? explode('_', $decode->data->db)[1] : $decode->data->db; // Determine the database name based on the decoded JWT token

    $data = json_decode(file_get_contents("php://input"));

    $author = (new AuthorBuilder())
            ->withName($data->name ?? null) // Set the author's name from the input data
            ->build(); // Build the author object from the input data

    try{
        // Handle GET ALL request to retrieve all authors
        $table = new AuthorsTable($db, $decode->data->isAdmin ? "admin" : "user"); // Initialize AuthorsTable with database and table name
        $author = $table->create($author); // Create a new author in the database
        if ($author) {
            // Respond with the list of authors if found
            ApiUtilities::HttpOk($author);
        } else {
            // Respond with a 404 error if no authors are found
            ApiUtilities::HttpNotFound("No authors found");
        }
    } catch (FfbTableException $e) {
        // Handle any exceptions that occur during the database operation
        ApiUtilities::HttpInternalServerError($e->getMessage());
    }
} else if ($method === 'DELETE') {
    $decode = ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    $db = strpos($decode->data->db, "ffb_") !== false ? explode('_', $decode->data->db)[1] : $decode->data->db; // Determine the database name based on the decoded JWT token

    $id = SrcUtilities::getQueryParameter('id'); // Get the 'id' query parameter from the URL

    // Handle DELETE request to remove an author
    $table = new AuthorsTable($db, $decode->data->isAdmin ? "admin" : "user"); // Initialize AuthorsTable with database and table name
    $author = $table->remove($id); // Delete the author from the database based on the 'id' parameter
    if ($author) {
        // Respond with a success message if the author is deleted
        ApiUtilities::HttpOk(["message" => "Author removed successfully"]);
    } else {

        ApiUtilities::HttpNotFound("No removed author : author not found or already removed or not deleted.");
    }
} else if ($method === 'PUT') {
    $decode = ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    $db = strpos($decode->data->db, "ffb_") !== false ? explode('_', $decode->data->db)[1] : $decode->data->db; // Determine the database name based on the decoded JWT token

    $data = json_decode(file_get_contents("php://input"));

    $id = SrcUtilities::getQueryParameter('id'); // Get the 'id' query parameter from the URL

    // Handle PUT request to update an author
    $table = new AuthorsTable($db, $decode->data->isAdmin ? "admin" : "user"); // Initialize AuthorsTable with database and table name

    // Fetch the author from the database based on the 'id' parameter
    $author = $table->get($id);


    if (!$author) {
        // Respond with a 404 error if no authors are found
        ApiUtilities::HttpNotFound("No authors found");
    }else{
        $author->setName($data->name ?? $author->getName()); // Update the author's name from the input data
    }

    try{
        $author = $table->update($author); // Update the author in the database
        if ($author) {
            // Respond with the updated author if found
            ApiUtilities::HttpOk($author);
        } else {
            // Respond with a 404 error if no authors are found
            ApiUtilities::HttpNotFound("No authors found");
        }
    } catch (FfbTableException $e) {
        // Handle any exceptions that occur during the database operation
        ApiUtilities::HttpInternalServerError($e->getMessage());
    }

} else if ($method === 'PATCH') {
    $decode = ApiUtilities::decodeJWT(); // Decode JWT token from the request header

    $db = strpos($decode->data->db, "ffb_") !== false ? explode('_', $decode->data->db)[1] : $decode->data->db; // Determine the database name based on the decoded JWT token

    $data = json_decode(file_get_contents("php://input"));

    $id = SrcUtilities::getQueryParameter('id'); // Get the 'id' query parameter from the URL

    // Handle PATCH request to partially update an author
    $table = new AuthorsTable($db, $decode->data->isAdmin ? "admin" : "user"); // Initialize AuthorsTable with database and table name

    try{
        $executed = $data->deleted ? $table->delete($id) : $table->restore($id); // Delete the author if 'delete' is true, otherwise restore it
        if ($executed) {
            // Respond with a success message if the operation was successful
            ApiUtilities::HttpOk(["message" => "Author " . ($data->deleted ? "deleted" : "restored") . " successful"]);
        } else {
            // Respond with a 404 error if no authors are found
            ApiUtilities::HttpNotFound("Problem with the operation");
        }
    } catch (FfbTableException $e) {
        // Handle any exceptions that occur during the database operation
        ApiUtilities::HttpInternalServerError($e->getMessage());
    }
} else {
    // Respond with a 405 error for unsupported HTTP methods
    ApiUtilities::HttpMethodNotAllowed("Method not allowed");

    error_log("Unsupported method: " . $method);
}
