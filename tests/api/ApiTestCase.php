<?php

declare(strict_types=1);

use PHPUnit\Framework\TestCase;
use PHPUnit\Framework\Attributes\CoversClass;

require_once __DIR__ . '/../../vendor/autoload.php';
require_once __DIR__ . '/../../src/utility/ApiClient.php';
require_once __DIR__ . '/../../src/exception/FfbEndpointException.php';

#[CoversClass(ApiClient::class)]
#[CoversClass(FfbEndpointException::class)]
abstract class ApiTestCase extends TestCase
{
    protected static string $apiBaseUrl;
    protected static string $token;
    protected static ApiClient $sharedClient;
    protected static array $cache = [];

    public static function setUpBeforeClass(): void
    {
        $config = include __DIR__ . '/../../config/config.php';
        self::$apiBaseUrl = 'http://' . $config['api']['base'];
        self::$token = self::authenticate('Fhurai', 'Sen5652466*', 'ffb_tests');
        self::$sharedClient = new ApiClient('Bearer', self::$token);
    }

    protected function setUp(): void
    {
        $this->assertNotEmpty(self::$token, 'Authentication token should not be empty');
    }

    protected static function authenticate(string $username, string $password, string $db): string
    {
        $payload = (object) [
            'username' => $username,
            'password' => $password,
            'db' => $db
        ];

        $client = new ApiClient();
        $response = $client->fetchDataWithContent(self::$apiBaseUrl . '/login.php', 'POST', $payload);
        Connection::dd($response);
        $data = json_decode($response['body']);

        if (json_last_error() !== JSON_ERROR_NONE) {
            throw new FfbEndpointException('Failed to decode authentication response: ' . json_last_error_msg());
        }

        if (empty($data?->token) || !is_string($data->token)) {
            throw new FfbEndpointException('Failed to obtain authentication token');
        }

        return $data->token;
    }

    protected function fetchData(string $endpoint): array
    {
        if (isset(self::$cache[$endpoint])) {
            return self::$cache[$endpoint];
        }

        $response = self::$sharedClient->fetchDataWithContent(self::$apiBaseUrl . $endpoint, 'GET');
        $data = json_decode($response['body'], false);

        if(is_a($data, 'stdClass')) {
            throw new FfbEndpointException($data->error);
        }

        if (json_last_error() !== JSON_ERROR_NONE) {
            throw new FfbEndpointException("Failed to decode JSON for {$endpoint}: " . json_last_error_msg());
        }

        self::$cache[$endpoint] = $data;
        return $data;
    }

    protected function get(string $endpoint, array $params = []): string
    {
        $paramsObject = new stdClass();
        foreach ($params as $key => $value) {
            $paramsObject->$key = $value;
        }

        return self::$sharedClient->fetchData(self::$apiBaseUrl . $endpoint . '.php' . ( !empty($params) ? '?' . http_build_query($params) : ''));
    }

    protected function post(string $endpoint, array $data): array
    {
        $dataObject = new stdClass();
        foreach ($data as $key => $value) {
            $dataObject->$key = $value;
        }

        return self::$sharedClient->fetchDataWithContent(self::$apiBaseUrl . $endpoint . '.php', 'POST', $dataObject);
    }

    protected function put(string $endpoint, array $data): array
    {
        $dataObject = new stdClass();
        foreach ($data as $key => $value) {
            $dataObject->$key = $value;
        }


        if(array_key_exists('id', $data)) {
            $url = self::$apiBaseUrl . $endpoint . '.php?id=' . $data['id'];

            return self::$sharedClient->fetchDataWithContent($url, 'PUT', $dataObject);
        }

        throw new FfbEndpointException('ID not found in data array for PUT request');
    }

    protected function patch(string $endpoint, array $data): array
    {
        $dataObject = new stdClass();
        foreach ($data as $key => $value) {
            $dataObject->$key = $value;
        }


        if(array_key_exists('id', $data)) {
            $url = self::$apiBaseUrl . $endpoint . '.php?id=' . $data['id'];

            return self::$sharedClient->fetchDataWithContent($url, 'PATCH', $dataObject);
        }

        throw new FfbEndpointException('ID not found in data array for PATCH request');
    }

    protected function delete(string $endpoint, array $data): array
    {
        $dataObject = new stdClass();
        foreach ($data as $key => $value) {
            $dataObject->$key = $value;
        }


        if(array_key_exists('id', $data)) {
            $url = self::$apiBaseUrl . $endpoint . '.php?id=' . $data['id'];

            return self::$sharedClient->fetchDataWithContent($url, 'DELETE', $dataObject);
        }

        throw new FfbEndpointException('ID not found in data array for PATCH request');
    }
}
