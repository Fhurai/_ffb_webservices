<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\User::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\SrcUtilities::class)]
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

    #[DataProvider('usersOptionalNamesProvider')]
    public function testUsersOptionalNames(string $expectedName, int $index): void
    {
        $users = $this->fetchData('/users.php?search_is_admin=0');

        $this->assertArrayHasKey($index, $users, "User at index {$index} is missing");
        $this->assertEquals($expectedName, $users[$index]->username, "User name at index {$index} does not match");
    }

    public function testUsersOptionalCount(): void
    {
        $users = $this->fetchData('/users.php?search_is_admin=0');

        $this->assertCount(
            count(self::usersOptionalNamesProvider()),
            $users,
            'The number of users returned does not match the expected count'
        );
    }

    public static function usersOptionalNamesProvider(): array
    {
        return [
            ["Guest",0],
            ["Fhurai",1],
        ];
    }

    #[DataProvider('usersCreationProvider')]
    public function testCreateUser($expectedName, $expectedPassword, $expectedEmail, $expectedBirthday, $expectedAdmin, $expectedLocal, $expectedNsfw, $index): void
    {
        $userData = new stdClass();
        $userData->username = $expectedName;
        $userData->password = $expectedPassword;
        $userData->email = $expectedEmail;
        $userData->birthday = $expectedBirthday;
        $userData->isAdmin = $expectedAdmin;
        $userData->isLocal = $expectedLocal;
        $userData->isNsfw = $expectedNsfw;

        $entity = $this->postData('/user.php', $userData);
        $this->assertInstanceOf(User::class, $entity, 'The entity is not an instance of Author class');
        $this->assertNotEquals(0, $entity->getId(), 'The user ID does not match the expected value');
        $this->assertNotEquals('', $entity->getUserName(), 'The user name does not match the expected value');
        $this->assertNotEquals('', $entity->getEmail(), 'The user email does not match the expected value');
        $this->assertNotEquals('', $entity->getBirthday(), 'The user birthday does not match the expected value');
        $this->assertNotNull($entity->isAdmin(), 'The user admin does not match the expected value');
        $this->assertNotNull($entity->isLocal(), 'The user local does not match the expected value');
        $this->assertNotNull($entity->isNsfw(), 'The user nsfw does not match the expected value');
    }

    public static function usersCreationProvider(): array
    {
        return [
            ['Reader1', '1password', 'contact@read1.com', '2005-10-02 08:00:00', 0, 1, 1, 0],
            ['Score2', '2password', 'contact@score2.com', '2004-11-03 08:00:00', 0, 1, 1, 1],
            ['Admin3', '3password', 'contact@admin3.com', '2003-12-04 08:00:00', 0, 1, 1, 2]
        ];
    }
}
