<?php

use PHPUnit\Framework\Attributes\Test;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Fandom::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class FandomsTest extends ApiTestCase
{
    /**
     * Test that the API can list all fandoms.
     */
    #[Test]
    public function it_can_list_fandoms(): void
    {
        // Send a GET request to fetch all fandoms
        $response = $this->get('/fandoms');

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Iterate through each fandom and validate its properties
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
     * Test that the API can filter fandoms by name.
     */
    #[Test]
    public function it_can_filter_fandoms_by_name(): void
    {
        // Send a GET request with a filter parameter to search fandoms by name
        $response = $this->get('/fandoms', ['search_name' => 'Star%']);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Assert that at least one fandom is returned
        $this->assertGreaterThan(0, count($dataArray), 'Response should contain at least one fandom');

        // Iterate through each fandom and validate its name starts with "Star"
        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertStringStartsWith('Star', $item->name, 'Fandom name should start with "Star"');
        }
    }

    /**
     * Test that the API can create a new fandom.
     */
    #[Test]
    public function it_can_create_a_fandom(): void
    {
        // Prepare the data for the new fandom
        $data = ['name' => 'New Fandom'];

        // Send a POST request to create the fandom
        $response = $this->post('/fandom', $data);

        // Assert that the response status is 201 Created
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the created fandom
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
     * Test that the API can retrieve a fandom by ID.
     */
    #[Test]
    public function it_can_get_a_fandom_by_id(): void
    {
        // Create a new fandom for testing
        $fandom = $this->createFandom(['name' => 'Test Fandom']);

        // Send a GET request to fetch the fandom by ID
        $response = $this->get('/fandom', ['id' => $fandom['id']]);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the fetched fandom
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($fandom['id'], $dataArray->id, 'Response id should match the created fandom id');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($fandom['name'], $dataArray->name, 'Response name should match the created fandom name');
    }

    /**
     * Test that the API can update a fandom's details.
     */
    #[Test]
    public function it_can_update_a_fandom(): void
    {
        // Create a new fandom for testing
        $fandom = $this->createFandom(['name' => 'Old Name']);

        // Prepare the updated data for the fandom
        $updated = ['id' => $fandom['id'], 'name' => 'NX'];

        // Send a PUT request to update the fandom
        $response = $this->put('/fandom', $updated);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Fandom updated', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API can soft delete a fandom.
     */
    #[Test]
    public function it_can_soft_delete_a_fandom(): void
    {
        // Create a new fandom for testing
        $fandom = $this->createFandom(['name' => 'SoftDelete']);

        // Send a PATCH request to soft delete the fandom
        $response = $this->patch('/fandom', ['id' => $fandom['id'], 'deleted' => true]);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Fandom deleted', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot soft delete an already deleted fandom.
     */
    #[Test]
    public function it_cannot_soft_delete_a_deleted_fandom(): void
    {
        // Create a new fandom for testing
        $fandom = $this->createFandom(['name' => 'SoftNoDelete']);

        // Send a PATCH request to soft delete the fandom
        $this->patch('/fandom', ['id' => $fandom['id'], 'deleted' => true]);

        // Attempt to soft delete the already deleted fandom
        $response = $this->patch('/fandom', ['id' => $fandom['id'], 'deleted' => true]);

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
     * Test that the API can restore a soft-deleted fandom.
     */
    #[Test]
    public function it_can_restore_a_soft_deleted_fandom(): void
    {
        $fandom = $this->createFandom(['name' => 'Restore']);

        $this->patch('/fandom', ['id' => $fandom['id'], 'deleted' => true]);
        $response = $this->patch('/fandom', ['id' => $fandom['id'], 'deleted' => false]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Fandom restored', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot restore a fandom that is not deleted.
     */
    #[Test]
    public function it_cannot_restore_a_non_deleted_fandom(): void
    {
        // Create a new fandom for testing
        $fandom = $this->createFandom(['name' => 'NotRestored']);

        // Attempt to restore the fandom without deleting it first
        $response = $this->patch('/fandom', ['id' => $fandom['id'], 'deleted' => false]);

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
     * Test that the API can permanently remove a soft-deleted fandom.
     */
    #[Test]
    public function it_can_remove_a_fandom_permanently(): void
    {
        $fandom = $this->createFandom(['name' => 'ToRemove']);

        $this->patch('/fandom', ['id' => $fandom['id'], 'deleted' => true]);
        $response = $this->delete('/fandom', ['id' => $fandom['id']]);
        $this->assertEquals(204, $response['code'], 'Response status should be 204 OK');
    }

    /**
     * Test that the API cannot permanently remove a fandom that is not soft-deleted.
     */
    #[Test]
    public function it_cannot_remove_a_not_deleted_fandom_permanently(): void
    {
        // Create a new fandom for testing
        $fandom = $this->createFandom(['name' => 'ToRemove']);

        // Attempt to permanently delete the fandom without soft deleting it first
        $response = $this->delete('/fandom', ['id' => $fandom['id']]);

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
     * Helper method to create a fandom using the API.
     *
     * @param array $data The data for the new fandom.
     * @return array The created fandom's data.
     */
    private function createFandom(array $data): array
    {
        $response = $this->post('/fandom', $data);
        if($response['code'] !== 201) {
            throw new FfbEndpointException(json_decode($response['body'])->message);
        }
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        return json_decode($response['body'], true);
    }
}
