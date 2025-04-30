<?php

use PHPUnit\Framework\Attributes\Test;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Character::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class CharactersTest extends ApiTestCase
{
    /**
     * Test that the API can list all characters.
     */
    #[Test]
    public function it_can_list_characters(): void
    {
        $response = $this->get('/characters');
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertObjectHasProperty('id', $item, 'Item should have an id property');
            $this->assertNotEmpty($item->id, 'Item id should not be empty');
            $this->assertObjectHasProperty('fandom_id', $item, 'Item should have a fandom_id property');
            $this->assertNotEmpty($item->fandom_id, 'Item fandom_id should not be empty');
        }
    }

    /**
     * Test that the API can filter characters by description.
     */
    #[Test]
    public function it_can_filter_characters_by_description(): void
    {
        $response = $this->get('/characters', ['search_name' => '%Hina%']);
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');
        $this->assertGreaterThan(0, count($dataArray), 'Response should contain at least one character');

        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertStringContainsString(strtolower('Hina'), strtolower($item->name), 'Character name should contain "hina"');
        }
    }

    /**
     * Test that the API can create a new character.
     */
    #[Test]
    public function it_can_create_a_character(): void
    {
        $data = ['name' => 'new character', 'fandom_id' => 1];
        $response = $this->post('/character', $data);

        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertNotEmpty($dataArray->id, 'Response id should not be empty');
        $this->assertObjectHasProperty('fandom_id', $dataArray, 'Response should have a fandom_id property');
        $this->assertEquals($data['fandom_id'], $dataArray->fandom_id, 'Response fandom_id should match the input fandom_id');
    }

    /**
     * Test that the API can retrieve a character by ID.
     */
    #[Test]
    public function it_can_get_a_character_by_id(): void
    {
        $character = $this->createCharacter(['name' => 'test character', 'fandom_id' => 1]);
        $response = $this->get('/character', ['id' => $character['id']]);
        $dataArray = json_decode($response);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($character['id'], $dataArray->id, 'Response id should match the created character id');
        $this->assertObjectHasProperty('fandom_id', $dataArray, 'Response should have a fandom_id property');
        $this->assertEquals($character['fandom_id'], $dataArray->fandom_id, 'Response fandom_id should match the input fandom_id');
    }

    /**
     * Test that the API can update a character's details.
     */
    #[Test]
    public function it_can_update_a_character(): void
    {
        $character = $this->createCharacter(['name' => 'old character', 'fandom_id' => 1]);
        $updated = ['id' => $character['id'], 'fandom_id' => '2'];

        $response = $this->put('/character', $updated);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Character updated', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API can soft delete a character.
     */
    #[Test]
    public function it_can_soft_delete_a_character(): void
    {
        $character = $this->createCharacter(['name' => 'soft delete', 'fandom_id' => 1]);
        $response = $this->patch('/character', ['id' => $character['id'], 'deleted' => true]);

        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Character deleted', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot soft delete an already deleted character.
     */
    #[Test]
    public function it_cannot_soft_delete_a_deleted_character(): void
    {
        // Create a new character for testing
        $character = $this->createCharacter(['name' => 'SoftNoDelete', 'fandom_id' => 1]);

        // Send a PATCH request to soft delete the character
        $this->patch('/character', ['id' => $character['id'], 'deleted' => true]);

        // Attempt to soft delete the already deleted character
        $response = $this->patch('/character', ['id' => $character['id'], 'deleted' => true]);

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
     * Test that the API can restore a soft-deleted character.
     */
    #[Test]
    public function it_can_restore_a_soft_deleted_character(): void
    {
        $character = $this->createCharacter(['name' => 'Restore', 'fandom_id' => 1]);

        $this->patch('/character', ['id' => $character['id'], 'deleted' => true]);
        $response = $this->patch('/character', ['id' => $character['id'], 'deleted' => false]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Character restored', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot restore a character that is not deleted.
     */
    #[Test]
    public function it_cannot_restore_a_non_deleted_character(): void
    {
        // Create a new character for testing
        $character = $this->createCharacter(['name' => 'NotRestored', 'fandom_id' => 1]);

        // Attempt to restore the character without deleting it first
        $response = $this->patch('/character', ['id' => $character['id'], 'deleted' => false]);

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
     * Test that the API can permanently remove a soft-deleted character.
     */
    #[Test]
    public function it_can_remove_a_character_permanently(): void
    {
        $character = $this->createCharacter(['name' => 'ToRemove', 'fandom_id' => 1]);

        $this->patch('/character', ['id' => $character['id'], 'deleted' => true]);
        $response = $this->delete('/character', ['id' => $character['id']]);
        $this->assertEquals(204, $response['code'], 'Response status should be 204 OK');
    }

    /**
     * Test that the API cannot permanently remove a character that is not soft-deleted.
     */
    #[Test]
    public function it_cannot_remove_a_not_deleted_character_permanently(): void
    {
        // Create a new character for testing
        $character = $this->createCharacter(['name' => 'ToNotRemove', 'fandom_id' => 1]);

        // Attempt to permanently delete the character without soft deleting it first
        $response = $this->delete('/character', ['id' => $character['id']]);

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
     * Helper method to create a character using the API.
     *
     * @param array $data The data for the new character.
     * @return array The created character's data.
     */
    private function createCharacter(array $data): array
    {
        $response = $this->post('/character', $data);
        if($response['code'] !== 201) {
            throw new FfbEndpointException(json_decode($response['body'])->message);
        }
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        return json_decode($response['body'], true);
    }
}
