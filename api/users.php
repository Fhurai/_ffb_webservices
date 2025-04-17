<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/UsersTable.php';

ApiUtilities::setCorsHeaders(['GET', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    ApiUtilities::httpOk(null);
} elseif ($method === 'GET') {
    try {
        $decoded = ApiUtilities::decodeJWT();
        $table = ApiUtilities::getAuthorizedTable($decoded, UsersTable::class);

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

        $users = $table->findAll($finalParams);

        $users ? ApiUtilities::httpOk($users)
               : ApiUtilities::httpNotFound("No users found");
    } catch (FfbTableException $e) {
        ApiUtilities::httpInternalServerError($e->getMessage());
    }
} else {
    ApiUtilities::httpMethodNotAllowed("Method not allowed");
}
