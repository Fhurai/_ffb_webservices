<?php

use PHPUnit\Framework\Attributes\Test;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Series::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
class SeriessTest extends ApiTestCase
{
    /**
     * Test that the API can list all seriess.
     */
    #[Test]
    public function it_can_list_seriess(): void
    {
        // Send a GET request to fetch all seriess
        $response = $this->get('/series');

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Iterate through each series and validate its properties
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
     * Test that the API can filter seriess by description.
     */
    #[Test]
    public function it_can_filter_seriess_by_description(): void
    {
        // Send a GET request with a filter parameter to search seriess by description
        $response = $this->get('/series', ['search_description' => '%Harry Potter%']);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an array
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsArray($dataArray, 'Response should be an array');

        // Assert that at least one series is returned
        $this->assertGreaterThan(0, count($dataArray), 'Response should contain at least one series');

        // Iterate through each series and validate its name contains 'Harry Potter'
        foreach ($dataArray as $item) {
            $this->assertIsObject($item, 'Each item should be an object');
            $this->assertStringContainsString('Harry Potter', $item->description, 'Series description should contain "Harry Potter"');
        }
    }

    /**
     * Test that the API can create a new series.
     */
    #[Test]
    public function it_can_create_a_series(): void
    {
        // Prepare the data for the new series
        $data = [
            'name' => 'New Series',
            'description' => 'new description',
            'fanfictions' => [
                1,
                2,
                3
            ]
        ];

        // Send a POST request to create the series
        $response = $this->post('/serie', $data);

        // Assert that the response status is 201 Created
        $this->assertEquals(201, $response['code'], 'Response status should be 201 Created');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the created series
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
     * Test that the API can retrieve a series by ID.
     */
    #[Test]
    public function it_can_get_a_series_by_id(): void
    {
        // Create a new series for testing
        $series = $this->createSeries([
            'name' => 'Test Series',
            'description' => 'new description',
            'fanfictions' => [
                1,
                2,
                3
            ]
        ]);

        // Send a GET request to fetch the series by ID
        $response = $this->get('/serie', ['id' => $series['id']]);

        // Decode the JSON response
        $dataArray = json_decode($response);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the properties of the fetched series
        $this->assertObjectHasProperty('id', $dataArray, 'Response should have an id property');
        $this->assertEquals($series['id'], $dataArray->id, 'Response id should match the created series id');
        $this->assertObjectHasProperty('name', $dataArray, 'Response should have a name property');
        $this->assertEquals($series['name'], $dataArray->name, 'Response name should match the created series name');
    }

    /**
     * Test that the API can update a series's details.
     */
    #[Test]
    public function it_can_update_a_series(): void
    {
        // Create a new series for testing
        $series = $this->createSeries([
            'name' => 'Old Name',
            'description' => 'new description',
            'fanfictions' => [
                1,
                2,
                3
            ]
        ]);

        // Prepare the updated data for the series
        $updated = ['id' => $series['id'], 'name' => 'NX'];

        // Send a PUT request to update the series
        $response = $this->put('/serie', $updated);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Series updated', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API can soft delete a series.
     */
    #[Test]
    public function it_can_soft_delete_a_series(): void
    {
        // Create a new series for testing
        $series = $this->createSeries([
            'name' => 'SoftDelete',
            'description' => 'new description',
            'fanfictions' => [
                1,
                2,
                3
            ]
        ]);

        // Send a PATCH request to soft delete the series
        $response = $this->patch('/serie', ['id' => $series['id'], 'deleted' => true]);

        // Assert that the response status is 200 OK
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');

        // Decode the JSON response
        $dataArray = json_decode($response['body']);

        // Assert that the response is not empty and is an object
        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');

        // Validate the success message in the response
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Series deleted', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot soft delete an already deleted series.
     */
    #[Test]
    public function it_cannot_soft_delete_a_deleted_series(): void
    {
        // Create a new series for testing
        $series = $this->createSeries([
            'name' => 'SoftNoDelete',
            'description' => 'new description',
            'fanfictions' => [
                1,
                2,
                3
            ]
        ]);

        // Send a PATCH request to soft delete the series
        $this->patch('/serie', ['id' => $series['id'], 'deleted' => true]);

        // Attempt to soft delete the already deleted series
        $response = $this->patch('/serie', ['id' => $series['id'], 'deleted' => true]);

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
     * Test that the API can restore a soft-deleted series.
     */
    #[Test]
    public function it_can_restore_a_soft_deleted_series(): void
    {
        $series = $this->createSeries([
            'name' => 'Restore',
            'description' => 'new description',
            'fanfictions' => [
                1,
                2,
                3
            ]
        ]);

        $this->patch('/serie', ['id' => $series['id'], 'deleted' => true]);
        $response = $this->patch('/serie', ['id' => $series['id'], 'deleted' => false]);
        $this->assertEquals(200, $response['code'], 'Response status should be 200 OK');
        $dataArray = json_decode($response['body']);

        $this->assertNotEmpty($dataArray, 'Response should not be empty');
        $this->assertIsObject($dataArray, 'Response should be an object');
        $this->assertObjectHasProperty('message', $dataArray, 'Response should have a message property');
        $this->assertEquals('Series restored', $dataArray->message, 'Response message should indicate success');
    }

    /**
     * Test that the API cannot restore a series that is not deleted.
     */
    #[Test]
    public function it_cannot_restore_a_non_deleted_series(): void
    {
        // Create a new series for testing
        $series = $this->createSeries([
            'name' => 'NotRestored',
            'description' => 'new description',
            'fanfictions' => [
                1,
                2,
                3
            ]
        ]);

        // Attempt to restore the series without deleting it first
        $response = $this->patch('/serie', ['id' => $series['id'], 'deleted' => false]);

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
     * Test that the API can permanently remove a soft-deleted series.
     */
    #[Test]
    public function it_can_remove_a_series_permanently(): void
    {
        $series = $this->createSeries([
            'name' => 'ToRemove',
            'description' => 'new description',
            'fanfictions' => [
                1,
                2,
                3
            ]
        ]);

        $this->patch('/serie', ['id' => $series['id'], 'deleted' => true]);
        $response = $this->delete('/serie', ['id' => $series['id']]);
        $this->assertEquals(204, $response['code'], 'Response status should be 204 OK');
    }

    /**
     * Test that the API cannot permanently remove a series that is not soft-deleted.
     */
    #[Test]
    public function it_cannot_remove_a_not_deleted_series_permanently(): void
    {
        // Create a new series for testing
        $series = $this->createSeries([
            'name' => 'ToRemove',
            'description' => 'new description',
            'fanfictions' => [
                1,
                2,
                3
            ]
        ]);

        // Attempt to permanently delete the series without soft deleting it first
        $response = $this->delete('/serie', ['id' => $series['id']]);

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
     * Helper method to create a series using the API.
     *
     * @param array $data The data for the new series.
     * @return array The created series's data.
     */
    private function createSeries(array $data): array
    {
        $response = $this->post('/serie', $data);
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
