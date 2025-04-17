<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/FanfictionsTable.php';
require_once __DIR__ . '/../../src/entity/Fanfiction.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

/**
 * Class FanfictionsTableTest
 *
 * Unit tests for the FanfictionsTable class.
 */
#[\PHPUnit\Framework\Attributes\CoversClass(\ComplexEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EvaluableTrait::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Fanfiction::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FanfictionBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FanfictionsTable::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntityBuilder::class)]
class FanfictionsTableTest extends TestCase
{
    private FanfictionsTable $fanfictionsTable;

    /**
     * Set up the test environment by initializing the FanfictionsTable instance.
     */
    protected function setUp(): void
    {
        // Initialize the FanfictionsTable instance with test parameters.
        $this->fanfictionsTable = new FanfictionsTable("tests", "user");
    }

    /**
     * Test retrieving a valid fanfiction by ID.
     */
    public function testGetValidId(): void
    {
        // Retrieve a fanfiction by a valid ID.
        $result = $this->fanfictionsTable->get(1);

        // Assert that the result is an instance of Fanfiction.
        $this->assertInstanceOf(Fanfiction::class, $result);

        // Assert that the ID and name of the retrieved fanfiction match the expected values.
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Dancing Dragonflies", $result->getName());
    }

    /**
     * Test retrieving a fanfiction with an invalid ID.
     */
    public function testGetInvalidId(): void
    {
        // Expect an exception when trying to retrieve a fanfiction with an invalid ID.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Attempt to retrieve a fanfiction with an invalid ID.
        $this->fanfictionsTable->get(0);
    }

    /**
     * Test retrieving a fanfiction with a non-integer ID.
     */
    public function testGetNonIntegerId(): void
    {
        // Expect a TypeError when trying to retrieve a fanfiction with a non-integer ID.
        $this->expectException(TypeError::class);

        // Attempt to retrieve a fanfiction with a non-integer ID.
        $this->fanfictionsTable->get("invalid_id");
    }

