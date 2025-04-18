<?php

class EntityEndpoint extends DefaultEndpoint
{
    public function get($request, ...$args)
    {
        return "Fetching article";
    }

    public function post($request, ...$args)
    {
        return "Creating article";
    }

    public function put($request, ...$args)
    {
        return "Replacing article";
    }

    public function patch($request, ...$args)
    {
        return "Updating article";
    }

    public function delete($request, ...$args)
    {
        return "Deleting article";
    }

    public function options($request, ...$args)
    {
        return "OPTIONS supported for article";
    }
}
