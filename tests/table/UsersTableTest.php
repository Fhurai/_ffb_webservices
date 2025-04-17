<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/UsersTable.php';
require_once __DIR__ . '/../../src/entity/User.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

/**
 * Class UsersTableTest
 *
 * This class contains unit tests for the UsersTable class, which handles database operations
 * for the "users" table. It tests various CRUD operations and query methods.
 */
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\User::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\UserBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\UsersTable::class)]
class UsersTableTest extends TestCase
{
    private UsersTable $usersTable;

    /**
     * Set up the UsersTable instance before each test.
     */
    protected function setUp(): void
    {
        // Initialize the UsersTable instance with test parameters.
        $this->usersTable = new UsersTable("tests", "user");
    }

    /**
     * Test retrieving a user by a valid ID.
     */
    public function testGetValidId(): void
    {
        // Call the get method with a valid ID.
        $result = $this->usersTable->get(1);

        // Assert that the result is an instance of the User class.
        $this->assertInstanceOf(User::class, $result);

        // Assert that the ID and username match the expected values.
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Admin", $result->getUsername());
    }

    /**
     * Test retrieving a user by an invalid ID.
     */
    public function testGetInvalidId(): void
    {
        // Expect an exception to be thrown for an invalid ID.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Call the get method with an invalid ID.
        $this->usersTable->get(999);
    }

    /**
     * Test retrieving a user by a non-integer ID.
     */
    public function testGetNonIntegerId(): void
    {
        // Expect a TypeError to be thrown for a non-integer ID.
        $this->expectException(TypeError::class);

        // Call the get method with a non-integer ID.
        $this->usersTable->get("invalid_id");
    }

    /**
     * Test searching for users by valid criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        // Call the findSearchedBy method with valid criteria.
        $result = $this->usersTable->findSearchedBy(['username' => 'Admin']);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the array contains exactly one user.
        $this->assertCount(1, $result);

        // Assert that the first element in the array is an instance of the User class.
        $this->assertInstanceOf(User::class, $result[0]);
    }

    /**
     * Test searching for users by invalid criteria.
     */
    public function testFindSearchedByInvalidCriteria(): void
    {
        // Expect an exception to be thrown for invalid criteria.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        // Call the findSearchedBy method with invalid criteria.
        $this->usersTable->findSearchedBy(['invalid_column' => 'value']);
    }

    /**
     * Test searching for users with empty criteria.
     */
    public function testFindSearchedByEmptyCriteria(): void
    {
        // Expect an exception to be thrown for empty criteria.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        // Call the findSearchedBy method with empty criteria.
        $this->usersTable->findSearchedBy([]);
    }

    /**
     * Test ordering users by valid criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        // Call the findOrderedBy method with valid ordering criteria.
        $result = $this->usersTable->findOrderedBy(['username' => 'ASC']);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the array contains the expected number of users.
        $this->assertCount(3, $result); // Adjust count based on test data.

        // Assert that the first user's username matches the expected value.
        $this->assertEquals("Admin", $result[0]->getUsername());
    }

    /**
     * Test ordering users with an invalid direction.
     */
    public function testFindOrderedByInvalidDirection(): void
    {
        // Expect an exception to be thrown for an invalid order direction.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        // Call the findOrderedBy method with an invalid direction.
        $this->usersTable->findOrderedBy(['username' => 'INVALID']);
    }

    /**
     * Test limiting the number of users returned by valid criteria.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        // Call the findLimitedBy method with valid limit and offset.
        $result = $this->usersTable->findLimitedBy(['limit' => 2, 'offset' => 0]);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the array contains the expected number of users.
        $this->assertCount(2, $result);
    }

    /**
     * Test limiting users with a negative limit value.
     */
    public function testFindLimitedByNegativeLimit(): void
    {
        // Expect an exception to be thrown for a negative limit value.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        // Call the findLimitedBy method with a negative limit.
        $this->usersTable->findLimitedBy(['limit' => -1]);
    }

