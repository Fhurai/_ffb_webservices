<?php

require_once __DIR__ . '/../endpoints/DefaultEndpoint.php';
require_once __DIR__ . '/../../config/config.php';
require_once __DIR__ . '/../utility/ApiUtilities.php';
require_once __DIR__ . '/../utility/SrcUtilities.php';

class EntitiesEndpoint extends DefaultEndpoint
{

    public function get($request, ...$args)
    {
        $this->validateRequest($args);

        $decoded = ApiUtilities::decodeJWT();

        $filters = SrcUtilities::extractFilterParams($_GET);
        $mergedSearch = array_merge($args[0], $filters['search']);

        $finalParams = [
            'search' => $mergedSearch,
            'order' => $filters['order'],
            'limit' => $filters['limit']
        ];

        $table = new $this->tableClass(
            ApiUtilities::getDatabaseName($decoded),
            ApiUtilities::getUserRole($decoded)
        );

        $data = $table->findAll($finalParams);

        ApiUtilities::httpOk($data ?: []);
    }
}
