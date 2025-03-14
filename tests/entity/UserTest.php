<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/User.php';

class UserTest extends TestCase
{
    public function testConstructorInitializesDefaults(): void
    {
        $user = new User();
        
        $this->assertSame('', $user->getUsername());
        $this->assertSame('', $user->getPassword());
        $this->assertSame('', $user->getEmail());
        $this->assertFalse($user->isAdmin());
        $this->assertTrue($user->isLocal());
        $this->assertFalse($user->isNsfw());
        
        // Test birthday initialization
        $birthday = $user->getBirthday();
        $this->assertInstanceOf(DateTime::class, $birthday);
        $this->assertSame('Europe/Paris', $birthday->getTimezone()->getName());
    }

    public function testSettersAndGetters(): void
    {
        $user = new User();
        
        // Test username
        $user->setUsername('john_doe');
        $this->assertSame('john_doe', $user->getUsername());
        
        // Test email
        $user->setEmail('john@example.com');
        $this->assertSame('john@example.com', $user->getEmail());
        
        // Test boolean flags
        $user->setIsAdmin(true);
        $this->assertTrue($user->isAdmin());
        
        $user->setIsLocal(false);
        $this->assertFalse($user->isLocal());
        
        $user->setIsNsfw(true);
        $this->assertTrue($user->isNsfw());
        
        // Test birthday
        $newBirthday = new DateTime('2000-01-01');
        $user->setBirthday($newBirthday);
        $this->assertSame($newBirthday, $user->getBirthday());
    }

    public function testPasswordHashing(): void
    {
        $user = new User();
        
        // Test hashed password
        $plainPassword = 'secret123';
        $user->setPassword($plainPassword, false);
        $this->assertTrue(password_verify($plainPassword, $user->getPassword()));
        
        // Test pre-hashed password
        $hashedPassword = password_hash('anotherpass', PASSWORD_DEFAULT);
        $user->setPassword($hashedPassword, true);
        $this->assertSame($hashedPassword, $user->getPassword());
    }

    public function testJsonSerialize(): void
    {
        $user = new User();
        $user->setUsername('test_user');
        $user->setEmail('test@example.com');
        $user->setIsAdmin(true);
        $fixedDate = new DateTime('1990-05-15 08:00:00', new DateTimeZone('Europe/Paris'));
        $user->setBirthday($fixedDate);
        
        $serialized = $user->jsonSerialize();
        
        // Test parent fields
        $this->assertArrayHasKey('id', $serialized);
        
        // Test user fields
        $this->assertSame('test_user', $serialized['username']);
        $this->assertSame('test@example.com', $serialized['email']);
        $this->assertTrue($serialized['is_admin']);
        $this->assertInstanceOf(DateTime::class, $serialized['birthday']);
        $this->assertSame('1990-05-15 08:00:00', $serialized['birthday']->format('Y-m-d H:i:s'));
    }

    public function testGetBirthDateFormat(): void
    {
        $user = new User();
        $fixedDate = new DateTime('2023-01-01 12:34:56', new DateTimeZone('Europe/Paris'));
        $user->setBirthday($fixedDate);
        
        $this->assertSame('2023-01-01 12:34:56', $user->getBirthDate());
    }

    public function testGetNewObject(): void
    {
        $newUser = User::getNewObject();
        
        $this->assertInstanceOf(User::class, $newUser);
        $this->assertSame('', $newUser->getUsername());
        $this->assertSame('', $newUser->getEmail());
        $this->assertFalse($newUser->isAdmin());
    }
}