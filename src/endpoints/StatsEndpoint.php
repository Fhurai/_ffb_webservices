<?php

require_once __DIR__ . '/../endpoints/DefaultEndpoint.php';
require_once __DIR__ . '/../utility/ApiUtilities.php';

class StatsEndpoint extends DefaultEndpoint
{

    public function get($request, ...$args)
    {
        $this->validateRequest($args);

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
