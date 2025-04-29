<?php

use PHPUnit\Framework\Attributes\Test;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Language::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class LanguagesTest extends ApiTestCase
{
    /**
     * Test that the API can list all languages.
     */
    #[Test]
    public function it_can_list_languages(): void
    {
        // Send a GET request to fetch all languages
        $response = $this->get('/languages');

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Iterate through each language and validate its properties
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
     * Test that the API can filter languages by name.
     */
    #[Test]
    public function it_can_filter_languages_by_name(): void
    {
        // Send a GET request with a filter parameter to search languages by name
        $response = $this->get('/languages', ['search_name' => 'Eng%']);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Assert that at least one language is returned
        $this->assertGreaterThan(0, count($dataArray), 'Response should contain at least one language');

        // Iterate through each language and validate its name starts with "Eng"
        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertStringStartsWith('Eng', $item->name, 'Language name should start with "Eng"');
        }
    }

    /**
     * Test that the API can create a new language.
     */
    #[Test]
    public function it_can_create_a_language(): void
    {
        // Prepare the data for the new language
        $data = ['name' => 'New Language', 'abbreviation' => 'NL'];

        // Send a POST request to create the language
        $response = $this->post('/language', $data);

        // Assert that the response status is 201 Created
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the created language
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertNotEmpty($dataArray->id, 'Response id should not be empty');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($data['name'], $dataArray->name, 'Response name should match the input name');
        $this->assertObjectHasProperty('abbreviation', $dataArray, 'Response should have an abbreviation property');
        $this->assertEquals($data['abbreviation'], $dataArray->abbreviation, 'Response abbreviation should match the input abbreviation');
        $this->assertObjectHasProperty('creation_date', $dataArray, 'Response should have a creation_date property');
        $this->assertNotEmpty($dataArray->creation_date, 'Response creation_date should not be empty');
        $this->assertObjectHasProperty('update_date', $dataArray, 'Response should have an update_date property');
        $this->assertNotEmpty($dataArray->update_date, 'Response update_date should not be empty');
    }

    /**
     * Test that the API can retrieve a language by ID.
     */
    #[Test]
    public function it_can_get_a_language_by_id(): void
    {
        // Create a new language for testing
        $language = $this->createLanguage(['name' => 'Test Language', 'abbreviation' => 'NT']);

        // Send a GET request to fetch the language by ID
        $response = $this->get('/language', ['id' => $language['id']]);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the fetched language
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($language['id'], $dataArray->id, 'Response id should match the created language id');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($language['name'], $dataArray->name, 'Response name should match the created language name');
    }

     /**
     * Test that the API can update a language's details.
     */
    #[Test]
    public function it_can_update_a_language(): void
    {
        // Create a new language for testing
        $language = $this->createLanguage(['name' => 'Old Name', 'abbreviation' => 'ON']);

        // Prepare the updated data for the language
        $updated = ['id' => $language['id'], 'name' => 'NX'];

        // Send a PUT request to update the language
        $response = $this->put('/language', $updated);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Language updated', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API can soft delete a language.
     */
    #[Test]
    public function it_can_soft_delete_a_language(): void
    {
        // Create a new language for testing
        $language = $this->createLanguage(['name' => 'SoftDelete', 'abbreviation' => 'SD']);

        // Send a PATCH request to soft delete the language
        $response = $this->patch('/language', ['id' => $language['id'], 'deleted' => true]);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Language deleted', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot soft delete an already deleted language.
     */
    #[Test]
    public function it_cannot_soft_delete_a_deleted_language(): void
    {
        // Create a new language for testing
        $language = $this->createLanguage(['name' => 'SoftNoDelete', 'abbreviation' => 'ND']);

        // Send a PATCH request to soft delete the language
        $this->patch('/language', ['id' => $language['id'], 'deleted' => true]);

        // Attempt to soft delete the already deleted language
        $response = $this->patch('/language', ['id' => $language['id'], 'deleted' => true]);

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
     * Test that the API can restore a soft-deleted language.
     */
    #[Test]
    public function it_can_restore_a_soft_deleted_language(): void
    {
        $language = $this->createLanguage(['name' => 'Restore', 'abbreviation' => 'RE']);

        $this->patch('/language', ['id' => $language['id'], 'deleted' => true]);
        $response = $this->patch('/language', ['id' => $language['id'], 'deleted' => false]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Language restored', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot restore a language that is not deleted.
     */
    #[Test]
    public function it_cannot_restore_a_non_deleted_language(): void
    {
        // Create a new language for testing
        $language = $this->createLanguage(['name' => 'NotRestored', 'abbreviation' => 'NR']);

        // Attempt to restore the language without deleting it first
        $response = $this->patch('/language', ['id' => $language['id'], 'deleted' => false]);

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
     * Test that the API can permanently remove a soft-deleted language.
     */
    #[Test]
    public function it_can_remove_a_language_permanently(): void
    {
        $language = $this->createLanguage(['name' => 'ToRemove', 'abbreviation' => 'TR']);

        $this->patch('/language', ['id' => $language['id'], 'deleted' => true]);
        $response = $this->delete('/language', ['id' => $language['id']]);
        $this->assertEquals(204, $response['code'], 'Response status should be 204 OK');
    }

    /**
     * Test that the API cannot permanently remove a language that is not soft-deleted.
     */
    #[Test]
    public function it_cannot_remove_a_not_deleted_language_permanently(): void
    {
        // Create a new language for testing
        $language = $this->createLanguage(['name' => 'ToRemove', 'abbreviation' => 'NP']);

        // Attempt to permanently delete the language without soft deleting it first
        $response = $this->delete('/language', ['id' => $language['id']]);

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
     * Helper method to create a language using the API.
     *
     * @param array $data The data for the new language.
     * @return array The created language's data.
     */
    private function createLanguage(array $data): array
    {
        $response = $this->post('/language', $data);
        if($response['code'] !== 201) {
            throw new FfbEndpointException(json_decode($response['body'])->message);
        }
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');
        return json_decode($response['body'], true);
    }
}
