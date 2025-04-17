<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/User.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\User::class)]
class UserTest extends TestCase
{
    private const DEFAULT_TIMEZONE = 'Europe/Paris';

    /**
     * Test that the constructor initializes default values correctly.
     */
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
        $this->assertSame(self::DEFAULT_TIMEZONE, $birthday->getTimezone()->getName());
    }

    /**
     * Test the setters and getters for all user properties.
     */
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
        $newBirthday = new DateTime('2000-01-01', new DateTimeZone(self::DEFAULT_TIMEZONE));
        $user->setBirthday($newBirthday);
        $this->assertSame($newBirthday, $user->getBirthday());
    }

    /**
     * Test password hashing and validation.
     */
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

    /**
     * Test the JSON serialization of the User object.
     */
    public function testJsonSerialize(): void
    {
        $user = new User();
        $user->setUsername('test_user');
        $user->setEmail('test@example.com');
        $user->setIsAdmin(true);
        $fixedDate = new DateTime('1990-05-15 08:00:00', new DateTimeZone(self::DEFAULT_TIMEZONE));
        $user->setBirthday($fixedDate);

        $serialized = $user->jsonSerialize();

        // Test parent fields
        $this->assertArrayHasKey('id', $serialized);

        // Test user fields
        $this->assertSame('test_user', $serialized['username']);
        $this->assertSame('test@example.com', $serialized['email']);
        $this->assertTrue($serialized['is_admin']);
        $this->assertSame('1990-05-15 08:00:00', $serialized['birthday']);
    }

    /**
     * Test the formatted birthday string.
     */
    public function testGetBirthDateFormat(): void
    {
        $user = new User();
        $fixedDate = new DateTime('2023-01-01 12:34:56', new DateTimeZone(self::DEFAULT_TIMEZONE));
        $user->setBirthday($fixedDate);

        $this->assertSame('2023-01-01 12:34:56', $user->getBirthDate());
    }

    /**
     * Test the creation of a new User object using the factory method.
     */
    public function testGetNewObject(): void
    {
        $newUser = User::getNewObject();

        $this->assertInstanceOf(User::class, $newUser);
        $this->assertSame('', $newUser->getUsername());
        $this->assertSame('', $newUser->getEmail());
        $this->assertFalse($newUser->isAdmin());
    }

    /**
     * Test edge cases for setting invalid data.
     */
    public function testInvalidDataHandling(): void
    {
        $user = new User();

        // Test invalid email
        $user->setEmail('invalid-email');
        $this->assertSame('invalid-email', $user->getEmail()); // Assuming no validation in setter

        // Test empty username
        $user->setUsername('');
        $this->assertSame('', $user->getUsername());

        // Test invalid birthday
        $this->expectException(TypeError::class);
        $user->setBirthday('invalid-date'); // Should throw an error
    }
}
