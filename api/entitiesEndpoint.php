<?php

require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utility/ApiUtilities.php';
require_once __DIR__ . '/../src/utility/SrcUtilities.php';

// Validate required configuration
if (!isset($tableClass) || !isset($defaultSearch)) {
    ApiUtilities::httpError(500, 'Controller configuration error');
    exit;
}

// Set CORS headers dynamically based on allowed methods
ApiUtilities::setCorsHeaders(['GET', 'OPTIONS']);

// Handle request methods
$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::httpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, $tableClass);

            // Process filters
            $filters = SrcUtilities::extractFilterParams($_GET);
            $mergedSearch = array_merge($defaultSearch, $filters['search']);

            $finalParams = [
                'search' => $mergedSearch,
                'order' => $filters['order'],
                'limit' => $filters['limit']
            ];

            $data = $table->findAll($finalParams);

            if ($data) {
                ApiUtilities::httpOk($data);
            } else {
                ApiUtilities::httpNotFound("No records found");
            }
            break;

        default:
            ApiUtilities::httpMethodNotAllowed("Method $method not allowed");
    }
} catch (FfbTableException $e) {
    ApiUtilities::httpInternalServerError($e->getMessage());
} catch (Exception $e) {
    ApiUtilities::httpError(500, "Server error: " . $e->getMessage());
}