    /**
     * Test limiting users with a negative offset value.
     */
    public function testFindLimitedByNegativeOffset(): void
    {
        // Expect an exception to be thrown for a negative offset value.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        // Call the findLimitedBy method with a negative offset.
        $this->usersTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    /**
     * Test finding all users with specific criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        // Call the findAll method with specific criteria.
        $result = $this->usersTable->findAll([
            'search' => ['username' => 'Admin%'],
            'order' => ['username' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the array contains the expected number of users.
        $this->assertCount(1, $result);
    }

    /**
     * Test finding all users when no results match the criteria.
     */
    public function testFindAllNoResults(): void
    {
        // Expect an exception to be thrown when no results match the criteria.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Call the findAll method with criteria that match no users.
        $this->usersTable->findAll([
            'search' => ['username' => 'Nonexistent%'],
            'order' => ['username' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    /**
     * Test finding all users with empty arguments.
     */
    public function testFindAllEmptyArguments(): void
    {
        // Call the findAll method with empty arguments.
        $result = $this->usersTable->findAll([]);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the array contains the expected number of users.
        $this->assertCount(3, $result); // Adjust count based on test data.
    }

    /**
     * Test creating a new user with valid data.
     */
    public function testCreateValid(): void
    {
        // Build a new user with valid data.
        $user = (new UserBuilder())
            ->withUsername("newuser")
            ->withPassword("password")
            ->withEmail("newuser@example.com")
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->withIsLocal(true)
            ->withIsAdmin(false)
            ->build();

        // Call the create method to add the new user to the database.
        $createdUser = $this->usersTable->create($user);

        // Assert that the created user is an instance of the User class.
        $this->assertInstanceOf(User::class, $createdUser);

        // Assert that the created user has a non-null ID.
        $this->assertNotNull($createdUser->getId());

        // Assert that the username matches the expected value.
        $this->assertEquals("newuser", $createdUser->getUsername());
    }

    /**
     * Test updating an existing user with valid data.
     */
    public function testUpdateValid(): void
    {
        // Find the user to be updated by searching for the username.
        $user = $this->usersTable->findSearchedBy(["username" => "newuser"])[0];

        // Update the user's username and update date.
        $user->setUsername("updateduser");
        $user->setUpdateDate(new DateTime());

        // Call the update method to save the changes.
        $updatedUser = $this->usersTable->update($user);

        // Assert that the updated user is an instance of the User class.
        $this->assertInstanceOf(User::class, $updatedUser);

        // Assert that the username matches the updated value.
        $this->assertEquals("updateduser", $updatedUser->getUsername());
    }

    /**
     * Test deleting a user by a valid ID.
     */
    public function testDeleteValidId(): void
    {
        // Find the user to be deleted by searching for the username.
        $user = $this->usersTable->findSearchedBy(["username" => "updateduser"])[0];

        // Call the delete method with the user's ID.
        $result = $this->usersTable->delete($user->getId());

        // Assert that the delete operation was successful.
        $this->assertTrue($result);
    }

    /**
     * Test restoring a previously deleted user by a valid ID.
     */
    public function testRestoreValidId(): void
    {
        // Find the user to be restored by searching for the username.
        $user = $this->usersTable->findSearchedBy(["username" => "updateduser"])[0];

        // Call the restore method with the user's ID.
        $result = $this->usersTable->restore($user->getId());

        // Assert that the restore operation was successful.
        $this->assertTrue($result);
    }

    /**
     * Test permanently removing a user by a valid ID.
     */
    public function testRemoveValidId(): void
    {
        // Find the user to be removed by searching for the username.
        $user = $this->usersTable->findSearchedBy(["username" => "updateduser"])[0];

        // Delete the User object to ensure it exists before removal
        $this->usersTable->delete($user->getId());

        // Call the remove method with the user's ID.
        $result = $this->usersTable->remove($user->getId());

        // Assert that the remove operation was successful.
        $this->assertTrue($result);
    }
}
