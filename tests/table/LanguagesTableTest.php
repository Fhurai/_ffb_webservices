<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/LanguagesTable.php';
require_once __DIR__ . '/../../src/entity/Language.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

/**
 * LanguagesTableTest class.
 * 
 * This class contains unit tests for the LanguagesTable class, which handles
 * database operations for the `languages` table. Each test method verifies
 * the behavior of a specific method in the LanguagesTable class.
 */
class LanguagesTableTest extends TestCase
{
    private LanguagesTable $languagesTable;

    /**
     * Set up the LanguagesTable instance before each test.
     * Initializes the LanguagesTable object with test-specific parameters.
     */
    protected function setUp(): void
    {
        // Initialize the LanguagesTable instance with test parameters
        $this->languagesTable = new LanguagesTable("tests", "user");
    }

    /**
     * Test the get method with a valid ID.
     * Ensures that the method returns a Language object with the expected properties.
     */
    public function testGetValidId(): void
    {
        // Call the get method with a valid ID
        $result = $this->languagesTable->get(1);

        // Assert that the result is an instance of Language
        $this->assertInstanceOf(Language::class, $result);

        // Assert that the ID and name match the expected values
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Français", $result->getName());
    }

    /**
     * Test the get method with an invalid ID.
     * Verifies that an exception is thrown when the ID does not exist.
     */
    public function testGetInvalidId(): void
    {
        // Expect an exception of type FfbTableException
        $this->expectException(FfbTableException::class);

        // Expect the exception message to indicate no data was found
        $this->expectExceptionMessage("No data for arguments provided!");

        // Call the get method with an invalid ID
        $this->languagesTable->get(999);
    }

    /**
     * Test the get method with a non-integer ID.
     * Ensures that a TypeError is thrown when the ID is not an integer.
     */
    public function testGetNonIntegerId(): void
    {
        // Expect a TypeError exception to be thrown
        $this->expectException(TypeError::class);

        // Call the get method with a non-integer ID
        $this->languagesTable->get("invalid_id");
    }

    /**
     * Test the findSearchedBy method with valid search criteria.
     * Ensures that the method returns an array of Language objects matching the criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        // Call the findSearchedBy method with valid search criteria
        $result = $this->languagesTable->findSearchedBy(['name' => 'English']);

        // Assert that the result is an array
        $this->assertIsArray($result);

        // Assert that the array contains one element
        $this->assertCount(1, $result);

        // Assert that the first element is an instance of Language
        $this->assertInstanceOf(Language::class, $result[0]);
    }

    /**
     * Test the findSearchedBy method with invalid search criteria.
     * Verifies that an exception is thrown for invalid column names.
     */
    public function testFindSearchedByInvalidCriteria(): void
    {
        // Expect an exception of type FfbTableException
        $this->expectException(FfbTableException::class);

        // Expect the exception message to indicate an invalid column name
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        // Call the findSearchedBy method with invalid search criteria
        $this->languagesTable->findSearchedBy(['invalid_column' => 'value']);
    }

    /**
     * Test the findSearchedBy method with empty search criteria.
     * Verifies that an exception is thrown when no search arguments are provided.
     */
    public function testFindSearchedByEmptyCriteria(): void
    {
        // Expect an exception of type FfbTableException
        $this->expectException(FfbTableException::class);

        // Expect the exception message to indicate no search arguments were provided
        $this->expectExceptionMessage("No search arguments provided!");

        // Call the findSearchedBy method with empty search criteria
        $this->languagesTable->findSearchedBy([]);
    }

