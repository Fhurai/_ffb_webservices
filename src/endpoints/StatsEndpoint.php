<?php

require_once __DIR__ . '/../endpoints/DefaultEndpoint.php';
require_once __DIR__ . "/../../config/config.php";
require_once __DIR__ . '/../utility/ApiUtilities.php';

class StatsEndpoint extends DefaultEndpoint
{
    private $tableClass;

    public function __construct($tableClass)
    {
        // Set CORS headers on every instantiation
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Headers: Content-Type");
        header("Access-Control-Allow-Methods: GET, OPTIONS");
        header("Content-Type: application/json; charset=utf-8");
        $this->tableClass = $tableClass;
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

        $table = new $this->tableClass();
        switch ($args[0]) {
            case 'parameters':
                $data = $table->getParametersStats();
                break;
            case 'parameter':
                $data = $table->getStatsByParameter($args[1]);
                break;
            case 'entities':
                $data = $table->getEntitiesStats();
                break;
            case 'entity':
                $data = $table->getStatsByEntity($args[1]);
                break;
            default:
                $data = [];
        }

        ApiUtilities::httpOk($data ?: []);
    }
}
