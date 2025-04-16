<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/SeriesTable.php';
require_once __DIR__ . '/../../src/entity/Series.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

/**
 * Class SeriesTableTest
 *
 * Unit tests for the SeriesTable class.
 */
class SeriesTableTest extends TestCase
{
    private SeriesTable $seriesTable;

    /**
     * Set up the test environment by initializing the SeriesTable instance.
     */
    protected function setUp(): void
    {
        // Initialize the SeriesTable instance with test parameters.
        $this->seriesTable = new SeriesTable("tests", "user");
    }

    /**
     * Test retrieving a valid series by ID.
     */
    public function testGetValidId(): void
    {
        // Retrieve a series by a valid ID.
        $result = $this->seriesTable->get(1);

        // Assert that the result is an instance of Series.
        $this->assertInstanceOf(Series::class, $result);

        // Assert that the ID and name of the retrieved series match the expected values.
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("From Innocent Feelings to Post Crisis", $result->getName());
    }

    /**
     * Test retrieving a series with an invalid ID.
     */
    public function testGetInvalidId(): void
    {
        // Expect an exception when trying to retrieve a series with an invalid ID.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Attempt to retrieve a series with an invalid ID.
        $this->seriesTable->get(0);
    }

    /**
     * Test searching for series by valid criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        // Search for series using valid criteria.
        $result = $this->seriesTable->findSearchedBy(['name' => '%series%']);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the result contains the expected number of items.
        $this->assertCount(2, $result);

        // Assert that the first item in the result is an instance of Series.
        $this->assertInstanceOf(Series::class, $result[0]);
    }

    /**
     * Test ordering series by valid criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        // Retrieve series ordered by valid criteria.
        $result = $this->seriesTable->findOrderedBy(['name' => 'ASC']);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the result contains the expected number of items.
        $this->assertCount(38, $result); // Adjust count as needed.

        // Assert that the first item's name matches the expected value.
        $this->assertEquals("A Bonding", $result[0]->getName());
    }

    /**
     * Test limiting series by valid criteria.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        // Retrieve a limited number of series with valid criteria.
        $result = $this->seriesTable->findLimitedBy(['limit' => 2, 'offset' => 0]);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the result contains the expected number of items.
        $this->assertCount(2, $result);
    }

    /**
     * Test retrieving all series with specific criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        // Retrieve all series with specific criteria.
        $result = $this->seriesTable->findAll([
            'search' => ['name' => '%Boy%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the result contains the expected number of items.
        $this->assertCount(2, $result);
    }

    /**
     * Test creating a valid series entity.
     */
    public function testCreateValid(): void
    {
        // Build a new series entity with valid data.
        $series = (new SeriesBuilder())
            ->withName("New Series")
            ->withDescription("Description")
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        // Create the series in the database.
        $createdSeries = $this->seriesTable->create($series);

        // Assert that the created series is an instance of Series.
        $this->assertInstanceOf(Series::class, $createdSeries);

        // Assert that the created series has a non-null ID and matches the expected name.
        $this->assertNotNull($createdSeries->getId());
        $this->assertEquals("New Series", $createdSeries->getName());
    }

    /**
     * Test updating a valid series entity.
     */
    public function testUpdateValid(): void
    {
        // Retrieve a series entity to update.
        $series = $this->seriesTable->findSearchedBy(["name" => "New Series"])[0];

        // Update the series's name and update date.
        $series->setName("Updated Series");
        $series->setUpdateDate(new DateTime());

        // Update the series in the database.
        $updatedSeries = $this->seriesTable->update($series);

        // Assert that the updated series is an instance of Series.
        $this->assertInstanceOf(Series::class, $updatedSeries);

        // Assert that the updated series's name matches the expected value.
        $this->assertEquals("Updated Series", $updatedSeries->getName());
    }

    /**
     * Test deleting a series by a valid ID.
     */
    public function testDeleteValidId(): void
    {
        // Retrieve a series entity to delete.
        $series = $this->seriesTable->findSearchedBy(["name" => "Updated Series"])[0];

        // Delete the series by its ID.
        $result = $this->seriesTable->delete($series->getId());

        // Assert that the deletion was successful.
        $this->assertTrue($result);
    }

    /**
     * Test restoring a series by a valid ID.
     */
    public function testRestoreValidId(): void
    {
        // Retrieve a series entity to restore.
        $series = $this->seriesTable->findSearchedBy(["name" => "Updated Series"])[0];

        // Restore the series by its ID.
        $result = $this->seriesTable->restore($series->getId());

        // Assert that the restoration was successful.
        $this->assertTrue($result);
    }

    /**
     * Test permanently removing a series by a valid ID.
     */
    public function testRemoveValidId(): void
    {
        // Retrieve a series entity to remove.
        $series = $this->seriesTable->findSearchedBy(["name" => "Updated Series"])[0];

        // Permanently remove the series by its ID.
        $result = $this->seriesTable->remove($series->getId());

        // Assert that the removal was successful.
        $this->assertTrue($result);
    }
}