    /**
     * Test the findOrderedBy method with valid order criteria.
     * Ensures that the method returns an array of Language objects ordered by the specified criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        // Call the findOrderedBy method with valid order criteria
        $result = $this->languagesTable->findOrderedBy(['name' => 'ASC']);

        // Assert that the result is an array
        $this->assertIsArray($result);

        // Assert that the array contains 2 elements
        $this->assertCount(2, $result);

        // Assert that the first element's name matches the expected value
        $this->assertEquals("English", $result[0]->getName());
    }

    /**
     * Test the findOrderedBy method with invalid order direction.
     * Verifies that an exception is thrown for invalid order directions.
     */
    public function testFindOrderedByInvalidDirection(): void
    {
        // Expect an exception of type FfbTableException
        $this->expectException(FfbTableException::class);

        // Expect the exception message to indicate an invalid order direction
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        // Call the findOrderedBy method with an invalid order direction
        $this->languagesTable->findOrderedBy(['name' => 'INVALID']);
    }

    /**
     * Test the findLimitedBy method with valid limit and offset.
     * Ensures that the method returns an array of Language objects within the specified limit and offset.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        // Call the findLimitedBy method with valid limit and offset
        $result = $this->languagesTable->findLimitedBy(['limit' => 2, 'offset' => 0]);

        // Assert that the result is an array
        $this->assertIsArray($result);

        // Assert that the array contains two elements
        $this->assertCount(2, $result);
    }

    /**
     * Test the findLimitedBy method with a negative limit.
     * Verifies that an exception is thrown for negative limit values.
     */
    public function testFindLimitedByNegativeLimit(): void
    {
        // Expect an exception of type FfbTableException
        $this->expectException(FfbTableException::class);

        // Expect the exception message to indicate an invalid or missing limit value
        $this->expectExceptionMessage("Invalid or missing limit value!");

        // Call the findLimitedBy method with a negative limit
        $this->languagesTable->findLimitedBy(['limit' => -1]);
    }

