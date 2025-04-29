<?php

use PHPUnit\Framework\Attributes\Test;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\User::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class UsersTest extends ApiTestCase
{
    /**
     * Test that the API can list all users.
     */
    #[Test]
    public function it_can_list_users(): void
    {
        $response = $this->get('/users');
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertObjectHasProperty('id', $item, 'Item should have an id property');
            $this->assertNotEmpty($item->id, 'Item id should not be empty');
            $this->assertObjectHasProperty('username', $item, 'Item should have a username property');
            $this->assertNotEmpty($item->username, 'Item username should not be empty');
            $this->assertObjectHasProperty('email', $item, 'Item should have an email property');
            $this->assertNotEmpty($item->email, 'Item email should not be empty');
        }
    }

    /**
     * Test that the API can create a new user.
     */
    #[Test]
    public function it_can_create_a_user(): void
    {
        $data = [
            'username' => 'newuser', 
            'password' => 'password123', 
            'email' => 'newuser@example.com', 
            'birthday' => '1990-01-01 00:00:00', 
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ];
        $response = $this->post('/user', $data);

        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertNotEmpty($dataArray->id, 'Response id should not be empty');
        $this->assertObjectHasProperty('username', $dataArray, 'Response should have a username property');
        $this->assertEquals($data['username'], $dataArray->username, 'Response username should match the input username');
        $this->assertObjectHasProperty('email', $dataArray, 'Response should have an email property');
        $this->assertEquals($data['email'], $dataArray->email, 'Response email should match the input email');
    }

    /**
     * Test that the API can retrieve a user by ID.
     */
    #[Test]
    public function it_can_get_a_user_by_id(): void
    {
        $user = $this->createUser([
            'username' => 'testuser', 
            'password' => 'password123', 
            'email' => 'testuser@example.com', 
            'birthday' => '1990-01-01 00:00:00', 
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);
        $response = $this->get('/user', ['id' => $user['id']]);
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($user['id'], $dataArray->id, 'Response id should match the created user id');
        $this->assertObjectHasProperty('username', $dataArray, 'Response should have a username property');
        $this->assertEquals($user['username'], $dataArray->username, 'Response username should match the created user username');
    }

    /**
     * Test that the API can update a user's details.
     */
    #[Test]
    public function it_can_update_a_user(): void
    {
        $user = $this->createUser([
            'username' => 'olduser', 
            'password' => 'password123', 
            'email' => 'olduser@example.com', 
            'birthday' => '1990-01-01 00:00:00', 
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);
        $updated = ['id' => $user['id'], 'username' => 'updateduser'];

        $response = $this->put('/user', $updated);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('User updated', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API can soft delete a user.
     */
    #[Test]
    public function it_can_soft_delete_a_user(): void
    {
        $user = $this->createUser([
            'username' => 'softdeleteuser', 
            'password' => 'password123', 
            'email' => 'softdelete@example.com', 
            'birthday' => '1990-01-01 00:00:00', 
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);
        $response = $this->patch('/user', ['id' => $user['id'], 'deleted' => true]);

        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('User deleted', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot soft delete an already deleted user.
     */
    #[Test]
    public function it_cannot_soft_delete_a_deleted_user(): void
    {
        // Create a new user for testing
        $user = $this->createUser([
            'username' => 'softnotdeleteuser', 
            'password' => 'password123', 
            'email' => 'softnotdelete@example.com', 
            'birthday' => '1990-01-01 00:00:00', 
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);

        // Send a PATCH request to soft delete the user
        $this->patch('/user', ['id' => $user['id'], 'deleted' => true]);

        // Attempt to soft delete the already deleted user
        $response = $this->patch('/user', ['id' => $user['id'], 'deleted' => true]);

        // Assert that the response status is 500 Internal Server Error
        $this->assertEquals(500, $response['code'], 'Response status should be 500 Internal Server Error');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the error message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Server error: Entity is already deleted!', $dataArray->message, 'Response message should indicate failure');
    }

    /**
     * Test that the API can restore a soft-deleted user.
     */
    #[Test]
    public function it_can_restore_a_soft_deleted_user(): void
    {
        $user = $this->createUser([
            'username' => 'restoreuser', 
            'password' => 'password123', 
            'email' => 'restore@example.com', 
            'birthday' => '1990-01-01 00:00:00', 
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);

        $this->patch('/user', ['id' => $user['id'], 'deleted' => true]);
        $response = $this->patch('/user', ['id' => $user['id'], 'deleted' => false]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('User restored', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot restore a user that is not deleted.
     */
    #[Test]
    public function it_cannot_restore_a_non_deleted_user(): void
    {
        // Create a new user for testing
        $user = $this->createUser([
            'username' => 'notrestoreuser', 
            'password' => 'password123', 
            'email' => 'notrestore@example.com', 
            'birthday' => '1990-01-01 00:00:00', 
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);

        // Attempt to restore the user without deleting it first
        $response = $this->patch('/user', ['id' => $user['id'], 'deleted' => false]);

        // Assert that the response status is 500 Internal Server Error
        $this->assertEquals(500, $response['code'], 'Response status should be 500 Internal Server Error');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the error message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Server error: Entity is already restored!', $dataArray->message, 'Response message should indicate failure');
    }

    /**
     * Test that the API can permanently remove a soft-deleted user.
     */
    #[Test]
    public function it_can_remove_a_user_permanently(): void
    {
        $user = $this->createUser([
            'username' => 'removeuser', 
            'password' => 'password123', 
            'email' => 'removeuser@example.com', 
            'birthday' => '1990-01-01 00:00:00', 
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);

        $this->patch('/user', ['id' => $user['id'], 'deleted' => true]);
        $response = $this->delete('/user', ['id' => $user['id']]);
        $this->assertEquals(204, $response['code'], 'Response status should be 204 OK');
    }

    /**
     * Test that the API cannot permanently remove a user that is not soft-deleted.
     */
    #[Test]
    public function it_cannot_remove_a_not_deleted_user_permanently(): void
    {
        // Create a new user for testing
        $user = $this->createUser([
            'username' => 'notremoveuser', 
            'password' => 'password123', 
            'email' => 'notremove@example.com', 
            'birthday' => '1990-01-01 00:00:00', 
            'isAdmin' => false,
            'isLocal' => true,
            'isNsfw' => false,
        ]);

        // Attempt to permanently delete the user without soft deleting it first
        $response = $this->delete('/user', ['id' => $user['id']]);

        // Assert that the response status is 500 Internal Server Error
        $this->assertEquals(500, $response['code'], 'Response status should be 500 Internal Server Error');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the error message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Server error: Entity is not deleted!', $dataArray->message, 'Response message should indicate failure');
    }


    /**
     * Helper method to create a user using the API.
     *
     * @param array $data The data for the new user.
     * @return array The created user's data.
     */
    private function createUser(array $data): array
    {
        $response = $this->post('/user', $data);
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        return json_decode($response['body'], true);
    }
}
