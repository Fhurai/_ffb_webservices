<?php

// Include the base DefaultEndpoint class and utility functions
require_once __DIR__ . '/../endpoints/DefaultEndpoint.php'; // Base class for endpoint handling
require_once __DIR__ . '/../utility/ApiUtilities.php'; // Utility functions for API operations

/**
 * ParameterEndpoint Class
 * 
 * Extends the DefaultEndpoint class to handle parameterized API requests.
 * Provides methods for processing HTTP requests with additional parameters.
 */
class ParameterEndpoint extends DefaultEndpoint
{
    /**
     * Handle GET requests.
     * 
     * @param array $request The HTTP request parameters.
     * @param mixed ...$args Additional arguments for request processing.
     * 
     * @return void
     */
    public function get($request, ...$args)
    {
        // Validate the request arguments
        $this->validateRequest($args);

        // Decode the JSON Web Token (JWT) to retrieve user information
        $decoded = ApiUtilities::decodeJWT();

        // Initialize the table class with the database name and user role
        $table = new $this->tableClass(
            ApiUtilities::getDatabaseName($decoded), // Get the database name from the decoded JWT
            ApiUtilities::getUserRole($decoded) // Get the user role from the decoded JWT
        );

        // Retrieve all records from the table based on the provided arguments
        $data = $table->findAll($args[0]);

        // Respond with an HTTP 200 OK status and the retrieved data (or an empty array if no data)
        ApiUtilities::httpOk($data ?: []);
    }
}