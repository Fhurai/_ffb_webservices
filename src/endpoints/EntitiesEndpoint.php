<?php

require_once __DIR__ . '/../endpoints/DefaultEndpoint.php';
require_once __DIR__ . '/../../config/config.php';
require_once __DIR__ . '/../utility/ApiUtilities.php';
require_once __DIR__ . '/../utility/SrcUtilities.php';

/**
 * Class EntitiesEndpoint
 * Extends the DefaultEndpoint class to handle requests for entity-related operations.
 * Implements the GET method to retrieve data based on filters and parameters.
 */
class EntitiesEndpoint extends DefaultEndpoint
{
    /**
     * Handles GET requests for the EntitiesEndpoint.
     * Validates the request, extracts filters, and retrieves data from the associated table.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments, including search parameters.
     * @throws FfbEndpointException If the request validation fails.
     */
    public function get($request, ...$args)
    {
        // Validate the request and ensure the endpoint is properly configured
        $this->validateRequest($args);

        // Decode the JWT token to extract user information
        $decoded = ApiUtilities::decodeJWT();

        // Extract filter parameters from the query string
        $filters = SrcUtilities::extractFilterParams($_GET);

        // Merge the provided arguments with the search filters
        $mergedSearch = array_merge($args[0], $filters['search']);

        // Prepare the final parameters for the database query
        $finalParams = [
            'search' => $mergedSearch,
            'order' => $filters['order'],
            'limit' => $filters['limit']
        ];

        // Instantiate the table class with the database name and user role
        $table = new $this->tableClass(
            ApiUtilities::getDatabaseName($decoded),
            ApiUtilities::getUserRole($decoded)
        );

        // Retrieve data from the table using the prepared parameters
        $data = $table->findAll($finalParams);

        // Respond with the retrieved data or an empty array if no data is found
        ApiUtilities::httpOk($data ?: []);
    }
}