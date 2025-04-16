<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/FandomsTable.php';
require_once __DIR__ . '/../../src/entity/Fandom.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

class FandomsTableTest extends TestCase
{
    private FandomsTable $fandomsTable;

    /**
     * Set up the FandomsTable instance for testing.
     */
    protected function setUp(): void
    {
        // Initialize the FandomsTable instance with test parameters
        // The "tests" database and "user" table are used for testing purposes
        $this->fandomsTable = new FandomsTable("tests", "user");
    }

    /**
     * Test retrieving a valid fandom by ID.
     */
    public function testGetValidId(): void
    {
        // Retrieve a fandom with a valid ID (1)
        // Verify that the returned object is an instance of Fandom
        // Check that the ID and name of the fandom match the expected values
        $result = $this->fandomsTable->get(1);
        $this->assertInstanceOf(Fandom::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Avengers", $result->getName());
    }

    /**
     * Test retrieving a fandom with an invalid ID.
     */
    public function testGetInvalidId(): void
    {
        // Attempt to retrieve a fandom with an invalid ID (999)
        // Expect an FfbTableException to be thrown with a specific error message
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->fandomsTable->get(999);
    }

    /**
     * Test retrieving a fandom with a non-integer ID.
     */
    public function testGetNonIntegerId(): void
    {
        // Attempt to retrieve a fandom with a non-integer ID ("invalid_id")
        // Expect a TypeError to be thrown due to invalid argument type
        $this->expectException(TypeError::class);
        $this->fandomsTable->get("invalid_id");
    }

    /**
     * Test searching for fandoms with valid criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        // Search for fandoms using valid criteria (name = "Naruto")
        // Verify that the result is an array
        // Check that the array contains exactly one element
        // Ensure the element is an instance of Fandom
        $result = $this->fandomsTable->findSearchedBy(['name' => 'Naruto']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Fandom::class, $result[0]);
    }

    /**
     * Test searching for fandoms with invalid criteria.
     */
    public function testFindSearchedByInvalidCriteria(): void
    {
        // Attempt to search for fandoms using invalid criteria (invalid column name)
        // Expect an FfbTableException to be thrown with a specific error message
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");
        $this->fandomsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    /**
     * Test searching for fandoms with empty criteria.
     */
    public function testFindSearchedByEmptyCriteria(): void
    {
        // Attempt to search for fandoms with empty criteria
        // Expect an FfbTableException to be thrown with a specific error message
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");
        $this->fandomsTable->findSearchedBy([]);
    }

    /**
     * Test ordering fandoms by valid criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        // Order fandoms by valid criteria (name in ascending order)
        // Verify that the result is an array
        // Check that the array contains the expected number of elements (21)
        // Ensure the first element has the expected name ("Avengers")
        $result = $this->fandomsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(21, $result); // Adjust count based on test data
        $this->assertEquals("Avengers", $result[0]->getName());
    }

    /**
     * Test ordering fandoms with an invalid direction.
     */
    public function testFindOrderedByInvalidDirection(): void
    {
        // Attempt to order fandoms with an invalid direction ("INVALID")
        // Expect an FfbTableException to be thrown with a specific error message
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");
        $this->fandomsTable->findOrderedBy(['name' => 'INVALID']);
    }

    /**
     * Test limiting the number of fandoms retrieved with valid criteria.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        // Limit the number of fandoms retrieved (limit = 2, offset = 0)
        // Verify that the result is an array
        // Check that the array contains exactly two elements
        $result = $this->fandomsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Test limiting fandoms with a negative limit value.
     */
    public function testFindLimitedByNegativeLimit(): void
    {
        // Attempt to limit fandoms with a negative limit value (-1)
        // Expect an FfbTableException to be thrown with a specific error message
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");
        $this->fandomsTable->findLimitedBy(['limit' => -1]);
    }

    /**
     * Test limiting fandoms with a negative offset value.
     */
    public function testFindLimitedByNegativeOffset(): void
    {
        // Attempt to limit fandoms with a negative offset value (-5)
        // Expect an FfbTableException to be thrown with a specific error message
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");
        $this->fandomsTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    /**
     * Test retrieving all fandoms with specific criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        // Retrieve all fandoms with specific criteria:
        // - Search for names starting with "F"
        // - Order by name in ascending order
        // - Limit results to 2 with an offset of 0
        // Verify that the result is an array
        // Check that the array contains exactly two elements
        $result = $this->fandomsTable->findAll([
            'search' => ['name' => 'F%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Test retrieving all fandoms with criteria that yield no results.
     */
    public function testFindAllNoResults(): void
    {
        // Attempt to retrieve all fandoms with criteria that yield no results:
        // - Search for names starting with "Nonexistent"
        // - Order by name in ascending order
        // - Limit results to 2 with an offset of 0
        // Expect an FfbTableException to be thrown with a specific error message
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->fandomsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    /**
     * Test retrieving all fandoms with empty arguments.
     */
    public function testFindAllEmptyArguments(): void
    {
        // Retrieve all fandoms with no specific criteria
        // Verify that the result is an array
        // Check that the array contains the expected number of elements (21)
        $result = $this->fandomsTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(21, $result); // Adjust count based on test data
    }

    /**
     * Test creating a valid fandom entity.
     */
    public function testCreateValid(): void
    {
        // Create a valid fandom entity using the FandomBuilder
        // Set the name, creation date, and update date of the fandom
        // Verify that the created fandom is an instance of Fandom
        // Check that the ID is not null and the name matches the expected value
        $fandom = (new FandomBuilder())
            ->withName("New Fandom")
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdFandom = $this->fandomsTable->create($fandom);
        $this->assertInstanceOf(Fandom::class, $createdFandom);
        $this->assertNotNull($createdFandom->getId());
        $this->assertEquals("New Fandom", $createdFandom->getName());
    }

    /**
     * Test creating an invalid fandom entity.
     */
    public function testCreateInvalidEntity(): void
    {
        // Attempt to create an invalid fandom entity (stdClass)
        // Expect a TypeError to be thrown due to invalid argument type
        $this->expectException(TypeError::class);
        $this->fandomsTable->create(new stdClass());
    }

    /**
     * Test updating a valid fandom entity.
     */
    public function testUpdateValid(): void
    {
        // Update a valid fandom entity
        // Retrieve the fandom with the name "New Fandom"
        // Set the new name and update date of the fandom
        // Verify that the updated fandom is an instance of Fandom
        // Check that the name matches the expected value
        $fandom = $this->fandomsTable->findSearchedBy(["name" => "New Fandom"])[0];
        $fandom->setName("Updated Fandom");
        $fandom->setUpdateDate(new DateTime());

        $updatedFandom = $this->fandomsTable->update($fandom);
        $this->assertInstanceOf(Fandom::class, $updatedFandom);
        $this->assertEquals("Updated Fandom", $updatedFandom->getName());
    }

    /**
     * Test updating an invalid fandom entity.
     */
    public function testUpdateInvalidEntity(): void
    {
        // Attempt to update an invalid fandom entity (stdClass)
        // Expect a TypeError to be thrown due to invalid argument type
        $this->expectException(TypeError::class);
        $this->fandomsTable->update(new stdClass());
    }

    /**
     * Test deleting a fandom by valid ID.
     */
    public function testDeleteValidId(): void
    {
        // Delete a fandom by valid ID
        // Retrieve the fandom with the name "Updated Fandom"
        // Verify that the deletion result is true
        $fandom = $this->fandomsTable->findSearchedBy(["name" => "Updated Fandom"])[0];
        $result = $this->fandomsTable->delete($fandom->getId());
        $this->assertTrue($result);
    }

    /**
     * Test deleting a fandom by invalid ID.
     */
    public function testDeleteInvalidId(): void
    {
        // Attempt to delete a fandom by invalid ID (9999)
        // Verify that the deletion result is false
        $result = $this->fandomsTable->delete(9999);
        $this->assertFalse($result);
    }

    /**
     * Test restoring a fandom by valid ID.
     */
    public function testRestoreValidId(): void
    {
        // Restore a fandom by valid ID
        // Retrieve the fandom with the name "Updated Fandom"
        // Verify that the restoration result is true
        $fandom = $this->fandomsTable->findSearchedBy(["name" => "Updated Fandom"])[0];
        $result = $this->fandomsTable->restore($fandom->getId());
        $this->assertTrue($result);
    }

    /**
     * Test restoring a fandom by invalid ID.
     */
    public function testRestoreInvalidId(): void
    {
        // Attempt to restore a fandom by invalid ID (9999)
        // Verify that the restoration result is false
        $result = $this->fandomsTable->restore(9999);
        $this->assertFalse($result);
    }

    /**
     * Test removing a fandom by valid ID.
     */
    public function testRemoveValidId(): void
    {
        // Remove a fandom by valid ID
        // Retrieve the fandom with the name "Updated Fandom"
        // Verify that the removal result is true
        $fandom = $this->fandomsTable->findSearchedBy(["name" => "Updated Fandom"])[0];

        // Delete the Fandom object to ensure it exists before removal
        $this->fandomsTable->delete($fandom->getId());

        $result = $this->fandomsTable->remove($fandom->getId());
        $this->assertTrue($result);
    }

    /**
     * Test removing a fandom by invalid ID.
     */
    public function testRemoveInvalidId(): void
    {
        // Attempt to remove a fandom by invalid ID (999)
        // Verify that the removal result is false
        $result = $this->fandomsTable->remove(999);
        $this->assertFalse($result);
    }
}
