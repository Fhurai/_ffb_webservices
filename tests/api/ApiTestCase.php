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
        self::$apiBaseUrl = $config['api']['base'];
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
        $data = json_decode($response);

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
        $data = json_decode($response, false);

        if(is_a($data, 'stdClass')) {
            throw new FfbEndpointException($data->error);
        }

        if (json_last_error() !== JSON_ERROR_NONE) {
            throw new FfbEndpointException("Failed to decode JSON for {$endpoint}: " . json_last_error_msg());
        }

        self::$cache[$endpoint] = $data;
        return $data;
    }

    protected function postData(string $endpoint, stdClass $data): mixed
    {
        $response = self::$sharedClient->fetchDataWithContent(self::$apiBaseUrl . $endpoint, 'POST', $data);
        $responseData = json_decode($response, false);

        if(is_a($responseData, 'stdClass') && property_exists($responseData, 'error')) {
            throw new FfbEndpointException($responseData->error);
        }

        if (json_last_error() !== JSON_ERROR_NONE) {
            throw new FfbEndpointException("Failed to decode JSON for {$endpoint}: " . json_last_error_msg());
        }

        $class = ucfirst(substr($endpoint, 1, -4));

        return $class::jsonUnserialize($response);
        ;
    }
}
