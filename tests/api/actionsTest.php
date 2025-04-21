<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\DataProvider;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../vendor/autoload.php';
require_once __DIR__ . '/../../src/utility/ApiClient.php';
require_once __DIR__ . '/../../src/exception/FfbEndpointException.php';

#[CoversClass(ApiClient::class)]
#[CoversClass(FfbEndpointException::class)]
class ActionsTest extends TestCase
{
    private static string $apiBaseUrl;
    private static string $token;
    private ApiClient $client;

    public static function setUpBeforeClass(): void
    {
        $config = require __DIR__ . '/../../config/config.php';
        self::$apiBaseUrl = $config['api']['base'];
        self::$token = self::authenticate('Fhurai', 'Sen5652466*', 'ffb_tests');
    }

    private static function authenticate(string $username, string $password, string $db): string
    {
        $payload = new stdClass();
        $payload->username = $username;
        $payload->password = $password;
        $payload->db = $db;

        $client = new ApiClient();
        $response = $client->fetchDataWithContent(self::$apiBaseUrl . '/login.php', 'POST', $payload);
        $data = json_decode($response);
        var_dump(self::$apiBaseUrl . '/login.php');
        var_dump($response);
        var_dump($data);

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

    #[DataProvider('actionNamesProvider')]
    public function testActionNames(string $expectedName, int $index): void
    {
        $actions = $this->fetchActions();

        $this->assertArrayHasKey($index, $actions, "Action at index {$index} is missing");
        $this->assertEquals($expectedName, $actions[$index]->name, "Action name at index {$index} does not match");
    }

    public function testActionsCount(): void
    {
        $actions = $this->fetchActions();

        $this->assertCount(
            count(self::actionNamesProvider()),
            $actions,
            'The number of actions returned does not match the expected count'
        );
    }

    public static function actionNamesProvider(): array
    {
        return [
            ['CREATION', 0],
            ['UPDATE', 1],
            ['DELETE', 2],
            ['RESTORE', 3],
            ['REMOVE', 4],
        ];
    }

    private function fetchActions(): array
    {
        $response = $this->client->fetchDataWithContent(self::$apiBaseUrl . '/actions.php', 'GET');
        $data = json_decode($response);

        $this->assertIsArray($data, 'Response should decode to an array of actions');

        return $data;
    }
}
