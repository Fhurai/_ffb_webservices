<?php

use PHPUnit\Framework\Attributes\Test;

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Author::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class AuthorsTest extends ApiTestCase
{
    #[Test]
    public function it_can_list_authors(): void
    {
        $response = $this->get('/authors');

        $dataArray = json_decode($response);
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        foreach($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertObjectHasProperty('id', $item, 'Item should have an id property');
            $this->assertNotEmpty($item->id, 'Item id should not be empty');
            $this->assertObjectHasProperty('name', $item, 'Item should have a name property');
            if($item->id !== 1) {
                $this->assertNotEmpty($item->name, 'Item name should not be empty');
            }
            $this->assertObjectHasProperty('creation_date', $item, 'Item should have a creation_date property');
            $this->assertNotEmpty($item->creation_date, 'Item creation_date should not be empty');
            $this->assertObjectHasProperty('update_date', $item, 'Item should have an update_date property');
            $this->assertNotEmpty($item->update_date, 'Item update_date should not be empty');
            $this->assertObjectHasProperty('delete_date', $item, 'Item should have a delete_date property');
        }
    }

    #[Test]
    public function it_can_filter_authors_by_name(): void
    {
        $response = $this->get('/authors', ['search_name' => 'Dar%']);

        $dataArray = json_decode($response);
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        $this->assertCount(5, $dataArray, 'Response should contain exactly five authors');
        $this->assertNotEquals(0, $dataArray[0]->id, 'First author id should not be zero');
        $this->assertNotEmpty($dataArray[0]->name, 'First author name should not be empty');

        foreach($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertEquals('Dar', substr($item->name, 0, 3), 'Author name should start with "Dar"');
        }
    }

    #[Test]
    public function it_can_create_an_author(): void
    {
        $data = ['name' => 'Fhurai'];
        $response = $this->post('/author', $data);
        
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        $dataArray = json_decode($response['body']);
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertNotEmpty($dataArray->id, 'Response id should not be empty');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($data['name'], $dataArray->name, 'Response name should match the input name');
        $this->assertObjectHasProperty('creation_date', $dataArray, 'Response should have a creation_date property');
        $this->assertNotEmpty($dataArray->creation_date, 'Response creation_date should not be empty');
        $this->assertObjectHasProperty('update_date', $dataArray, 'Response should have an update_date property');
        $this->assertNotEmpty($dataArray->update_date, 'Response update_date should not be empty');
        $this->assertObjectHasProperty('delete_date', $dataArray, 'Response should have an delete_date property');
        $this->assertEmpty($dataArray->delete_date, 'Response delete_date should be empty');
    }

    #[Test]
    public function it_can_get_an_author_by_id(): void
    {
        $author = $this->createAuthor(['name' => 'Test']);
        $response = $this->get('/author', ['id' => $author['id']]);
        
        $dataArray = json_decode($response);
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($author['id'], $dataArray->id, 'Response id should match the created author id');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($author['name'], $dataArray->name, 'Response name should match the created author name');
    }

    #[Test]
    public function it_can_update_an_author(): void
    {
        $author = $this->createAuthor(['name' => 'Old Name']);
        $updated = ['id' => $author['id'], 'name' => 'NX'];

        $response = $this->put('/author', $updated);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);
        
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Author updated', $dataArray->message, 'Response message should indicate success');
    }

    #[Test]
    public function it_can_soft_delete_an_author(): void
    {
        $author = $this->createAuthor(['name' => 'SoftDelete']);

        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => true]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);
        
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Author deleted', $dataArray->message, 'Response message should indicate success');

        // Optional: Fetch and check deleted flag
        $getResponse = $this->get('/author', ['id' => $author['id']]);
        $getDataArray = json_decode($getResponse);
        $this->assertNotEmpty($getDataArray, 'Response should not be empty');
        $this->assertIsObject($getDataArray, 'Response should be an object');
        $this->assertObjectHasProperty('delete_date', $getDataArray, 'Response should have a delete_date property');
        $this->assertNotEmpty($getDataArray->delete_date, 'Response delete_date should not be empty');
    }

    #[Test]
    public function it_cannot_soft_delete_a_deleted_author(): void
    {
        $author = $this->createAuthor(['name' => 'SoftNoDelete']);

        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => true]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);
        
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Author deleted', $dataArray->message, 'Response message should indicate success');

        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => true]);
        $this->assertEquals(500, $response['code'], 'Response status should be 500 Internal Server Error');
        $dataArray = json_decode($response['body']);
        
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Server error: Entity is already deleted!', $dataArray->message, 'Response message should indicate success');
    }

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

    #[Test]
    public function it_cannot_restore_a_non_deleted_author(): void
    {
        $author = $this->createAuthor(['name' => 'NotRestored']);

        $response = $this->patch('/author', ['id' => $author['id'], 'deleted' => false]);
        $this->assertEquals(500, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Server error: Entity is already restored!', $dataArray->message, 'Response message should indicate success');
    }

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

    #[Test]
    public function it_cannot_remove_a_not_deleted_author_permanently(): void
    {
        $author = $this->createAuthor(['name' => 'ToRemove']);

        $response = $this->delete('/author', ['id' => $author['id']]);
        $this->assertEquals(500, $response['code'], 'Response status should be 204 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Server error: Entity is not deleted!', $dataArray->message, 'Response message should indicate success');
    }

    private function createAuthor(array $data): array
    {
        $response = $this->post('/author', $data);
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        return json_decode($response['body'], true);
    }
}
