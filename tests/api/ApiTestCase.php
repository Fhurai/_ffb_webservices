<?php

declare(strict_types=1);

use PHPUnit\Framework\TestCase;
use PHPUnit\Framework\Attributes\CoversClass;

require_once __DIR__ . '/../../vendor/autoload.php';
require_once __DIR__ . '/../../src/utility/ApiClient.php';
require_once __DIR__ . '/../../src/exception/FfbEndpointException.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbEndpointException::class)]
abstract class ApiTestCase extends TestCase
{
    protected static string $apiBaseUrl;
    protected static string $token;
    protected ApiClient $client;

    public static function setUpBeforeClass(): void
    {
        $config = require __DIR__ . '/../../config/config.php';
        self::$apiBaseUrl = $config['api']['base'];
        self::$token = self::authenticate('Fhurai', 'Sen5652466*', 'ffb_tests');
    }

    protected static function authenticate(string $username, string $password, string $db): string
    {
        $payload = new stdClass();
        $payload->username = $username;
        $payload->password = $password;
        $payload->db = $db;

        $client = new ApiClient();
        $response = $client->fetchDataWithContent(self::$apiBaseUrl . '/login.php', 'POST', $payload);
        $data = json_decode($response);

        if (empty($data?->token) || !is_string($data->token)) {
            throw new FfbEndpointException('Failed to obtain authentication token');
        }

        return $data->token;
    }

    protected function setUp(): void
    {
        $this->assertNotEmpty(self::$token, 'Authentication token should not be empty');
        $this->client = new ApiClient('Bearer', self::$token);
    }

    protected function fetchData(string $endpoint): array
    {
        $response = $this->client->fetchDataWithContent(self::$apiBaseUrl . $endpoint, 'GET');
        $data = json_decode($response);

        $this->assertIsArray($data, 'Response should decode to an array');
        return $data;
    }
}
