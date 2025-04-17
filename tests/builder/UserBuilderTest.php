<?php

require_once __DIR__ . "/../../tests/builder/EntityBuilderTestCase.php";
require_once __DIR__ . "/../../src/builder/UserBuilder.php";

#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\User::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\UserBuilder::class)]
class UserBuilderTest extends EntityBuilderTestCase
{
    protected function getBuilder(): EntityBuilder
    {
        return new UserBuilder();
    }

    public function testWithUsername(): void
    {
        $user = $this->builder->withUsername('test_user')->build();
        $this->assertEquals('test_user', $user->getUsername());
    }
    public function testWithPassword(): void
    {
        $user = $this->builder->withPassword('securePass123')->build();
        $this->assertEquals('securePass123', $user->getPassword());
    }
    public function testWithEmail(): void
    {
        $user = $this->builder->withEmail('user@example.com')->build();
        $this->assertEquals('user@example.com', $user->getEmail());
    }
    public function testWithIsAdmin(): void
    {
        $user = $this->builder->withIsAdmin(true)->build();
        $this->assertTrue($user->isAdmin());
    }
}