    /**
     * Test the findLimitedBy method with a negative offset.
     * Verifies that an exception is thrown for negative offset values.
     */
    public function testFindLimitedByNegativeOffset(): void
    {
        // Expect an exception of type FfbTableException
        $this->expectException(FfbTableException::class);

        // Expect the exception message to indicate an invalid offset value
        $this->expectExceptionMessage("Invalid offset value!");

        // Call the findLimitedBy method with a negative offset
        $this->languagesTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    /**
     * Test the findAll method with combined criteria.
     * Ensures that the method returns an array of Language objects matching the combined criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        // Call the findAll method with combined criteria
        $result = $this->languagesTable->findAll([
            'search' => ['name' => 'E%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);

        // Assert that the result is an array
        $this->assertIsArray($result);

        // Assert that the array contains two elements
        $this->assertCount(1, $result);
    }

    /**
     * Test the findAll method with no results.
     * Verifies that an exception is thrown when no results are found.
     */
    public function testFindAllNoResults(): void
    {
        // Expect an exception of type FfbTableException
        $this->expectException(FfbTableException::class);

        // Expect the exception message to indicate no data was found
        $this->expectExceptionMessage("No data for arguments provided!");

        // Call the findAll method with criteria that yield no results
        $this->languagesTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    /**
     * Test the findAll method with empty arguments.
     * Ensures that the method returns all Language objects when no arguments are provided.
     */
    public function testFindAllEmptyArguments(): void
    {
        // Call the findAll method with empty arguments
        $result = $this->languagesTable->findAll([]);

        // Assert that the result is an array
        $this->assertIsArray($result);

        // Assert that the array contains 2 elements
        $this->assertCount(2, $result);
    }

    /**
     * Test the create method with valid data.
     * Ensures that a new Language object can be created successfully.
     */
    public function testCreateValid(): void
    {
        // Create a new Language object using the LanguageBuilder
        $language = (new LanguageBuilder())
            ->withName("New Language")
            ->withAbbreviation("NL")
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        // Call the create method to add the new Language to the database
        $createdLanguage = $this->languagesTable->create($language);

        // Assert that the created Language is an instance of Language
        $this->assertInstanceOf(Language::class, $createdLanguage);

        // Assert that the created Language has a non-null ID
        $this->assertNotNull($createdLanguage->getId());

        // Assert that the name of the created Language matches the expected value
        $this->assertEquals("New Language", $createdLanguage->getName());
    }

    /**
     * Test the create method with an invalid entity type.
     * Ensures that a TypeError is thrown when the provided entity is not of the expected type.
     */
    public function testCreateInvalidEntity(): void
    {
        // Expect a TypeError exception to be thrown
        $this->expectException(TypeError::class);

        // Call the create method with an invalid entity type
        $this->languagesTable->create(new stdClass());
    }

    /**
     * Test the update method with valid data.
     * Ensures that a Language object can be updated and the changes are reflected.
     */
    public function testUpdateValid(): void
    {
        // Find the Language object to be updated
        $language = $this->languagesTable->findSearchedBy(["name" => "New Language"])[0];

        // Update the name and update date of the Language object
        $language->setName("Updated Language");
        $language->setUpdateDate(new DateTime());

        // Call the update method to save the changes
        $updatedLanguage = $this->languagesTable->update($language);

        // Assert that the updated Language is an instance of Language
        $this->assertInstanceOf(Language::class, $updatedLanguage);

        // Assert that the name of the updated Language matches the expected value
        $this->assertEquals("Updated Language", $updatedLanguage->getName());
    }

    /**
     * Test the update method with an invalid entity type.
     * Verifies that a TypeError is thrown when the provided entity is not of the expected type.
     */
    public function testUpdateInvalidEntity(): void
    {
        // Expect a TypeError exception to be thrown
        $this->expectException(TypeError::class);

        // Call the update method with an invalid entity type
        $this->languagesTable->update(new stdClass());
    }

    /**
     * Test the delete method with a valid ID.
     * Ensures that a Language object can be soft-deleted successfully.
     */
    public function testDeleteValidId(): void
    {
        // Find the Language object to be deleted
        $language = $this->languagesTable->findSearchedBy(["name" => "Updated Language"])[0];

        // Call the delete method with the ID of the Language object
        $result = $this->languagesTable->delete($language->getId());

        // Assert that the delete operation was successful
        $this->assertTrue($result);
    }

    /**
     * Test the delete method with an invalid ID.
     * Verifies that the method returns false when the ID does not exist.
     */
    public function testDeleteInvalidId(): void
    {
        // Call the delete method with an invalid ID
        $result = $this->languagesTable->delete(9999);

        // Assert that the delete operation was not successful
        $this->assertFalse($result);
    }

    /**
     * Test the restore method with a valid ID.
     * Ensures that a soft-deleted Language object can be restored successfully.
     */
    public function testRestoreValidId(): void
    {
        // Find the Language object to be restored
        $language = $this->languagesTable->findSearchedBy(["name" => "Updated Language"])[0];

        // Call the restore method with the ID of the Language object
        $result = $this->languagesTable->restore($language->getId());

        // Assert that the restore operation was successful
        $this->assertTrue($result);
    }

    /**
     * Test the restore method with an invalid ID.
     * Verifies that the method returns false when the ID does not exist.
     */
    public function testRestoreInvalidId(): void
    {
        // Call the restore method with an invalid ID
        $result = $this->languagesTable->restore(9999);

        // Assert that the restore operation was not successful
        $this->assertFalse($result);
    }

    /**
     * Test the remove method with a valid ID.
     * Ensures that a Language object can be hard-deleted successfully.
     */
    public function testRemoveValidId(): void
    {
        // Find the Language object to be removed
        $language = $this->languagesTable->findSearchedBy(["name" => "Updated Language"])[0];

        // Call the remove method with the ID of the Language object
        $result = $this->languagesTable->remove($language->getId());

        // Assert that the remove operation was successful
        $this->assertTrue($result);
    }

    /**
     * Test the remove method with an invalid ID.
     * Verifies that the method returns false when the ID does not exist.
     */
    public function testRemoveInvalidId(): void
    {
        // Call the remove method with an invalid ID
        $result = $this->languagesTable->remove(999);

        // Assert that the remove operation was not successful
        $this->assertFalse($result);
    }
}
