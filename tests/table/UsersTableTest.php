<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/UsersTable.php';
require_once __DIR__ . '/../../src/entity/User.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class UsersTableTest extends TestCase
{
    private UsersTable $usersTable;

    private int $userId; // Example user ID for testing

    /**
     * Set up the UsersTable instance before each test.
     * This method initializes the UsersTable object with test parameters.
     */
    protected function setUp(): void
    {
        $this->usersTable = new UsersTable("tests", "user");
    }

    /**
     * Test getting a user by its ID.
     * This method verifies that a user can be retrieved by their ID and checks the returned data.
     */
    public function testGetUserById()
    {
        // Retrieve the user with ID 1
        $user = $this->usersTable->get(1);

        // Assert that the retrieved user has the expected ID and username
        $this->assertEquals(1, $user->getId());
        $this->assertEquals("Admin", $user->getUsername());
        
        // Assert that the retrieved object is an instance of the User class
        $this->assertInstanceOf(User::class, $user);
    }

    /**
     * Test getting a user by an ID that does not exist.
     * This method ensures that an exception is thrown when trying to retrieve a non-existent user.
     */
    public function testGetUserByIdNotFound()
    {
        // Expect an exception of type FfbTableException with a specific message
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Attempt to retrieve a user with a non-existent ID
        $this->usersTable->get(999);
    }

    /**
     * Test finding users by exact match.
     * This method checks that users can be found by providing exact search criteria.
     */
    public function testFindSearchedByEquality()
    {
        // Search for users with the username "Admin"
        $users = $this->usersTable->findSearchedBy([
            "username" => "Admin"
        ]);

        // Assert that exactly one user is found
        $this->assertCount(1, $users);

        // Assert that the found user has the expected ID and username
        $this->assertEquals(1, $users[0]->getId());
        $this->assertEquals("Admin", $users[0]->getUsername());

        // Assert that the found object is an instance of the User class
        $this->assertInstanceOf(User::class, $users[0]);
    }

    /**
     * Test finding users using a LIKE query.
     * This method verifies that users can be found using partial matching with the LIKE operator.
     */
    public function testFindSearchedByLike()
    {
        // Search for users with usernames starting with "G"
        $users = $this->usersTable->findSearchedBy([
            "username" => "LIKE 'G%'"
        ]);

        // Assert that exactly one user is found
        $this->assertCount(1, $users);

        // Assert that the found user has the expected ID and username
        $this->assertEquals(2, $users[0]->getId());
        $this->assertEquals("Guest", $users[0]->getUsername());

        // Assert that the found object is an instance of the User class
        $this->assertInstanceOf(User::class, $users[0]);
    }

    /**
     * Test finding users ordered by username in ascending order.
     * This method ensures that users can be retrieved in a specific order based on a given field.
     */
    public function testFindOrderedByAsc()
    {
        // Retrieve users ordered by username in ascending order
        $users = $this->usersTable->findOrderedBy([
            "username" => "ASC"
        ]);

        // Assert that three users are found
        $this->assertCount(3, $users);

        // Assert that the users are ordered as expected
        $this->assertEquals("Admin", $users[0]->getUsername());
        $this->assertEquals("Fhurai", $users[1]->getUsername());
        $this->assertEquals("Guest", $users[2]->getUsername());

        // Assert that each retrieved object is an instance of the User class
        foreach ($users as $user) {
            $this->assertInstanceOf(User::class, $user);
        }
    }

    /**
     * Test finding users with a limit of 2.
     * This method verifies that the number of retrieved users can be limited.
     */
    public function testFindLimitedBy02()
    {
        // Retrieve a maximum of 2 users
        $users = $this->usersTable->findLimitedBy([
            "limit" => 2
        ]);

        // Assert that exactly two users are found
        $this->assertCount(2, $users);

        // Assert that the found users have the expected usernames
        $this->assertEquals("Admin", $users[0]->getUsername());
        $this->assertEquals("Guest", $users[1]->getUsername());

        // Assert that each retrieved object is an instance of the User class
        foreach ($users as $user) {
            $this->assertInstanceOf(User::class, $user);
        }
    }

    /**
     * Test creating a new user.
     * This method ensures that a new user can be created and verifies the returned data.
     */
    public function testCreateUser()
    {
        // Create a new User object and set its properties
        $user = new User();
        $user->setUsername("New User");
        $user->setPassword("password123");
        $user->setEmail("newuser@example.com");
        $user->setCreationDate(new DateTime("2023-01-01"));
        $user->setUpdateDate(new DateTime("2023-01-01"));
        $user->setDeleteDate(null);

        // Create the user in the database
        $createdUser = $this->usersTable->create($user);

        // Assert that the created user has a non-null ID
        $this->assertNotNull($createdUser->getId());

        // Assert that the created user has the expected username
        $this->assertEquals("New User", $createdUser->getUsername());

        // Assert that the created object is an instance of the User class
        $this->assertInstanceOf(User::class, $createdUser);
    }

    /**
     * Test updating an existing user.
     * This method verifies that an existing user's data can be updated.
     */
    public function testUpdateUser()
    {
        // Retrieve the last inserted user
        $user = $this->usersTable->get($this->usersTable->getLastInsertId());

        // Update the username of the retrieved user
        $user->setUsername("Updated Username");

        // Update the user in the database
        $updatedUser = $this->usersTable->update($user);

        // Assert that the updated user has the new username
        $this->assertEquals("Updated Username", $updatedUser->getUsername());

        // Assert that the updated object is an instance of the User class
        $this->assertInstanceOf(User::class, $updatedUser);
    }

    /**
     * Test soft deleting a user.
     * This method ensures that a user can be soft deleted and verifies the operation.
     */
    public function testDeleteUser()
    {
        // Search for users with the username "Updated Username"
        $users = $this->usersTable->findSearchedBy([
            "username" => "Updated Username"
        ]);

        // Soft delete the user
        $result = $this->usersTable->delete($users[0]->getId());

        // Assert that the deletion was successful
        $this->assertTrue($result);
    }

    /**
     * Test restoring a soft-deleted user.
     * This method verifies that a soft-deleted user can be restored.
     */
    public function testRestoreUser()
    {
        // Search for users with the username "Updated Username"
        $users = $this->usersTable->findSearchedBy([
            "username" => "Updated Username"
        ]);

        // Assert that the user is found
        $this->assertNotEmpty($users);
        $this->assertEquals("Updated Username", $users[0]->getUsername());

        // Restore the soft-deleted user
        $result = $this->usersTable->restore($users[0]->getId());

        // Assert that the restoration was successful
        $this->assertTrue($result);

        // Retrieve the restored user and assert that the data is correct
        $restoredUser = $this->usersTable->get($users[0]->getId());
        $this->assertNotNull($restoredUser);
        $this->assertEquals("Updated Username", $restoredUser->getUsername());
    }

    /**
     * Test hard deleting a user.
     * This method ensures that a user can be permanently deleted and verifies the operation.
     */
    public function testRemoveUser()
    {
        // Search for users with the username "Updated Username"
        $users = $this->usersTable->findSearchedBy([
            "username" => "Updated Username"
        ]);

        // Assert that the user is found
        $this->assertNotEmpty($users);
        $this->assertEquals("Updated Username", $users[0]->getUsername());

        // Permanently delete the user
        $result = $this->usersTable->remove($users[0]->getId());

        // Assert that the deletion was successful
        $this->assertTrue($result);

        // Attempt to retrieve the deleted user and expect an exception
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->usersTable->get($users[0]->getId());
    }
}