    /**
     * Test searching for fanfictions by valid criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        // Search for fanfictions using valid criteria.
        $result = $this->fanfictionsTable->findSearchedBy(['name' => 'Harry Potter%']);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the result contains the expected number of items.
        $this->assertCount(26, $result);

        // Assert that the first item in the result is an instance of Fanfiction.
        $this->assertInstanceOf(Fanfiction::class, $result[0]);
    }

    /**
     * Test searching for fanfictions with invalid criteria.
     */
    public function testFindSearchedByInvalidCriteria(): void
    {
        // Expect an exception when searching with invalid criteria.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        // Attempt to search with invalid criteria.
        $this->fanfictionsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    /**
     * Test searching for fanfictions with empty criteria.
     */
    public function testFindSearchedByEmptyCriteria(): void
    {
        // Expect an exception when searching with empty criteria.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        // Attempt to search with empty criteria.
        $this->fanfictionsTable->findSearchedBy([]);
    }

    /**
     * Test ordering fanfictions by valid criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        // Retrieve fanfictions ordered by valid criteria.
        $result = $this->fanfictionsTable->findOrderedBy(['name' => 'ASC']);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the result contains the expected number of items.
        $this->assertCount(1061, $result); // Adjust count as needed.

        // Assert that the first item's name matches the expected value.
        $this->assertEquals("'Til We Find Ourselves, Again", $result[0]->getName());
    }

    /**
     * Test ordering fanfictions with an invalid direction.
     */
    public function testFindOrderedByInvalidDirection(): void
    {
        // Expect an exception when ordering with an invalid direction.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        // Attempt to order with an invalid direction.
        $this->fanfictionsTable->findOrderedBy(['name' => 'INVALID']);
    }

    /**
     * Test limiting fanfictions by valid criteria.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        // Retrieve a limited number of fanfictions with valid criteria.
        $result = $this->fanfictionsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the result contains the expected number of items.
        $this->assertCount(2, $result);
    }

    /**
     * Test limiting fanfictions with a negative limit.
     */
    public function testFindLimitedByNegativeLimit(): void
    {
        // Expect an exception when using a negative limit.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        // Attempt to retrieve fanfictions with a negative limit.
        $this->fanfictionsTable->findLimitedBy(['limit' => -1]);
    }

    /**
     * Test limiting fanfictions with a negative offset.
     */
    public function testFindLimitedByNegativeOffset(): void
    {
        // Expect an exception when using a negative offset.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        // Attempt to retrieve fanfictions with a negative offset.
        $this->fanfictionsTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    /**
     * Test retrieving all fanfictions with specific criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        // Retrieve all fanfictions with specific criteria.
        $result = $this->fanfictionsTable->findAll([
            'search' => ['name' => 'Naruto%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the result contains the expected number of items.
        $this->assertCount(2, $result);
    }

    /**
     * Test retrieving all fanfictions when no results are found.
     */
    public function testFindAllNoResults(): void
    {
        // Expect an exception when no results are found.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Attempt to retrieve fanfictions with criteria that yield no results.
        $this->fanfictionsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    /**
     * Test retrieving all fanfictions with empty arguments.
     */
    public function testFindAllEmptyArguments(): void
    {
        // Retrieve all fanfictions with empty arguments.
        $result = $this->fanfictionsTable->findAll([]);

        // Assert that the result is an array.
        $this->assertIsArray($result);

        // Assert that the result contains the expected number of items.
        $this->assertCount(1061, $result); // Adjust count as needed.
    }

    /**
     * Test creating a valid fanfiction entity.
     */
    public function testCreateValid(): void
    {
        // Build a new fanfiction entity with valid data.
        $fanfiction = (new FanfictionBuilder())
            ->withName("New Fanfiction")
            ->withAuthorId(1)
            ->withRatingId(1)
            ->withDescription("Description")
            ->withLanguageId(1)
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        // Create the fanfiction in the database.
        $createdFanfiction = $this->fanfictionsTable->create($fanfiction);

        // Assert that the created fanfiction is an instance of Fanfiction.
        $this->assertInstanceOf(Fanfiction::class, $createdFanfiction);

        // Assert that the created fanfiction has a non-null ID and matches the expected name.
        $this->assertNotNull($createdFanfiction->getId());
        $this->assertEquals("New Fanfiction", $createdFanfiction->getName());
    }

    /**
     * Test creating an invalid fanfiction entity.
     */
    public function testCreateInvalidEntity(): void
    {
        // Expect a TypeError when trying to create an invalid entity.
        $this->expectException(TypeError::class);

        // Attempt to create a fanfiction with an invalid entity.
        $this->fanfictionsTable->create(new stdClass());
    }

    /**
     * Test updating a valid fanfiction entity.
     */
    public function testUpdateValid(): void
    {
        // Retrieve a fanfiction entity to update.
        $fanfiction = $this->fanfictionsTable->findSearchedBy(["name" => "New Fanfiction"])[0];

        // Update the fanfiction's name and update date.
        $fanfiction->setName("Updated Fanfiction");
        $fanfiction->setUpdateDate(new DateTime());

        // Update the fanfiction in the database.
        $updatedFanfiction = $this->fanfictionsTable->update($fanfiction);

        // Assert that the updated fanfiction is an instance of Fanfiction.
        $this->assertInstanceOf(Fanfiction::class, $updatedFanfiction);

        // Assert that the updated fanfiction's name matches the expected value.
        $this->assertEquals("Updated Fanfiction", $updatedFanfiction->getName());
    }

    /**
     * Test updating an invalid fanfiction entity.
     */
    public function testUpdateInvalidEntity(): void
    {
        // Expect a TypeError when trying to update an invalid entity.
        $this->expectException(TypeError::class);

        // Attempt to update a fanfiction with an invalid entity.
        $this->fanfictionsTable->update(new stdClass());
    }

    /**
     * Test deleting a fanfiction by a valid ID.
     */
    public function testDeleteValidId(): void
    {
        // Retrieve a fanfiction entity to delete.
        $fanfiction = $this->fanfictionsTable->findSearchedBy(["name" => "Updated Fanfiction"])[0];

        // Delete the fanfiction by its ID.
        $result = $this->fanfictionsTable->delete($fanfiction->getId());

        // Assert that the deletion was successful.
        $this->assertTrue($result);
    }

    /**
     * Test deleting a fanfiction by an invalid ID.
     */
    public function testDeleteInvalidId(): void
    {
        // Attempt to delete a fanfiction with an invalid ID.
        $result = $this->fanfictionsTable->delete(9999);

        // Assert that the deletion was unsuccessful.
        $this->assertFalse($result);
    }

    /**
     * Test restoring a fanfiction by a valid ID.
     */
    public function testRestoreValidId(): void
    {
        // Retrieve a fanfiction entity to restore.
        $fanfiction = $this->fanfictionsTable->findSearchedBy(["name" => "Updated Fanfiction"])[0];

        // Restore the fanfiction by its ID.
        $result = $this->fanfictionsTable->restore($fanfiction->getId());

        // Assert that the restoration was successful.
        $this->assertTrue($result);
    }

    /**
     * Test restoring a fanfiction by an invalid ID.
     */
    public function testRestoreInvalidId(): void
    {
        // Attempt to restore a fanfiction with an invalid ID.
        $result = $this->fanfictionsTable->restore(9999);

        // Assert that the restoration was unsuccessful.
        $this->assertFalse($result);
    }

    /**
     * Test permanently removing a fanfiction by a valid ID.
     */
    public function testRemoveValidId(): void
    {
        // Retrieve a fanfiction entity to remove.
        $fanfiction = $this->fanfictionsTable->findSearchedBy(["name" => "Updated Fanfiction"])[0];

        // Permanently remove the fanfiction by its ID.
        $result = $this->fanfictionsTable->remove($fanfiction->getId());

        // Assert that the removal was successful.
        $this->assertTrue($result);
    }

    /**
     * Test permanently removing a fanfiction by an invalid ID.
     */
    public function testRemoveInvalidId(): void
    {
        // Attempt to permanently remove a fanfiction with an invalid ID.
        $result = $this->fanfictionsTable->remove(0);

        // Assert that the removal was unsuccessful.
        $this->assertFalse($result);
    }
}
