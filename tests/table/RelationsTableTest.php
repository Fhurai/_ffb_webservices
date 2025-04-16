<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/builder/RelationBuilder.php';
require_once __DIR__ . '/../../src/table/RelationsTable.php';
require_once __DIR__ . '/../../src/entity/Relation.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

/**
 * Class RelationsTableTest
 *
 * This class contains unit tests for the RelationsTable class, which handles operations
 * related to the "relations" table in the database. It tests methods for retrieving,
 * searching, ordering, creating, updating, deleting, and restoring relations.
 */
class RelationsTableTest extends TestCase
{
    private RelationsTable $relationsTable;

    /**
     * Sets up the RelationsTable instance for testing.
     */
    protected function setUp(): void
    {
        // Initialize the RelationsTable instance with test parameters for testing.
        $this->relationsTable = new RelationsTable("tests", "user");
    }

    /**
     * Tests retrieving a relation by a valid ID.
     */
    public function testGetValidId(): void
    {
        // Test retrieving a relation by a valid ID and verify its properties.
        $result = $this->relationsTable->get(1);
        $this->assertInstanceOf(Relation::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Angelise Ikaruga Misurugi / Hilda Schlievogt / Tusk", $result->getName());
        $this->assertNotNull($result->getCharacters());
        $this->assertIsArray($result->getCharacters());
        $this->assertCount(3, $result->getCharacters());
    }

    /**
     * Tests retrieving a relation by an invalid ID.
     */
    public function testGetInvalidId(): void
    {
        // Test retrieving a relation by an invalid ID and expect an exception.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->relationsTable->get(999);
    }

    /**
     * Tests searching for relations by valid criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        // Test searching for relations by valid criteria and verify the results.
        $result = $this->relationsTable->findSearchedBy(['name' => 'Hyuuga Hinata%']);
        $this->assertIsArray($result);
        $this->assertCount(8, $result);
        $this->assertInstanceOf(Relation::class, $result[0]);
        $this->assertEquals("Hyuuga Hinata / Hyuuga Neji / Uzumaki Naruto", $result[0]->getName());
        $this->assertNotNull($result[0]->getCharacters());
        $this->assertIsArray($result[0]->getCharacters());
        $this->assertCount(3, $result[0]->getCharacters());
    }

    /**
     * Tests ordering relations by valid criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        // Test ordering relations by valid criteria and verify the order of results.
        $result = $this->relationsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertNotEmpty($result);
        $this->assertEquals("A / Shulk", $result[0]->getName());
        $this->assertInstanceOf(Relation::class, $result[0]);
        $this->assertNotNull($result[0]->getCharacters());
        $this->assertIsArray($result[0]->getCharacters());
        $this->assertCount(2, $result[0]->getCharacters());
    }

    /**
     * Tests limiting the number of relations retrieved by valid criteria.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        // Test limiting the number of relations retrieved by valid criteria and verify the count.
        $result = $this->relationsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
        foreach ($result as $relation) {
            $this->assertInstanceOf(Relation::class, $relation);
            $this->assertNotNull($relation->getId());
            $this->assertNotNull($relation->getName());
        }
    }

    /**
     * Tests retrieving all relations with specific criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        // Test retrieving all relations with specific criteria and verify the results.
        $result = $this->relationsTable->findAll([
            'search' => ['name' => 'Harry%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertNotEmpty($result);
        foreach ($result as $relation) {
            $this->assertInstanceOf(Relation::class, $relation);
            $this->assertNotNull($relation->getId());
            $this->assertNotNull($relation->getName());
        }
    }

    /**
     * Tests creating a new relation with valid data.
     */
    public function testCreateValid(): void
    {
        $characters = new CharactersTable("tests", "user");
        $characters = [
            $characters->get(1),
            $characters->get(2),
            $characters->get(3)
        ];

        // Test creating a new relation with valid data and verify its properties.
        $relation = (new RelationBuilder())
            ->withCharacters($characters)
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdRelation = $this->relationsTable->create($relation);

        $this->assertInstanceOf(Relation::class, $createdRelation);
        $this->assertNotNull($createdRelation->getId());
        $this->assertEquals("Angelise Ikaruga Misurugi / Hilda Schlievogt / Salamandinay", $createdRelation->getName());
        $this->assertNotNull($createdRelation->getCreationDate());
        $this->assertNotNull($createdRelation->getUpdateDate());
        $this->assertNotNull($createdRelation->getCharacters());
        $this->assertIsArray($createdRelation->getCharacters());
        $this->assertCount(3, $createdRelation->getCharacters());
    }

    /**
     * Tests updating an existing relation with valid data.
     */
    public function testUpdateValid(): void
    {
        // Test updating an existing relation with valid data:
        // 1. Retrieve a relation by searching for a specific name.
        $relation = $this->relationsTable->findSearchedBy(["name" => "Angelise Ikaruga Misurugi / Hilda Schlievogt / Salamandinay"])[0];

        // 2. Update the name of the relation to "UpdatedRelation".
        $relation->setName("UpdatedRelation");

        // 3. Set the update date to the current date and time.
        $relation->setUpdateDate(new DateTime());

        // 4. Call the update method to save the changes.
        $updatedRelation = $this->relationsTable->update($relation);

        $this->assertTrue($relation->hasCharacters());

        // 5. Verify that the updated relation is an instance of the Relation class.
        $this->assertInstanceOf(Relation::class, $updatedRelation);

        // 6. Verify that the name of the updated relation matches the new name.
        $this->assertEquals("UpdatedRelation", $updatedRelation->getName());
    }

    /**
     * Tests deleting a relation by a valid ID.
     */
    public function testDeleteValidId(): void
    {
        // Test deleting a relation by a valid ID:
        // 1. Retrieve a relation by searching for a specific name.
        $relation = $this->relationsTable->findSearchedBy(["name" => "UpdatedRelation"])[0];

        // 2. Call the delete method with the relation's ID.
        $result = $this->relationsTable->delete($relation->getId());

        // 3. Verify that the delete operation returns true, indicating success.
        $this->assertTrue($result);
    }

    /**
     * Tests restoring a previously deleted relation by a valid ID.
     */
    public function testRestoreValidId(): void
    {
        // Test restoring a previously deleted relation by a valid ID:
        // 1. Retrieve a relation by searching for a specific name.
        $relation = $this->relationsTable->findSearchedBy(["name" => "UpdatedRelation"])[0];

        // 2. Call the restore method with the relation's ID.
        $result = $this->relationsTable->restore($relation->getId());

        // 3. Verify that the restore operation returns true, indicating success.
        $this->assertTrue($result);
    }

    /**
     * Tests permanently removing a relation by a valid ID.
     */
    public function testRemoveValidId(): void
    {
        // Test permanently removing a relation by a valid ID:
        // 1. Retrieve a relation by searching for a specific name.
        $relation = $this->relationsTable->findSearchedBy(["name" => "UpdatedRelation"])[0];

        // 2. Call the delete method with the relation's ID.
        $this->relationsTable->delete($relation->getId());

        // 3. Call the remove method with the relation's ID.
        $result = $this->relationsTable->remove($relation->getId());

        // 4. Verify that the remove operation returns true, indicating success.
        $this->assertTrue($result);
    }
}
