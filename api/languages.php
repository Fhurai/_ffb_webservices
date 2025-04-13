<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/LanguagesTable.php';

ApiUtilities::setCorsHeaders(['GET', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    ApiUtilities::HttpOk(null);
} elseif ($method === 'GET') {
    try {
        $decoded = ApiUtilities::decodeJWT();
        $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);

        $filters = SrcUtilities::extractFilterParams($_GET);
        // Add new condition to existing search params
        $mergedSearch = array_merge(
            ['delete_date' => 'IS NULL'],
            $filters['search']
        );

        // Then use it in your query
        $finalParams = [
            'search' => $mergedSearch,
            'order' => $filters['order'],
            'limit' => $filters['limit']
        ];

        $authors = $table->findAll($finalParams);

        $authors ? ApiUtilities::HttpOk($authors)
               : ApiUtilities::HttpNotFound("No fandoms found");
    } catch (FfbTableException $e) {
        ApiUtilities::HttpInternalServerError($e->getMessage());
    }
} else {
    ApiUtilities::HttpMethodNotAllowed("Method not allowed");
}
