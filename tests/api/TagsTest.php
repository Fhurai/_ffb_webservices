<?php

use PHPUnit\Framework\Attributes\Test;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Tag::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class TagsTest extends ApiTestCase
{
    /**
     * Test that the API can list all tags.
     */
    #[Test]
    public function it_can_list_tags(): void
    {
        $response = $this->get('/tags');
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertObjectHasProperty('id', $item, 'Item should have an id property');
            $this->assertNotEmpty($item->id, 'Item id should not be empty');
            $this->assertObjectHasProperty('description', $item, 'Item should have a description property');
            $this->assertNotEmpty($item->description, 'Item description should not be empty');
            $this->assertObjectHasProperty('type_id', $item, 'Item should have a type_id property');
            $this->assertNotEmpty($item->type_id, 'Item type_id should not be empty');
        }
    }

    /**
     * Test that the API can filter tags by description.
     */
    #[Test]
    public function it_can_filter_tags_by_description(): void
    {
        $response = $this->get('/tags', ['search_description' => '%dragon%']);
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');
        $this->assertGreaterThan(0, count($dataArray), 'Response should contain at least one tag');

        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertStringContainsString('dragon', $item->description, 'Tag description should contain "dragon"');
        }
    }

    /**
     * Test that the API can create a new tag.
     */
    #[Test]
    public function it_can_create_a_tag(): void
    {
        $data = ['name' => 'new tag', 'description' => 'New Tag', 'type_id' => 1];
        $response = $this->post('/tag', $data);

        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertNotEmpty($dataArray->id, 'Response id should not be empty');
        $this->assertObjectHasProperty('description', $dataArray, 'Response should have a description property');
        $this->assertEquals($data['description'], $dataArray->description, 'Response description should match the input description');
        $this->assertObjectHasProperty('type_id', $dataArray, 'Response should have a type_id property');
        $this->assertEquals($data['type_id'], $dataArray->type_id, 'Response type_id should match the input type_id');
    }

    /**
     * Test that the API can retrieve a tag by ID.
     */
    #[Test]
    public function it_can_get_a_tag_by_id(): void
    {
        $tag = $this->createTag(['name' => 'test tag', 'description' => 'Test Tag', 'type_id' => 1]);
        $response = $this->get('/tag', ['id' => $tag['id']]);
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($tag['id'], $dataArray->id, 'Response id should match the created tag id');
        $this->assertObjectHasProperty('description', $dataArray, 'Response should have a description property');
        $this->assertEquals($tag['description'], $dataArray->description, 'Response description should match the created tag description');
    }

    /**
     * Test that the API can update a tag's details.
     */
    #[Test]
    public function it_can_update_a_tag(): void
    {
        $tag = $this->createTag(['name' => 'old tag', 'description' => 'Old Description', 'type_id' => 1]);
        $updated = ['id' => $tag['id'], 'description' => 'Updated Description'];

        $response = $this->put('/tag', $updated);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Tag updated', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API can soft delete a tag.
     */
    #[Test]
    public function it_can_soft_delete_a_tag(): void
    {
        $tag = $this->createTag(['name' => 'soft delete', 'description' => 'SoftDelete', 'type_id' => 1]);
        $response = $this->patch('/tag', ['id' => $tag['id'], 'deleted' => true]);

        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Tag deleted', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot soft delete an already deleted tag.
     */
    #[Test]
    public function it_cannot_soft_delete_a_deleted_tag(): void
    {
        // Create a new tag for testing
        $tag = $this->createTag(['name' => 'SoftNoDelete', 'description' => 'ND', 'type_id' => 1]);

        // Send a PATCH request to soft delete the tag
        $this->patch('/tag', ['id' => $tag['id'], 'deleted' => true]);

        // Attempt to soft delete the already deleted tag
        $response = $this->patch('/tag', ['id' => $tag['id'], 'deleted' => true]);

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
     * Test that the API can restore a soft-deleted tag.
     */
    #[Test]
    public function it_can_restore_a_soft_deleted_tag(): void
    {
        $tag = $this->createTag(['name' => 'Restore', 'description' => 'RE', 'type_id' => 1]);

        $this->patch('/tag', ['id' => $tag['id'], 'deleted' => true]);
        $response = $this->patch('/tag', ['id' => $tag['id'], 'deleted' => false]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Tag restored', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot restore a tag that is not deleted.
     */
    #[Test]
    public function it_cannot_restore_a_non_deleted_tag(): void
    {
        // Create a new tag for testing
        $tag = $this->createTag(['name' => 'NotRestored', 'description' => 'NR', 'type_id' => 1]);

        // Attempt to restore the tag without deleting it first
        $response = $this->patch('/tag', ['id' => $tag['id'], 'deleted' => false]);

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
     * Test that the API can permanently remove a soft-deleted tag.
     */
    #[Test]
    public function it_can_remove_a_tag_permanently(): void
    {
        $tag = $this->createTag(['name' => 'ToRemove', 'description' => 'TR', 'type_id' => 1]);

        $this->patch('/tag', ['id' => $tag['id'], 'deleted' => true]);
        $response = $this->delete('/tag', ['id' => $tag['id']]);
        $this->assertEquals(204, $response['code'], 'Response status should be 204 OK');
    }

    /**
     * Test that the API cannot permanently remove a tag that is not soft-deleted.
     */
    #[Test]
    public function it_cannot_remove_a_not_deleted_tag_permanently(): void
    {
        // Create a new tag for testing
        $tag = $this->createTag(['name' => 'ToRemove', 'description' => 'NP', 'type_id' => 1]);

        // Attempt to permanently delete the tag without soft deleting it first
        $response = $this->delete('/tag', ['id' => $tag['id']]);

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
     * Helper method to create a tag using the API.
     *
     * @param array $data The data for the new tag.
     * @return array The created tag's data.
     */
    private function createTag(array $data): array
    {
        $response = $this->post('/tag', $data);
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
