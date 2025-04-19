<?php

require_once __DIR__ . "/../exception/FfbEndpointException.php";

abstract class DefaultEndpoint
{
    protected $tableClass;

    protected $builderClass;

    public function __construct($tableClass)
    {
        $config = require __DIR__ . '/../../config/config.php';
        $allowedOrigins = $config['allowed_origins'];
        $origin = $_SERVER['HTTP_ORIGIN'] ?? '';

        if (in_array($origin, $allowedOrigins)) {
            header("Access-Control-Allow-Origin: $origin");
            header("Access-Control-Allow-Headers: Content-Type");
            header("Access-Control-Allow-Methods: GET, OPTIONS");
            header("Content-Type: application/json; charset=utf-8");
        }

        $this->tableClass = $tableClass;
        $length = $tableClass !== 'SeriesTable' ? -6 : -5;
        $this->builderClass = substr($tableClass, 0, $length) . 'Builder';
    }

    abstract public function get($request, ...$args);

    public function post($request, ...$args)
    {
        $this->methodNotAllowed('POST');
    }

    protected function build($data): mixed
    {
        return null;
    }

    public function put($request, ...$args)
    {
        $this->methodNotAllowed('PUT');
    }

    public function patch($request, ...$args)
    {
        $this->methodNotAllowed('PATCH');
    }

    public function delete($request, ...$args)
    {
        $this->methodNotAllowed('DELETE');
    }

    public function head($request, ...$args)
    {
        $this->methodNotAllowed('HEAD');
    }

    public function options($request, ...$args)
    {
        ApiUtilities::httpOk(null);
    }

    public function trace($request, ...$args)
    {
        $this->methodNotAllowed('TRACE');
    }

    public function methodNotAllowed($method)
    {
        throw new FfbEndpointException("HTTP method {$method} not allowed on this endpoint.");
    }

    protected function validateRequest($args)
    {
        if (!isset($this->tableClass) || !isset($args[0])) {
            ApiUtilities::httpInternalServerError('Controller configuration error');
            exit;
        }
    }
}
