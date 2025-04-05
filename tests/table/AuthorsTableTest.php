<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/AuthorsTable.php';
require_once __DIR__ . '/../../src/entity/Author.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class AuthorsTableTest extends TestCase
{
    private AuthorsTable $authorsTable;

    private int $authorId; // Example author ID for testing

    /**
     * Set up the AuthorsTable instance before each test.
     */
    protected function setUp(): void
    {
        $this->authorsTable = new AuthorsTable("tests", "user");
    }

    /**
     * Test getting an author by its ID.
     */
    public function testGetAuthorById()
    {
        $author = $this->authorsTable->get(1);

        $this->assertEquals(1, $author->getId());
        $this->assertEquals("", $author->getName());
        $this->assertInstanceOf(Author::class, $author);

        // Additional assertions
        $this->assertNotNull($author->getCreationDate(), "Creation date should not be null.");
        $this->assertNull($author->getDeleteDate(), "Delete date should be null for active authors.");
    }

    /**
     * Test getting an author by an ID that does not exist.
     */
    public function testGetAuthorByIdNotFound()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->authorsTable->get(999);

        // Additional assertion to ensure exception is thrown
        $this->assertTrue(true, "Exception was correctly thrown for non-existent ID.");
    }

    /**
     * Test finding authors by exact match.
     */
    public function testFindSearchedByEquality()
    {
        $authors = $this->authorsTable->findSearchedBy([
            "name" => ""
        ]);

        $this->assertCount(1, $authors);
        $this->assertEquals(1, $authors[0]->getId());
        $this->assertEquals("", $authors[0]->getName());
        $this->assertInstanceOf(Author::class, $authors[0]);

        // Additional assertions
        $this->assertNotNull($authors[0]->getCreationDate(), "Creation date should not be null.");
        $this->assertNull($authors[0]->getDeleteDate(), "Delete date should be null for active authors.");
    }

    /**
     * Test finding authors using a LIKE query.
     */
    public function testFindSearchedByLike()
    {
        $authors = $this->authorsTable->findSearchedBy([
            "name" => "LIKE 'J%'"
        ]);

        $this->assertCount(12, $authors);
        $this->assertEquals(276, $authors[0]->getId());
        $this->assertEquals("James Spookie", $authors[0]->getName());
        $this->assertEquals(277, $authors[1]->getId());
        $this->assertEquals("Jayf", $authors[1]->getName());
        $this->assertInstanceOf(Author::class, $authors[0]);
        $this->assertInstanceOf(Author::class, $authors[1]);

        // Additional assertions
        foreach ($authors as $author) {
            $this->assertNotNull($author->getCreationDate(), "Creation date should not be null.");
            $this->assertNull($author->getDeleteDate(), "Delete date should be null for active authors.");
        }
    }

    /**
     * Test finding authors ordered by name in ascending order.
     */
    public function testFindOrderedByAsc()
    {
        $authors = $this->authorsTable->findOrderedBy([
            "name" => "ASC"
        ]);

        $this->assertCount(717, $authors);
        $this->assertEquals("", $authors[0]->getName());
        $this->assertEquals("123irish", $authors[1]->getName());
        $this->assertEquals("1Sakura-Haruno1", $authors[2]->getName());
        foreach ($authors as $author) {
            $this->assertInstanceOf(Author::class, $author);

            // Additional assertions
            $this->assertNotNull($author->getCreationDate(), "Creation date should not be null.");
            $this->assertNull($author->getDeleteDate(), "Delete date should be null for active authors.");
        }
    }

    /**
     * Test finding authors with a limit of 2.
     */
    public function testFindLimitedBy02()
    {
        $authors = $this->authorsTable->findLimitedBy([
            "limit" => 2
        ]);

        $this->assertCount(2, $authors);
        $this->assertEquals("", $authors[0]->getName());
        $this->assertEquals("123irish", $authors[1]->getName());
        foreach ($authors as $author) {
            $this->assertInstanceOf(Author::class, $author);

            // Additional assertions
            $this->assertNotNull($author->getCreationDate(), "Creation date should not be null.");
            $this->assertNull($author->getDeleteDate(), "Delete date should be null for active authors.");
        }
    }

    /**
     * Test creating a new author.
     */
    public function testCreateAuthor()
    {
        $author = new Author();
        $author->setName("New Author");
        $author->setCreationDate(new DateTime("2023-01-01"));
        $author->setUpdateDate(new DateTime("2023-01-01"));
        $author->setDeleteDate(null);

        $createdAuthor = $this->authorsTable->create($author);

        $this->assertNotNull($createdAuthor->getId());

        $this->assertEquals("New Author", $createdAuthor->getName());
        $this->assertInstanceOf(Author::class, $createdAuthor);
    }

    /**
     * Test updating an existing author.
     */
    public function testUpdateAuthor()
    {
        $author = $this->authorsTable->get($this->authorsTable->getLastInsertId());
        $author->setName("Updated Name");

        $updatedAuthor = $this->authorsTable->update($author);

        $this->assertEquals("Updated Name", $updatedAuthor->getName());
        $this->assertInstanceOf(Author::class, $updatedAuthor);
    }

    /**
     * Test soft deleting an author.
     */
    public function testDeleteAuthor()
    {
        $authors = $this->authorsTable->findSearchedBy([
            "name" => "Updated Name"
        ]);
        
        $result = $this->authorsTable->delete($authors[0]->getId());

        $this->assertTrue($result);
    }

    /**
     * Test restoring a soft-deleted author.
     * This method verifies that a previously soft-deleted author can be restored successfully.
     * It checks the state of the author before and after the restore operation.
     */
    public function testRestoreAuthor()
    {
        // Find authors with the name "Updated Name" before the restore operation
        $authors = $this->authorsTable->findSearchedBy([
            "name" => "Updated Name"
        ]);

        // Assert that the authors list is not empty
        $this->assertNotEmpty($authors, "Authors list should not be empty before restore.");
        // Assert that the name of the first author matches "Updated Name"
        $this->assertEquals("Updated Name", $authors[0]->getName(), "Author name should match before restore.");

        // Perform the restore operation on the first author's ID
        $result = $this->authorsTable->restore($authors[0]->getId());

        // Assert that the restore operation was successful
        $this->assertTrue($result, "Restore operation should return true.");

        // Retrieve the restored author by ID
        $restoredAuthor = $this->authorsTable->get($authors[0]->getId());
        // Assert that the restored author exists
        $this->assertNotNull($restoredAuthor, "Restored author should exist.");
        // Assert that the name of the restored author matches "Updated Name"
        $this->assertEquals("Updated Name", $restoredAuthor->getName(), "Restored author name should match.");
    }

    /**
     * Test hard deleting an author.
     * This method ensures that an author can be permanently removed from the database.
     * It validates the state of the author before removal and ensures it no longer exists after removal.
     */
    public function testRemoveAuthor()
    {
        // Find authors with the name "Updated Name" before the removal operation
        $authors = $this->authorsTable->findSearchedBy([
            "name" => "Updated Name"
        ]);

        // Assert that the authors list is not empty
        $this->assertNotEmpty($authors, "Authors list should not be empty before removal.");
        // Assert that the name of the first author matches "Updated Name"
        $this->assertEquals("Updated Name", $authors[0]->getName(), "Author name should match before removal.");

        // Perform the remove operation on the first author's ID
        $result = $this->authorsTable->remove($authors[0]->getId());

        // Assert that the remove operation was successful
        $this->assertTrue($result, "Remove operation should return true.");

        // Expect an exception when trying to retrieve the removed author by ID
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->authorsTable->get($authors[0]->getId());
    }
}