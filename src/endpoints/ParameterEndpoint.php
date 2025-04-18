<?php

require_once __DIR__ . '/../endpoints/DefaultEndpoint.php';
require_once __DIR__ . '/../utility/ApiUtilities.php';

class ParameterEndpoint extends DefaultEndpoint
{
    public function get($request, ...$args)
    {
        $this->validateRequest($args);

        $decoded = ApiUtilities::decodeJWT();

        $table = new $this->tableClass(
            ApiUtilities::getDatabaseName($decoded),
            ApiUtilities::getUserRole($decoded)
        );
        $data = $table->findAll($args[0]);

        ApiUtilities::httpOk($data ?: []);
    }
}
