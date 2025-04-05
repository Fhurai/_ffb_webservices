<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/FandomsTable.php';
require_once __DIR__ . '/../../src/entity/Fandom.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class FandomsTableTest extends TestCase
{
    private FandomsTable $fandomsTable;

    /**
     * Set up the FandomsTable instance before each test.
     */
    protected function setUp(): void
    {
        $this->fandomsTable = new FandomsTable("tests", "user");
    }

    /**
     * Test getting a fandom by its ID.
     * This method verifies that a fandom can be retrieved by its unique ID.
     */
    public function testGetFandomById()
    {
        $fandom = $this->fandomsTable->get(1);

        // Assert that the retrieved fandom has the expected ID.
        $this->assertEquals(1, $fandom->getId(), "The ID of the retrieved fandom should be 1.");
        // Assert that the retrieved fandom has the expected name ("Avengers" in this case).
        $this->assertEquals("Avengers", $fandom->getName(), "The name of the retrieved fandom should be 'Avengers'.");
        // Assert that the retrieved object is an instance of the Fandom class.
        $this->assertInstanceOf(Fandom::class, $fandom, "The retrieved object should be an instance of the Fandom class.");
    }

    /**
     * Test getting a fandom by an ID that does not exist.
     * This method ensures an exception is thrown when a non-existent ID is queried.
     */
    public function testGetFandomByIdNotFound()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Attempt to retrieve a fandom with a non-existent ID (999), which should trigger the exception.
        $this->fandomsTable->get(999);
    }

    /**
     * Test finding fandoms by exact match.
     * This method checks if fandoms can be searched by exact field values.
     */
    public function testFindSearchedByEquality()
    {
        $fandoms = $this->fandomsTable->findSearchedBy([
            "name" => ""
        ]);

        // Assert that no fandoms are returned in the result set.
        $this->assertCount(0, $fandoms, "The result set should contain 0 fandoms.");
        // If there are any results, assert that the first object in the result set is an instance of the Fandom class.
        if (count($fandoms) > 0) {
            $this->assertInstanceOf(Fandom::class, $fandoms[0], "Each result should be an instance of the Fandom class.");
        }
    }

    /**
     * Test finding fandoms using a LIKE query.
     * This method validates the ability to search fandoms using partial matches.
     */
    public function testFindSearchedByLike()
    {
        $fandoms = $this->fandomsTable->findSearchedBy([
            "name" => "LIKE 'A%'"
        ]);

        // Assert that exactly one fandom is returned.
        $this->assertCount(1, $fandoms, "The result set should contain exactly 1 fandom.");
        // Assert that the first fandom has the expected ID and name.
        $this->assertEquals(1, $fandoms[0]->getId(), "The ID of the first fandom should be 1.");
        $this->assertEquals("Avengers", $fandoms[0]->getName(), "The name of the first fandom should be 'Avengers'.");
        // Assert that the first object is an instance of the Fandom class.
        $this->assertInstanceOf(Fandom::class, $fandoms[0], "The first result should be an instance of the Fandom class.");
    }

    /**
     * Test finding fandoms ordered by name in ascending order.
     * This method ensures fandoms can be retrieved in a specific order.
     */
    public function testFindOrderedByAsc()
    {
        $fandoms = $this->fandomsTable->findOrderedBy([
            "name" => "ASC"
        ]);

        $this->assertCount(21, $fandoms);
        $this->assertEquals("Avengers", $fandoms[0]->getName());
        $this->assertEquals("Boruto: Naruto Next Generations", $fandoms[1]->getName());
        foreach ($fandoms as $fandom) {
            $this->assertInstanceOf(Fandom::class, $fandom);
        }
    }

    /**
     * Test finding fandoms with a limit of 2.
     * This method verifies that the number of results can be limited.
     */
    public function testFindLimitedBy02()
    {
        $fandoms = $this->fandomsTable->findLimitedBy([
            "limit" => 2
        ]);

        $this->assertCount(2, $fandoms);
        $this->assertEquals("Avengers", $fandoms[0]->getName());
        $this->assertEquals("Boruto: Naruto Next Generations", $fandoms[1]->getName());
        foreach ($fandoms as $fandom) {
            $this->assertInstanceOf(Fandom::class, $fandom);
        }
    }

    /**
     * Test creating a new fandom.
     * This method ensures a new fandom can be added to the database.
     */
    public function testCreateFandom()
    {
        $fandom = new Fandom();
        $fandom->setName("New Fandom");
        $fandom->setCreationDate(new DateTime("2023-01-01"));
        $fandom->setUpdateDate(new DateTime("2023-01-01"));
        $fandom->setDeleteDate(null);

        $createdFandom = $this->fandomsTable->create($fandom);

        $this->assertNotNull($createdFandom->getId());
        $this->assertEquals("New Fandom", $createdFandom->getName());
        $this->assertInstanceOf(Fandom::class, $createdFandom);
    }

    /**
     * Test updating an existing fandom.
     * This method validates that a fandom's details can be updated.
     */
    public function testUpdateFandom()
    {
        $fandom = $this->fandomsTable->get($this->fandomsTable->getLastInsertId());
        $fandom->setName("Updated Fandom");

        $updatedFandom = $this->fandomsTable->update($fandom);

        $this->assertEquals("Updated Fandom", $updatedFandom->getName());
        $this->assertInstanceOf(Fandom::class, $updatedFandom);
    }

    /**
     * Test soft deleting a fandom.
     * This method ensures a fandom can be marked as deleted.
     */
    public function testDeleteFandom()
    {
        $fandoms = $this->fandomsTable->findSearchedBy([
            "name" => "Updated Fandom"
        ]);

        $result = $this->fandomsTable->delete($fandoms[0]->getId());

        $this->assertTrue($result);
    }

    /**
     * Test restoring a soft-deleted fandom.
     * This method verifies that a deleted fandom can be restored.
     */
    public function testRestoreFandom()
    {
        $fandoms = $this->fandomsTable->findSearchedBy([
            "name" => "Updated Fandom"
        ]);

        $this->assertNotEmpty($fandoms);
        $this->assertEquals("Updated Fandom", $fandoms[0]->getName());

        $result = $this->fandomsTable->restore($fandoms[0]->getId());

        $this->assertTrue($result);

        $restoredFandom = $this->fandomsTable->get($fandoms[0]->getId());
        $this->assertNotNull($restoredFandom);
        $this->assertEquals("Updated Fandom", $restoredFandom->getName());
    }

    /**
     * Test hard deleting a fandom.
     * This method ensures a fandom can be permanently removed.
     */
    public function testRemoveFandom()
    {
        $fandoms = $this->fandomsTable->findSearchedBy([
            "name" => "Updated Fandom"
        ]);

        $this->assertNotEmpty($fandoms);
        $this->assertEquals("Updated Fandom", $fandoms[0]->getName());

        $result = $this->fandomsTable->remove($fandoms[0]->getId());

        $this->assertTrue($result);

        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->fandomsTable->get($fandoms[0]->getId());
    }
}