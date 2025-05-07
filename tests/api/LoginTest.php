<?php

use PHPUnit\Framework\Attributes\Test;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbException::class)]
class LoginTest extends ApiTestCase
{
    #[Test]
    public function it_can_login_user(): void
    {
        // Create a new user for testing
        $user = $this->createUser([
            'username' => 'Logged',
            'password' => 'password123',
            'email' => 'logged@example.com',
            'birthday' => '1990-01-01 00:00:00',
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);

        $response = self::authenticate('Logged', 'password123', 'Tests');

        $this->assertNotEmpty($response);
        $this->assertIsString($response);
    }

    #[Test]
    public function it_cannot_login_deleted_user(): void
    {
        // Create a new user for testing
        $user = $this->createUser([
            'username' => 'Notlogged',
            'password' => 'password123',
            'email' => 'notlogged@example.com',
            'birthday' => '1990-01-01 00:00:00',
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);

        $this->patch('/user', ['id' => $user['id'], 'deleted' => true]);

        // Expect the login attempt to throw an exception
        $this->expectException(FfbEndpointException::class);
        $this->expectExceptionMessage('Failed to obtain authentication token'); // Optional if you want to match the message

        $response = self::authenticate('Notlogged', 'password123', 'Tests');
    }

    /**
     * Helper method to create a user using the API.
     *
     * @param array $data The data for the new user.
     * @return array The created user's data.
     */
    private function createUser(array $data): array
    {
        $response = $this->post('/user', $data);
        if ($response['code'] !== 201) {
            json_decode($response['body']);
            if (json_last_error() !== JSON_ERROR_NONE) {
                Connection::dd($response['body']);
            }
            throw new FfbEndpointException(json_decode($response['body'])->message);
        }
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        return json_decode($response['body'], true);
    }
}