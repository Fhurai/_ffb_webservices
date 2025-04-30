<?php

// Include the base endpoint class and utility functions
require_once __DIR__ . '/../endpoints/DefaultEndpoint.php';
require_once __DIR__ . '/../utility/ApiUtilities.php';

/**
 * Class StatsEndpoint
 * Handles API requests related to statistics.
 * Extends the DefaultEndpoint class to provide specific functionality for stats-related endpoints.
 */
class StatsEndpoint extends DefaultEndpoint
{
    /**
     * Handles GET requests for various stats-related resources.
     *
     * @param array $request The HTTP request data (e.g., $_REQUEST).
     * @param mixed ...$args Additional arguments to determine the resource type and optional parameters.
     * 
     * @return void
     */
    public function get($request, ...$args)
    {
        // Validate the request arguments to ensure they are correct
        $this->validateRequest($args);

        // Instantiate the table class associated with this endpoint
        $table = new $this->tableClass();

        // Determine the resource type and fetch the corresponding data
        switch ($args[0]) {
            case 'parameters':
                // Fetch statistics for all parameters
                $data = $table->getParametersStats();
                break;
            case 'parameter':
                // Fetch statistics for a specific parameter (ID provided in $args[1])
                $data = $table->getStatsByParameter($args[1]);
                break;
            case 'entities':
                // Fetch statistics for all entities
                $data = $table->getEntitiesStats();
                break;
            case 'entity':
                // Fetch statistics for a specific entity (ID provided in $args[1])
                $data = $table->getStatsByEntity($args[1]);
                break;
            default:
                // If the resource type is not recognized, return an empty array
                $data = [];
        }

        // Respond with the fetched data or an empty array if no data is available
        ApiUtilities::httpOk($data ?: []);
    }
}