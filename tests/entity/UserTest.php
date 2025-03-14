<?php

require_once __DIR__ . "/../../src/entity/User.php";
require_once __DIR__ . "/../../tests/entity/EntityTest.php";

class UserTest extends EntityTest
{
    protected function setUp(): void
    {
        $this->entity = new User();
    }

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
        $this->entity->setUsername("testuser");
        $this->assertEquals("testuser", $this->entity->getUsername());
    }

    public function testSetPassword()
    {
        $this->entity->setPassword("password", false);
        $this->assertTrue(password_verify("password", $this->entity->getPassword()));
    }

    public function testSetEmail()
    {
        $this->entity->setEmail("test@example.com");
        $this->assertEquals("test@example.com", $this->entity->getEmail());
    }

    public function testSetIsAdmin()
    {
        $this->entity->setIsAdmin(true);
        $this->assertTrue($this->entity->isAdmin());
    }

    public function testSetIsLocal()
    {
        $this->entity->setIsLocal(false);
        $this->assertFalse($this->entity->isLocal());
    }

    public function testSetBirthday()
    {
        $birthday = new DateTime("2000-01-01");
        $this->entity->setBirthday($birthday);
        $this->assertEquals($birthday, $this->entity->getBirthday());
    }

    public function testSetIsNsfw()
    {
        $this->entity->setIsNsfw(true);
        $this->assertTrue($this->entity->isNsfw());
    }

    public function testJsonSerialize()
    {
        $this->entity->setUsername("testuser");
        $this->entity->setPassword("password", false);
        $this->entity->setEmail("test@example.com");
        $this->entity->setIsAdmin(true);
        $this->entity->setIsLocal(false);
        $birthday = new DateTime("2000-01-01");
        $this->entity->setBirthday($birthday);
        $this->entity->setIsNsfw(true);

        $expected = [
            "id" => 0,
            "creation_date" => $this->entity->getCreationDate(),
            "update_date" => $this->entity->getUpdateDate(),
            "delete_date" => $this->entity->getDeleteDate(),
            "username" => "testuser",
            "password" => $this->entity->getPassword(),
            "email" => "test@example.com",
            "is_admin" => true,
            "is_local" => false,
            "birthday" => $birthday,
            "is_nsfw" => true,
        ];

        $this->assertEqualsCanonicalizing($expected, $this->entity->jsonSerialize());
    }

    public function testGetNewObject()
    {
        $user = User::getNewObject();
        $this->assertInstanceOf(User::class, $user);
    }
}