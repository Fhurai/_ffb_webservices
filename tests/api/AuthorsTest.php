<?php

use PHPUnit\Framework\Attributes\Test;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Author::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class AuthorsTest extends ApiTestCase
{
    /**
     * Test that the API can list all authors.
     */
    #[Test]
    public function it_can_list_authors(): void
    {
        // Send a GET request to fetch all authors
        $response = $this->get('/authors');

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Iterate through each author and validate its properties
        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertObjectHasProperty('id', $item, 'Item should have an id property');
            $this->assertNotEmpty($item->id, 'Item id should not be empty');
            $this->assertObjectHasProperty('name', $item, 'Item should have a name property');
            if ($item->id !== 1) {
                $this->assertNotEmpty($item->name, 'Item name should not be empty');
            }
            $this->assertObjectHasProperty('creation_date', $item, 'Item should have a creation_date property');
            $this->assertNotEmpty($item->creation_date, 'Item creation_date should not be empty');
            $this->assertObjectHasProperty('update_date', $item, 'Item should have an update_date property');
            $this->assertNotEmpty($item->update_date, 'Item update_date should not be empty');
            $this->assertObjectHasProperty('delete_date', $item, 'Item should have a delete_date property');
        }
    }

    /**
     * Test that the API can filter authors by name.
     */
    #[Test]
    public function it_can_filter_authors_by_name(): void
    {
        // Send a GET request with a filter parameter to search authors by name
        $response = $this->get('/authors', ['search_name' => 'Dar%']);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Assert that exactly 5 authors are returned
        $this->assertCount(5, $dataArray, 'Response should contain exactly five authors');

        // Validate the first author's properties
        $this->assertNotEquals(0, $dataArray[0]->id, 'First author id should not be zero');
        $this->assertNotEmpty($dataArray[0]->name, 'First author name should not be empty');

        // Iterate through each author and validate its name starts with "Dar"
        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertEquals('Dar', substr($item->name, 0, 3), 'Author name should start with "Dar"');
        }
    }

    /**
     * Test that the API can create a new author.
     */
    #[Test]
    public function it_can_create_an_author(): void
    {
        // Prepare the data for the new author
        $data = ['name' => 'Fhurai'];

        // Send a POST request to create the author
        $response = $this->post('/author', $data);

        // Assert that the response status is 201 Created
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the created author
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertNotEmpty($dataArray->id, 'Response id should not be empty');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($data['name'], $dataArray->name, 'Response name should match the input name');
        $this->assertObjectHasProperty('creation_date', $dataArray, 'Response should have a creation_date property');
        $this->assertNotEmpty($dataArray->creation_date, 'Response creation_date should not be empty');
        $this->assertObjectHasProperty('update_date', $dataArray, 'Response should have an update_date property');
        $this->assertNotEmpty($dataArray->update_date, 'Response update_date should not be empty');
        $this->assertObjectHasProperty('delete_date', $dataArray, 'Response should have a delete_date property');
        $this->assertEmpty($dataArray->delete_date, 'Response delete_date should be empty');
    }

    /**
     * Test that the API can retrieve an author by ID.
     */
    #[Test]
    public function it_can_get_an_author_by_id(): void
    {
        // Create a new author for testing
        $author = $this->createAuthor(['name' => 'Test']);

        // Send a GET request to fetch the author by ID
        $response = $this->get('/author', ['id' => $author['id']]);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the fetched author
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($author['id'], $dataArray->id, 'Response id should match the created author id');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($author['name'], $dataArray->name, 'Response name should match the created author name');
    }

    /**
     * Test that the API can update an author's details.
     */
    #[Test]
    public function it_can_update_an_author(): void
    {
        // Create a new author for testing
        $author = $this->createAuthor(['name' => 'Old Name']);

        // Prepare the updated data for the author
        $updated = ['id' => $author['id'], 'name' => 'NX'];

        // Send a PUT request to update the author
        $response = $this->put('/author', $updated);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Author updated', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API can soft delete an author.
     */
    #[Test]
    public function it_can_soft_delete_an_author(): void
    {
        // Create a new author for testing
        $author = $this->createAuthor(['name' => 'SoftDelete']);

        // Send a PATCH request to soft delete the author
        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => true]);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Author deleted', $dataArray->message, 'Response message should indicate success');

        // Optional: Fetch the author and check the delete_date property
        $getResponse = $this->get('/author', ['id' => $author['id']]);
        $getDataArray = json_decode($getResponse);
        $this->assertNotEmpty($getDataArray, 'Response should not be empty');
        $this->assertIsObject($getDataArray, 'Response should be an object');
        $this->assertObjectHasProperty('delete_date', $getDataArray, 'Response should have a delete_date property');
        $this->assertNotEmpty($getDataArray->delete_date, 'Response delete_date should not be empty');
    }

    /**
     * Test that the API cannot soft delete an already deleted author.
     */
    #[Test]
    public function it_cannot_soft_delete_a_deleted_author(): void
    {
        // Create a new author for testing
        $author = $this->createAuthor(['name' => 'SoftNoDelete']);

        // Send a PATCH request to soft delete the author
        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => true]);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Author deleted', $dataArray->message, 'Response message should indicate success');

        // Attempt to soft delete the already deleted author
        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => true]);

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
     * Test that the API can restore a soft-deleted author.
     */
    #[Test]
    public function it_can_restore_a_soft_deleted_author(): void
    {
        $author = $this->createAuthor(['name' => 'Restore']);

        $this->patch('/author', ['id' => $author['id'], 'deleted' => true]);
        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => false]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Author restored', $dataArray->message, 'Response message should indicate success');

        // Optional: Fetch and check deleted flag
        $getResponse = $this->get('/author', ['id' => $author['id']]);
        $getDataArray = json_decode($getResponse);
        $this->assertNotEmpty($getDataArray, 'Response should not be empty');
        $this->assertIsObject($getDataArray, 'Response should be an object');
        $this->assertObjectHasProperty('delete_date', $getDataArray, 'Response should have a delete_date property');
        $this->assertEmpty($getDataArray->delete_date, 'Response delete_date should not be empty');
    }

    /**
     * Test that the API cannot restore an author that is not deleted.
     */
    #[Test]
    public function it_cannot_restore_a_non_deleted_author(): void
    {
        // Create a new author for testing
        $author = $this->createAuthor(['name' => 'NotRestored']);

        // Attempt to restore the author without deleting it first
        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => false]);

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
     * Test that the API can permanently remove a soft-deleted author.
     */
    #[Test]
    public function it_can_remove_an_author_permanently(): void
    {
        $author = $this->createAuthor(['name' => 'ToRemove']);

        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => true]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Author deleted', $dataArray->message, 'Response message should indicate success');

        $response = $this->delete('/author', ['id' => $author['id']]);
        $this->assertEquals(204, $response['code'], 'Response status should be 204 OK');
        $dataArray = json_decode($response['body']);

        $this->assertEmpty($dataArray, 'Response should be empty');

        $response = $this->get('/author', ['id' => $author['id']]);
        $dataArray = json_decode($response);
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Author not found', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot permanently remove an author that is not soft-deleted.
     */
    #[Test]
    public function it_cannot_remove_a_not_deleted_author_permanently(): void
    {
        // Create a new author for testing
        $author = $this->createAuthor(['name' => 'ToNotRemove']);

        // Attempt to permanently delete the author without soft deleting it first
        $response = $this->delete('/author', ['id' => $author['id']]);

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
     * Helper method to create an author using the API.
     *
     * @param array $data The data for the new author.
     * @return array The created author's data.
     */
    private function createAuthor(array $data): array
    {
        $response = $this->post('/author', $data);
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
