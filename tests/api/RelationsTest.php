<?php

use PHPUnit\Framework\Attributes\Test;
use function PHPUnit\Framework\returnArgument;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Relation::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class RelationsTest extends ApiTestCase
{
    /**
     * Test that the API can list all relations.
     */
    #[Test]
    public function it_can_list_relations(): void
    {
        $response = $this->get('/relations');
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertObjectHasProperty('id', $item, 'Item should have an id property');
            $this->assertNotEmpty($item->id, 'Item id should not be empty');
            $this->assertObjectHasProperty('characters', $item, 'Item should have a characters property');
            if(empty($item->characters)){
                Connection::debug($item);
            }
            $this->assertNotEmpty($item->characters, 'Item characters should not be empty');
        }
    }

    /**
     * Test that the API can filter relations by description.
     */
    #[Test]
    public function it_can_filter_relations_by_description(): void
    {
        $response = $this->get('/relations', ['search_name' => '%Hina%']);
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');
        $this->assertGreaterThan(0, count($dataArray), 'Response should contain at least one relation');

        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertStringContainsString(strtolower('Hina'), strtolower($item->name), 'Relation name should contain "hina"');
        }
    }

    /**
     * Test that the API can create a new relation.
     */
    #[Test]
    public function it_can_create_a_relation(): void
    {
        $data = ['name' => 'new relation', 'characters' => [6, 10, 15]];
        $response = $this->post('/relation', $data);

        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertNotEmpty($dataArray->id, 'Response id should not be empty');
        $this->assertObjectHasProperty('characters', $dataArray, 'Response should have a characters property');
        $name = '';
        foreach($dataArray->characters as $key => $character) {
            $this->assertObjectHasProperty('id', $character, 'Character should have an id property');
            $this->assertNotEmpty($character->id, 'Character id should not be empty');
            $this->assertContains($character->id, $data['characters'], 'Character id should be in the input characters array');
            $this->assertObjectHasProperty('name', $character, 'Character should have a name property');
            $this->assertNotEmpty($character->name, 'Character name should not be empty');
            $this->assertObjectHasProperty('fandom_id', $character, 'Character should have a fandom_id property');
            $this->assertNotEmpty($character->fandom_id, 'Character fandom_id should not be empty');

            $name .= ($key !== 0 ? ' / ' : '') . $character->name;
        }
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($name, $dataArray->name, 'Response name should match the input characters names');
    }

    /**
     * Test that the API can retrieve a relation by ID.
     */
    #[Test]
    public function it_can_get_a_relation_by_id(): void
    {
        $relation = $this->createRelation(['name' => 'test relation', 'characters' => [7, 10, 15]]);
        $response = $this->get('/relation', ['id' => $relation['id']]);
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($relation['id'], $dataArray->id, 'Response id should match the created relation id');
        $this->assertObjectHasProperty('characters', $dataArray, 'Response should have a characters property');
        $name = '';
        $idArray = array_map(function($relation){
            return $relation['id'];
        }, $relation['characters']);
        foreach($dataArray->characters as $key => $character) {
            $this->assertObjectHasProperty('id', $character, 'Character should have an id property');
            $this->assertNotEmpty($character->id, 'Character id should not be empty');
            $this->assertContains($character->id, $idArray, 'Character id should be in the input characters array');
            $this->assertObjectHasProperty('name', $character, 'Character should have a name property');
            $this->assertNotEmpty($character->name, 'Character name should not be empty');
            $this->assertObjectHasProperty('fandom_id', $character, 'Character should have a fandom_id property');
            $this->assertNotEmpty($character->fandom_id, 'Character fandom_id should not be empty');

            $name .= ($key !== 0 ? ' / ' : '') . $character->name;
        }
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($name, $dataArray->name, 'Response name should match the input characters names');
    }

    /**
     * Test that the API can update a relation's details.
     */
    #[Test]
    public function it_can_update_a_relation(): void
    {
        $relation = $this->createRelation(['name' => 'old relation', 'characters' => [8, 10, 15]]);
        $updated = ['id' => $relation['id'], 'characters' => '2'];

        $response = $this->put('/relation', $updated);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Relation updated', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API can soft delete a relation.
     */
    #[Test]
    public function it_can_soft_delete_a_relation(): void
    {
        $relation = $this->createRelation(['name' => 'soft delete', 'characters' => [9, 10, 15]]);
        $response = $this->patch('/relation', ['id' => $relation['id'], 'deleted' => true]);

        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Relation deleted', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot soft delete an already deleted relation.
     */
    #[Test]
    public function it_cannot_soft_delete_a_deleted_relation(): void
    {
        // Create a new relation for testing
        $relation = $this->createRelation(['name' => 'SoftNoDelete', 'characters' => [11, 10, 15]]);

        // Send a PATCH request to soft delete the relation
        $this->patch('/relation', ['id' => $relation['id'], 'deleted' => true]);

        // Attempt to soft delete the already deleted relation
        $response = $this->patch('/relation', ['id' => $relation['id'], 'deleted' => true]);

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
     * Test that the API can restore a soft-deleted relation.
     */
    #[Test]
    public function it_can_restore_a_soft_deleted_relation(): void
    {
        $relation = $this->createRelation(['name' => 'Restore', 'characters' => [12, 10, 15]]);

        $this->patch('/relation', ['id' => $relation['id'], 'deleted' => true]);
        $response = $this->patch('/relation', ['id' => $relation['id'], 'deleted' => false]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Relation restored', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot restore a relation that is not deleted.
     */
    #[Test]
    public function it_cannot_restore_a_non_deleted_relation(): void
    {
        // Create a new relation for testing
        $relation = $this->createRelation(['name' => 'NotRestored', 'characters' => [13, 10, 15]]);

        // Attempt to restore the relation without deleting it first
        $response = $this->patch('/relation', ['id' => $relation['id'], 'deleted' => false]);

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
     * Test that the API can permanently remove a soft-deleted relation.
     */
    #[Test]
    public function it_can_remove_a_relation_permanently(): void
    {
        $relation = $this->createRelation(['name' => 'ToRemove', 'characters' => [14, 10, 15]]);

        $this->patch('/relation', ['id' => $relation['id'], 'deleted' => true]);
        $response = $this->delete('/relation', ['id' => $relation['id']]);
        $this->assertEquals(204, $response['code'], 'Response status should be 204 OK');
    }

    /**
     * Test that the API cannot permanently remove a relation that is not soft-deleted.
     */
    #[Test]
    public function it_cannot_remove_a_not_deleted_relation_permanently(): void
    {
        // Create a new relation for testing
        $relation = $this->createRelation(['name' => 'ToNotRemove', 'characters' => [16, 10, 15]]);

        // Attempt to permanently delete the relation without soft deleting it first
        $response = $this->delete('/relation', ['id' => $relation['id']]);

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
     * Helper method to create a relation using the API.
     *
     * @param array $data The data for the new relation.
     * @return array The created relation's data.
     */
    private function createRelation(array $data): array
    {
        $response = $this->post('/relation', $data);
        if($response['code'] !== 201) {
            throw new FfbEndpointException(json_decode($response['body'])->message);
        }
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        return json_decode($response['body'], true);
    }
}
