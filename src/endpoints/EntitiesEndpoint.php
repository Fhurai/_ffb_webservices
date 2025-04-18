<?php

require_once __DIR__ . '/../endpoints/DefaultEndpoint.php';
require_once __DIR__ . '/../../config/config.php';
require_once __DIR__ . '/../utility/ApiUtilities.php';
require_once __DIR__ . '/../utility/SrcUtilities.php';

class EntitiesEndpoint extends DefaultEndpoint
{
    private $tableClass;

    public function __construct($tableClass)
    {
        $config = require __DIR__ . '/../../config/config.php';
        $allowedOrigins = $config['allowed_origins'];
        $origin = $_SERVER['HTTP_ORIGIN'] ?? '';

        if(in_array($origin, $allowedOrigins)){
            // Set CORS headers on every instantiation
            header("Access-Control-Allow-Origin: $origin");
            header("Access-Control-Allow-Headers: Content-Type");
            header("Access-Control-Allow-Methods: GET, OPTIONS");
            header("Content-Type: application/json; charset=utf-8");
            $this->tableClass = $tableClass;
        }
    }

    public function options($request, ...$args)
    {
        ApiUtilities::httpOk(null);
    }

    public function get($request, ...$args)
    {
        if (!isset($this->tableClass) || !isset($args[0])) {
            ApiUtilities::httpInternalServerError('Controller configuration error');
            exit;
        }

        $decoded = ApiUtilities::decodeJWT();

        // Process filters
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
