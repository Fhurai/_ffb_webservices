<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\User::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
class UsersTest extends ApiTestCase
{
    #[DataProvider('userNamesProvider')]
    public function testUserNames(string $expectedName, string $expectedEmail, $expectedAdmin, $expectedLocal, $expectedBirthday, $expectedNsfw, int $index): void
    {
        $users = $this->fetchData('/users.php');

        $this->assertArrayHasKey($index, $users, "User at index {$index} is missing");
        $this->assertEquals($expectedName, $users[$index]->username, "User name at index {$index} does not match");
        $this->assertEquals($expectedEmail, $users[$index]->email, "User email at index {$index} does not match");
        $this->assertEquals($expectedAdmin, $users[$index]->is_admin, "User admin at index {$index} does not match");
        $this->assertEquals($expectedLocal, $users[$index]->is_local, "User local at index {$index} does not match");
        $this->assertEquals($expectedBirthday, $users[$index]->birthday, "User birthday at index {$index} does not match");
        $this->assertEquals($expectedNsfw, $users[$index]->is_nsfw, "User nsfw at index {$index} does not match");
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
            ["Admin", "kulu57@live.com", 1, 1, "1970-01-01 00:00:01", 1, 0],
            ["Guest", "luku@free.fr", 0, 1, "1970-01-01 00:00:01", 0, 1],
            ["Fhurai", "kulu57@gmail.com", 0, 1, "1992-12-21 23:30:00", 1, 2],
        ];
    }
}
