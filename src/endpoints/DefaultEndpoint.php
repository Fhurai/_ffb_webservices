<?php

require __DIR__ . "/../exception/FfbEndpointException.php";

abstract class DefaultEndpoint
{
    public function get($request, ...$args)
    {
        $this->methodNotAllowed('GET');
    }

    public function post($request, ...$args)
    {
        $this->methodNotAllowed('POST');
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
        $this->methodNotAllowed('OPTIONS');
    }

    public function trace($request, ...$args)
    {
        $this->methodNotAllowed('TRACE');
    }

    public function methodNotAllowed($method)
    {
        throw new FfbEndpointException("HTTP method {$method} not allowed on this endpoint.");
    }
}
