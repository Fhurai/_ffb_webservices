<?php

require_once __DIR__ . "/../exception/FfbEndpointException.php";

/**
 * Abstract Class DefaultEndpoint
 * Serves as the base class for all API endpoint classes.
 * Provides common functionality such as CORS handling, HTTP method restrictions, and request validation.
 */
abstract class DefaultEndpoint
{
    /**
     * @var string $tableClass The name of the table class associated with the endpoint.
     */
    protected $tableClass;

    /**
     * @var string $builderClass The name of the builder class derived from the table class.
     */
    protected $builderClass;

    /**
     * @var string $entityClass The name of the entity class derived from the table class.
     */
    protected $entityClass;

    /**
     * Constructor
     * Initializes the endpoint with the provided table class and sets up CORS headers.
     *
     * @param string $tableClass The name of the table class associated with the endpoint.
     */
    public function __construct($tableClass)
    {
        // Load configuration for allowed origins
        $config = include __DIR__ . '/../../config/config.php';
        $allowedOrigins = $config['allowed_origins'];
        $origin = $_SERVER['HTTP_ORIGIN'] ?? '';

        // Set CORS headers if the origin is allowed
        if (in_array($origin, $allowedOrigins)) {
            header("Access-Control-Allow-Origin: $origin");
            header("Access-Control-Allow-Headers: Content-Type");
            header("Access-Control-Allow-Methods: GET, OPTIONS");
            header("Content-Type: application/json; charset=utf-8");
        }

        // Initialize class properties
        $this->tableClass = $tableClass;

        // Determine the builder and entity class names based on the table class
        $length = $tableClass !== 'SeriesTable' ? -6 : -5;
        $this->builderClass = substr($tableClass, 0, $length) . 'Builder';
        $this->entityClass = substr($tableClass, 0, $length) . '';
    }

    /**
     * Abstract method for handling GET requests.
     * Must be implemented by subclasses.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     */
    abstract public function get($request, ...$args);

    /**
     * Handles POST requests.
     * By default, POST requests are not allowed and will throw an exception.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     */
    public function post($request, ...$args)
    {
        $this->methodNotAllowed('POST');
    }

    /**
     * Builds an object from the provided data.
     * Can be overridden by subclasses to implement specific build logic.
     *
     * @param mixed $data The data to build the object from.
     * @return mixed|null The built object or null by default.
     */
    protected function build($data): mixed
    {
        return null;
    }

    /**
     * Handles PUT requests.
     * By default, PUT requests are not allowed and will throw an exception.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     */
    public function put($request, ...$args)
    {
        $this->methodNotAllowed('PUT');
    }

    /**
     * Handles PATCH requests.
     * By default, PATCH requests are not allowed and will throw an exception.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     */
    public function patch($request, ...$args)
    {
        $this->methodNotAllowed('PATCH');
    }

    /**
     * Handles DELETE requests.
     * By default, DELETE requests are not allowed and will throw an exception.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     */
    public function delete($request, ...$args)
    {
        $this->methodNotAllowed('DELETE');
    }

    /**
     * Handles HEAD requests.
     * By default, HEAD requests are not allowed and will throw an exception.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     */
    public function head($request, ...$args)
    {
        $this->methodNotAllowed('HEAD');
    }

    /**
     * Handles OPTIONS requests.
     * Responds with an HTTP 200 OK status.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     */
    public function options($request, ...$args)
    {
        ApiUtilities::httpOk(null);
    }

    /**
     * Handles TRACE requests.
     * By default, TRACE requests are not allowed and will throw an exception.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     */
    public function trace($request, ...$args)
    {
        $this->methodNotAllowed('TRACE');
    }

    /**
     * Throws an exception for unsupported HTTP methods.
     *
     * @param string $method The HTTP method that is not allowed.
     * @throws FfbEndpointException
     */
    public function methodNotAllowed($method)
    {
        throw new FfbEndpointException("HTTP method {$method} not allowed on this endpoint.");
    }

    /**
     * Validates the request arguments and ensures the endpoint is properly configured.
     * If validation fails, it sends an HTTP 500 error response and exits.
     *
     * @param array $args The request arguments.
     */
    protected function validateRequest($args)
    {
        if (!isset($this->tableClass) || !isset($args[0])) {
            ApiUtilities::httpInternalServerError('Controller configuration error');
            exit;
        }
    }
}
