<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\User::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
class UsersTest extends ApiTestCase
{
    #[DataProvider('userNamesProvider')]
    public function testUserNames(string $expectedName, int $index): void
    {
        $users = $this->fetchData('/users.php');

        $this->assertArrayHasKey($index, $users, "User at index {$index} is missing");
        $this->assertEquals($expectedName, $users[$index]->username, "User name at index {$index} does not match");
    }

    public function testUsersCount(): void
    {
        $users = $this->fetchData('/users.php');

        $this->assertCount(
            count(self::userNamesProvider()),
            $users,
            'The number of users returned does not match the expected count'
        );
    }

    public static function userNamesProvider(): array
    {
        return [
            ["Admin",0],
            ["Guest",1],
            ["Fhurai",2],
        ];
    }
}
