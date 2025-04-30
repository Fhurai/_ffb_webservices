<?php

use PHPUnit\Framework\Attributes\Test;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Fanfiction::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class FanfictionsTest extends ApiTestCase
{
    /**
     * Test that the API can list all fanfictions.
     */
    #[Test]
    public function it_can_list_fanfictions(): void
    {
        // Send a GET request to fetch all fanfictions
        $response = $this->get('/fanfictions');

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Iterate through each fanfiction and validate its properties
        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertObjectHasProperty('id', $item, 'Item should have an id property');
            $this->assertNotEmpty($item->id, 'Item id should not be empty');
            $this->assertObjectHasProperty('name', $item, 'Item should have a name property');
            $this->assertNotEmpty($item->name, 'Item name should not be empty');
            $this->assertObjectHasProperty('creation_date', $item, 'Item should have a creation_date property');
            $this->assertNotEmpty($item->creation_date, 'Item creation_date should not be empty');
            $this->assertObjectHasProperty('update_date', $item, 'Item should have an update_date property');
            $this->assertNotEmpty($item->update_date, 'Item update_date should not be empty');
        }
    }

    /**
     * Test that the API can filter fanfictions by name.
     */
    #[Test]
    public function it_can_filter_fanfictions_by_name(): void
    {
        // Send a GET request with a filter parameter to search fanfictions by name
        $response = $this->get('/fanfictions', ['search_name' => 'Star%']);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Assert that at least one fanfiction is returned
        $this->assertGreaterThan(0, count($dataArray), 'Response should contain at least one fanfiction');

        // Iterate through each fanfiction and validate its name starts with "Star"
        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertStringStartsWith('Star', $item->name, 'Fanfiction name should start with "Star"');
        }
    }

    /**
     * Test that the API can create a new fanfiction.
     */
    #[Test]
    public function it_can_create_a_fanfiction(): void
    {
        // Prepare the data for the new fanfiction
        $data = [
            'name' => 'New Fanfiction',
            'author_id' => 1,
            'rating_id' => 1,
            'language_id' => 1,
            'description' => 'A new fanfiction description.',
            'fandoms' => [2, 3], // Example fandom IDs,
            'relations' => [50, 51], // Example relation IDs,
            'characters' => [99, 100], // Example character IDs
            'tags' => [1, 2], // Example tag IDs
            'links' => [
                'https://example1.com',
                'https://example1.org',
            ],
        ];

        // Send a POST request to create the fanfiction
        $response = $this->post('/fanfiction', $data);

        // Assert that the response status is 201 Created
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the created fanfiction
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertNotEmpty($dataArray->id, 'Response id should not be empty');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($data['name'], $dataArray->name, 'Response name should match the input name');
        $this->assertObjectHasProperty('creation_date', $dataArray, 'Response should have a creation_date property');
        $this->assertNotEmpty($dataArray->creation_date, 'Response creation_date should not be empty');
        $this->assertObjectHasProperty('update_date', $dataArray, 'Response should have an update_date property');
        $this->assertNotEmpty($dataArray->update_date, 'Response update_date should not be empty');
    }

    /**
     * Test that the API can retrieve a fanfiction by ID.
     */
    #[Test]
    public function it_can_get_a_fanfiction_by_id(): void
    {
        // Create a new fanfiction for testing
        $fanfiction = $this->createFanfiction([
            'name' => 'Test Fanfiction',
            'author_id' => 1,
            'rating_id' => 1,
            'language_id' => 1,
            'description' => 'A new fanfiction description.',
            'fandoms' => [2, 3], // Example fandom IDs
            'relations' => [50, 51], // Example relation IDs
            'characters' => [99, 100], // Example character IDs
            'tags' => [1, 2], // Example tag IDs
            'links' => [
                'https://example2.com',
                'https://example2.org',
            ],
        ]);

        // Send a GET request to fetch the fanfiction by ID
        $response = $this->get('/fanfiction', ['id' => $fanfiction['id']]);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the fetched fanfiction
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($fanfiction['id'], $dataArray->id, 'Response id should match the created fanfiction id');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($fanfiction['name'], $dataArray->name, 'Response name should match the created fanfiction name');
    }

    /**
     * Test that the API can update a fanfiction's details.
     */
    #[Test]
    public function it_can_update_a_fanfiction(): void
    {
        // Create a new fanfiction for testing
        $fanfiction = $this->createFanfiction([
            'name' => 'Old Name',
            'author_id' => 1,
            'rating_id' => 1,
            'language_id' => 1,
            'description' => 'A new fanfiction description.',
            'fandoms' => [2, 3], // Example fandom IDs
            'relations' => [50, 51], // Example relation IDs
            'characters' => [99, 100], // Example character IDs
            'tags' => [1, 2], // Example tag IDs
            'links' => [
                'https://example3.com',
                'https://example3.org',
            ],
        ]);

        // Prepare the updated data for the fanfiction
        $updated = ['id' => $fanfiction['id'], 'name' => 'NX'];

        // Send a PUT request to update the fanfiction
        $response = $this->put('/fanfiction', $updated);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Fanfiction updated', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API can soft delete a fanfiction.
     */
    #[Test]
    public function it_can_soft_delete_a_fanfiction(): void
    {
        // Create a new fanfiction for testing
        $fanfiction = $this->createFanfiction([
            'name' => 'SoftDelete',
            'author_id' => 1,
            'rating_id' => 1,
            'language_id' => 1,
            'description' => 'A new fanfiction description.',
            'fandoms' => [2, 3], // Example fandom IDs
            'relations' => [50, 51], // Example relation IDs
            'characters' => [99, 100], // Example character IDs
            'tags' => [1, 2], // Example tag IDs
            'links' => [
                'https://example4.com',
                'https://example4.org',
            ],
        ]);

        // Send a PATCH request to soft delete the fanfiction
        $response = $this->patch('/fanfiction', ['id' => $fanfiction['id'], 'deleted' => true]);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Fanfiction deleted', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot soft delete an already deleted fanfiction.
     */
    #[Test]
    public function it_cannot_soft_delete_a_deleted_fanfiction(): void
    {
        // Create a new fanfiction for testing
        $fanfiction = $this->createFanfiction([
            'name' => 'SoftNoDelete',
            'author_id' => 1,
            'rating_id' => 1,
            'language_id' => 1,
            'description' => 'A new fanfiction description.',
            'fandoms' => [2, 3], // Example fandom IDs
            'relations' => [50, 51], // Example relation IDs
            'characters' => [99, 100], // Example character IDs
            'tags' => [1, 2], // Example tag IDs
            'links' => [
                'https://example5.com',
                'https://example5.org',
            ],
        ]);

        // Send a PATCH request to soft delete the fanfiction
        $this->patch('/fanfiction', ['id' => $fanfiction['id'], 'deleted' => true]);

        // Attempt to soft delete the already deleted fanfiction
        $response = $this->patch('/fanfiction', ['id' => $fanfiction['id'], 'deleted' => true]);

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
     * Test that the API can restore a soft-deleted fanfiction.
     */
    #[Test]
    public function it_can_restore_a_soft_deleted_fanfiction(): void
    {
        $fanfiction = $this->createFanfiction([
            'name' => 'Restore',
            'author_id' => 1,
            'rating_id' => 1,
            'language_id' => 1,
            'description' => 'A new fanfiction description.',
            'fandoms' => [2, 3], // Example fandom IDs
            'relations' => [50, 51], // Example relation IDs
            'characters' => [99, 100], // Example character IDs
            'tags' => [1, 2], // Example tag IDs
            'links' => [
                'https://example6.com',
                'https://example6.org',
            ],
        ]);

        $this->patch('/fanfiction', ['id' => $fanfiction['id'], 'deleted' => true]);
        $response = $this->patch('/fanfiction', ['id' => $fanfiction['id'], 'deleted' => false]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Fanfiction restored', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot restore a fanfiction that is not deleted.
     */
    #[Test]
    public function it_cannot_restore_a_non_deleted_fanfiction(): void
    {
        // Create a new fanfiction for testing
        $fanfiction = $this->createFanfiction([
            'name' => 'NotRestored',
            'author_id' => 1,
            'rating_id' => 1,
            'language_id' => 1,
            'description' => 'A new fanfiction description.',
            'fandoms' => [2, 3], // Example fandom IDs
            'relations' => [50, 51], // Example relation IDs
            'characters' => [99, 100], // Example character IDs
            'tags' => [1, 2], // Example tag IDs
            'links' => [
                'https://example7.com',
                'https://example7.org',
            ],
        ]);

        // Attempt to restore the fanfiction without deleting it first
        $response = $this->patch('/fanfiction', ['id' => $fanfiction['id'], 'deleted' => false]);

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
     * Test that the API can permanently remove a soft-deleted fanfiction.
     */
    #[Test]
    public function it_can_remove_a_fanfiction_permanently(): void
    {
        $fanfiction = $this->createFanfiction([
            'name' => 'ToRemove',
            'author_id' => 1,
            'rating_id' => 1,
            'language_id' => 1,
            'description' => 'A new fanfiction description.',
            'fandoms' => [2, 3], // Example fandom IDs
            'relations' => [50, 51], // Example relation IDs
            'characters' => [99, 100], // Example character IDs
            'tags' => [1, 2], // Example tag IDs
            'links' => [
                'https://example8.com',
                'https://example8.org',
            ],
        ]);

        $this->patch('/fanfiction', ['id' => $fanfiction['id'], 'deleted' => true]);
        $response = $this->delete('/fanfiction', ['id' => $fanfiction['id']]);
        $this->assertEquals(204, $response['code'], 'Response status should be 204 OK');
    }

    /**
     * Test that the API cannot permanently remove a fanfiction that is not soft-deleted.
     */
    #[Test]
    public function it_cannot_remove_a_not_deleted_fanfiction_permanently(): void
    {
        // Create a new fanfiction for testing
        $fanfiction = $this->createFanfiction([
            'name' => 'ToNotRemove',
            'author_id' => 1,
            'rating_id' => 1,
            'language_id' => 1,
            'description' => 'A new fanfiction description.',
            'fandoms' => [2, 3], // Example fandom IDs
            'relations' => [50, 51], // Example relation IDs
            'characters' => [99, 100], // Example character IDs
            'tags' => [1, 2], // Example tag IDs
            'links' => [
                'https://example9.com',
                'https://example9.org',
            ],
        ]);

        // Attempt to permanently delete the fanfiction without soft deleting it first
        $response = $this->delete('/fanfiction', ['id' => $fanfiction['id']]);

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
     * Helper method to create a fanfiction using the API.
     *
     * @param array $data The data for the new fanfiction.
     * @return array The created fanfiction's data.
     */
    private function createFanfiction(array $data): array
    {
        $response = $this->post('/fanfiction', $data);
        if ($response['code'] !== 201) {
            json_decode($response['body']);
            if (json_last_error() !== JSON_ERROR_NONE) {
                Connection::dd($response['body']);
            }
            throw new FfbEndpointException(json_decode($response['body'])->message);
        }
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        return json_decode($response['body'], true);
    }
}
