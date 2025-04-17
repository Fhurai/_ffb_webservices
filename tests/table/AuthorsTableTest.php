<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/AuthorsTable.php';
require_once __DIR__ . '/../../src/entity/Author.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\AuthorBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\AuthorsTable::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntityBuilder::class)]
class AuthorsTableTest extends TestCase
{
    private AuthorsTable $authorsTable;

    /**
     * Set up the AuthorsTable instance before each test.
     * This method initializes the AuthorsTable object with test-specific parameters.
     */
    protected function setUp(): void
    {
        $this->authorsTable = new AuthorsTable("tests", "user");
    }

    /**
     * Test the get method with a valid ID.
     * Ensures that the method returns an Author object with the expected properties.
     */
    public function testGetValidId(): void
    {
        $result = $this->authorsTable->get(1);
        $this->assertInstanceOf(Author::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("", $result->getName());
    }

    /**
     * Test the get method with an invalid ID.
     * Verifies that an exception is thrown when the ID does not exist.
     */
    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->authorsTable->get(999);
    }

    /**
     * Test the get method with a non-integer ID.
     * Ensures that a TypeError is thrown when the ID is not an integer.
     */
    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->authorsTable->get("invalid_id");
    }

    /**
     * Test the findSearchedBy method with valid search criteria.
     * Ensures that the method returns an array of Author objects matching the criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->authorsTable->findSearchedBy(['name' => 'A. LaRosa']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Author::class, $result[0]);
    }

    /**
     * Test the findSearchedBy method with invalid search criteria.
     * Verifies that an exception is thrown for invalid column names.
     */
    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->authorsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    /**
     * Test the findSearchedBy method with empty search criteria.
     * Verifies that an exception is thrown when no search arguments are provided.
     */
    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        $this->authorsTable->findSearchedBy([]);
    }

    /**
     * Test the findOrderedBy method with valid order criteria.
     * Ensures that the method returns an array of Author objects ordered by the specified criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->authorsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(717, $result);
        $this->assertEquals("", $result[0]->getName());
    }

    /**
     * Test the findOrderedBy method with invalid order direction.
     * Verifies that an exception is thrown for invalid order directions.
     */
    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        $this->authorsTable->findOrderedBy(['name' => 'INVALID']);
    }

    /**
     * Test the findLimitedBy method with valid limit and offset.
     * Ensures that the method returns an array of Author objects within the specified limit and offset.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->authorsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Test the findLimitedBy method with a negative limit.
     * Verifies that an exception is thrown for negative limit values.
     */
    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->authorsTable->findLimitedBy(['limit' => -1]);
    }

    /**
     * Test the findLimitedBy method with a negative offset.
     * Verifies that an exception is thrown for negative offset values.
     */
    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        $this->authorsTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    /**
     * Test the findAll method with combined criteria.
     * Ensures that the method returns an array of Author objects matching the combined criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        $result = $this->authorsTable->findAll([
            'search' => ['name' => 'J%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Test the findAll method with no results.
     * Verifies that an exception is thrown when no results are found.
     */
    public function testFindAllNoResults(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->authorsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    /**
     * Test the findAll method with empty arguments.
     * Ensures that the method returns all Author objects when no arguments are provided.
     */
    public function testFindAllEmptyArguments(): void
    {
        // Call the findAll method with empty arguments
        $result = $this->authorsTable->findAll([]);

        // Assert that the result is an array
        $this->assertIsArray($result);

        // Assert that the array contains 717 elements
        $this->assertCount(717, $result);
    }

    /**
     * Test the findAll method with invalid search criteria.
     * Verifies that an exception is thrown for invalid column names in search criteria.
     */
    public function testFindAllInvalidSearchCriteria(): void
    {
        // Expect an exception of type FfbTableException
        $this->expectException(FfbTableException::class);

        // Expect the exception message to match the invalid column name error
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        // Call the findAll method with invalid search criteria
        $this->authorsTable->findAll([
            'search' => ['invalid_column' => 'value']
        ]);
    }

    /**
     * Test the findAll method with invalid order criteria.
     * Verifies that an exception is thrown for invalid column names in order criteria.
     */
    public function testFindAllInvalidOrderCriteria(): void
    {
        // Expect an exception of type FfbTableException
        $this->expectException(FfbTableException::class);

        // Expect the exception message to match the invalid column name error
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        // Call the findAll method with invalid order criteria
        $this->authorsTable->findAll([
            'order' => ['invalid_column' => 'ASC']
        ]);
    }

    /**
     * Test the findAll method with invalid limit criteria.
     * Verifies that an exception is thrown for invalid limit values.
     */
    public function testFindAllInvalidLimitCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->authorsTable->findAll([
            'limit' => ['limit' => -10]
        ]);
    }

    /**
     * Test the create method with valid data.
     * Ensures that a new Author object can be created successfully.
     */
    public function testCreateValid(): void
    {
        // Create a new Author object using the AuthorBuilder
        $author = (new AuthorBuilder())
            ->withName("New Author") // Set the name of the author
            ->withCreationDate(new DateTime()) // Set the creation date
            ->withUpdateDate(new DateTime()) // Set the update date
            ->build(); // Build the Author object

        // Call the create method to save the new Author object
        $createdAuthor = $this->authorsTable->create($author);

        // Assert that the created object is an instance of Author
        $this->assertInstanceOf(Author::class, $createdAuthor);

        // Assert that the created Author object has a non-null ID
        $this->assertNotNull($createdAuthor->getId());

        // Assert that the name of the created Author matches the expected value
        $this->assertEquals("New Author", $createdAuthor->getName());
    }

    /**
     * Test the create method with invalid entity type.
     * Ensures that a TypeError is thrown when the provided entity is not of the expected type.
     */
    public function testCreateInvalidEntity(): void
    {
        // Expect a TypeError exception to be thrown
        $this->expectException(TypeError::class);

        // Expect the exception message to indicate the invalid entity type
        $this->expectExceptionMessage("Argument #1 (\$entity) must be of type Entity, stdClass given");

        // Call the create method with an invalid entity type (stdClass)
        $this->authorsTable->create(new stdClass());
    }

    /**
     * Test the update method with valid data.
     * Ensures that an Author object can be updated and the changes are reflected.
     */
    public function testUpdateValid(): void
    {
        // Find an existing Author object by name
        $author = $this->authorsTable->findSearchedBy(["name" => "New Author"])[0];

        // Update the name and update date of the Author object
        $author->setName("Updated Author");
        $author->setUpdateDate(new DateTime());

        // Call the update method to save the changes
        $updatedAuthor = $this->authorsTable->update($author);

        // Assert that the updated object is an instance of Author
        $this->assertInstanceOf(Author::class, $updatedAuthor);

        // Assert that the updated Author object has a different ID
        $this->assertNotEquals(1, $updatedAuthor->getId());

        // Assert that the name of the updated Author matches the expected value
        $this->assertEquals("Updated Author", $updatedAuthor->getName());
    }

    /**
     * Test the update method with invalid entity type.
     * Verifies that a TypeError is thrown when the provided entity is not of the expected type.
     */
    public function testUpdateInvalidEntity(): void
    {
        // Expect a TypeError exception to be thrown
        $this->expectException(TypeError::class);

        // Expect the exception message to indicate the invalid entity type
        $this->expectExceptionMessage("Argument #1 (\$entity) must be of type Entity, stdClass given");

        // Call the update method with an invalid entity type (stdClass)
        $this->authorsTable->update(new stdClass());
    }

    /**
     * Test the delete method with a valid ID.
     * Ensures that an Author object can be deleted successfully.
     */
    public function testDeleteValidId(): void
    {
        // Find an existing Author object by name
        $author = $this->authorsTable->findSearchedBy(["name" => "Updated Author"])[0];

        // Call the delete method with the ID of the Author object
        $result = $this->authorsTable->delete($author->getId());

        // Assert that the delete operation was successful
        $this->assertTrue($result);
    }

    /**
     * Test the delete method with an invalid ID.
     * Verifies that the method returns false when the ID does not exist.
     */
    public function testDeleteInvalidId(): void
    {
        // Call the delete method with a non-existent ID
        $result = $this->authorsTable->delete(9999);

        // Assert that the delete operation failed
        $this->assertFalse($result);
    }

    /**
     * Test the restore method with a valid ID.
     * Ensures that a deleted Author object can be restored successfully.
     */
    public function testRestoreValidId(): void
    {
        // Find an Author object by name
        $author = $this->authorsTable->findSearchedBy(["name" => "Updated Author"])[0];

        // Attempt to restore the Author object by its ID
        $result = $this->authorsTable->restore($author->getId());

        // Assert that the restore operation was successful
        $this->assertTrue($result);
    }

    /**
     * Test the restore method with an invalid ID.
     * Verifies that the method returns false when the ID does not exist.
     */
    public function testRestoreInvalidId(): void
    {
        // Attempt to restore an Author object with a non-existent ID
        $result = $this->authorsTable->restore(9999);

        // Assert that the restore operation failed
        $this->assertFalse($result);
    }

    /**
     * Test the remove method with a valid ID.
     * Ensures that an Author object can be removed successfully.
     */
    public function testRemoveValidId(): void
    {
        // Find an Author object by name
        $author = $this->authorsTable->findSearchedBy(["name" => "Updated Author"])[0];

        // Delete the Author object to ensure it exists before removal
        $this->authorsTable->delete($author->getId());

        // Attempt to remove the Author object by its ID
        $result = $this->authorsTable->remove($author->getId());

        // Assert that the remove operation was successful
        $this->assertTrue($result);
    }

    /**
     * Test the remove method with an invalid ID.
     * Verifies that the method returns false when the ID does not exist.
     */
    public function testRemoveInvalidId(): void
    {
        // Attempt to remove an Author object with a non-existent ID
        $result = $this->authorsTable->remove(999);

        // Assert that the remove operation failed
        $this->assertFalse($result);
    }
}
