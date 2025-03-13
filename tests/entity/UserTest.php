<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . "/../../src/entity/User.php";

class UserTest extends TestCase
{
    public function testConstructor()
    {
        $user = new User();
        $this->assertEquals("", $user->getUsername());
        $this->assertEquals("", $user->getPassword());
        $this->assertEquals("", $user->getEmail());
        $this->assertFalse($user->isAdmin());
        $this->assertTrue($user->isLocal());
        $this->assertInstanceOf(DateTime::class, $user->getBirthday());
        $this->assertFalse($user->isNsfw());
    }

    public function testSetUsername()
    {
        $user = new User();
        $user->setUsername("testuser");
        $this->assertEquals("testuser", $user->getUsername());
    }

    public function testSetPassword()
    {
        $user = new User();
        $user->setPassword("password", false);
        $this->assertTrue(password_verify("password", $user->getPassword()));
    }

    public function testSetEmail()
    {
        $user = new User();
        $user->setEmail("test@example.com");
        $this->assertEquals("test@example.com", $user->getEmail());
    }

    public function testSetIsAdmin()
    {
        $user = new User();
        $user->setIsAdmin(true);
        $this->assertTrue($user->isAdmin());
    }

    public function testSetIsLocal()
    {
        $user = new User();
        $user->setIsLocal(false);
        $this->assertFalse($user->isLocal());
    }

    public function testSetBirthday()
    {
        $user = new User();
        $birthday = new DateTime("2000-01-01");
        $user->setBirthday($birthday);
        $this->assertEquals($birthday, $user->getBirthday());
    }

    public function testSetIsNsfw()
    {
        $user = new User();
        $user->setIsNsfw(true);
        $this->assertTrue($user->isNsfw());
    }

    public function testJsonSerialize()
    {
        $user = new User();
        $user->setUsername("testuser");
        $user->setPassword("password", false);
        $user->setEmail("test@example.com");
        $user->setIsAdmin(true);
        $user->setIsLocal(false);
        $birthday = new DateTime("2000-01-01");
        $user->setBirthday($birthday);
        $user->setIsNsfw(true);

        $expected = [
            "id" => 0,
            "creation_date" => $user->getCreationDate(),
            "update_date" => $user->getUpdateDate(),
            "delete_date" => $user->getDeleteDate(),
            "username" => "testuser",
            "password" => $user->getPassword(),
            "email" => "test@example.com",
            "is_admin" => true,
            "is_local" => false,
            "birthday" => $birthday,
            "is_nsfw" => true,
        ];

        $this->assertEqualsCanonicalizing($expected, $user->jsonSerialize());
    }

    public function testGetNewObject()
    {
        $user = User::getNewObject();
        $this->assertInstanceOf(User::class, $user);
    }
}