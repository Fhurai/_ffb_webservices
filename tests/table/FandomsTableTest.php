<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/FandomsTable.php';
require_once __DIR__ . '/../../src/entity/Fandom.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FandomBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FandomsTable::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntityBuilder::class)]
class FandomsTableTest extends TestCase
{
    private FandomsTable $fandomsTable;

    private const NEW_FANDOM_NAME = 'New Fandom';
    private const UPDATED_FANDOM_NAME = 'Updated Fandom';

    protected function setUp(): void
    {
        $this->fandomsTable = new FandomsTable("tests", "user");
    }

    public function testGetValidId(): void
    {
        $result = $this->fandomsTable->get(1);
        $this->assertInstanceOf(Fandom::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Avengers", $result->getName());
    }

    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->fandomsTable->get(999);
    }

    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->fandomsTable->get("invalid_id");
    }

    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->fandomsTable->findSearchedBy(['name' => 'Naruto']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Fandom::class, $result[0]);
    }

    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");
        $this->fandomsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");
        $this->fandomsTable->findSearchedBy([]);
    }

    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->fandomsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(21, $result); // Adjust count based on test data
        $this->assertEquals("Avengers", $result[0]->getName());
    }

    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");
        $this->fandomsTable->findOrderedBy(['name' => 'INVALID']);
    }

    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->fandomsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");
        $this->fandomsTable->findLimitedBy(['limit' => -1]);
    }

    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");
        $this->fandomsTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    public function testFindAllWithCriteria(): void
    {
        $result = $this->fandomsTable->findAll([
            'search' => ['name' => 'F%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindAllNoResults(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->fandomsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    public function testFindAllEmptyArguments(): void
    {
        $result = $this->fandomsTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(21, $result); // Adjust count based on test data
    }

    public function testCreateValid(): void
    {
        $fandom = (new FandomBuilder())
            ->withName(self::NEW_FANDOM_NAME)
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdFandom = $this->fandomsTable->create($fandom);
        $this->assertInstanceOf(Fandom::class, $createdFandom);
        $this->assertNotNull($createdFandom->getId());
        $this->assertEquals(self::NEW_FANDOM_NAME, $createdFandom->getName());
    }

    public function testCreateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->fandomsTable->create(new stdClass());
    }

    public function testUpdateValid(): void
    {
        $fandom = $this->fandomsTable->findSearchedBy(["name" => self::NEW_FANDOM_NAME])[0];
        $fandom->setName(self::UPDATED_FANDOM_NAME);
        $fandom->setUpdateDate(new DateTime());

        $updatedFandom = $this->fandomsTable->update($fandom);
        $this->assertInstanceOf(Fandom::class, $updatedFandom);
        $this->assertEquals(self::UPDATED_FANDOM_NAME, $updatedFandom->getName());
    }

    public function testUpdateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->fandomsTable->update(new stdClass());
    }

    public function testDeleteValidId(): void
    {
        $fandom = $this->fandomsTable->findSearchedBy(["name" => self::UPDATED_FANDOM_NAME])[0];
        $result = $this->fandomsTable->delete($fandom->getId());
        $this->assertTrue($result);
    }

    public function testDeleteInvalidId(): void
    {
        $result = $this->fandomsTable->delete(9999);
        $this->assertFalse($result);
    }

    public function testRestoreValidId(): void
    {
        $fandom = $this->fandomsTable->findSearchedBy(["name" => self::UPDATED_FANDOM_NAME])[0];
        $result = $this->fandomsTable->restore($fandom->getId());
        $this->assertTrue($result);
    }

    public function testRestoreInvalidId(): void
    {
        $result = $this->fandomsTable->restore(9999);
        $this->assertFalse($result);
    }

    public function testRemoveValidId(): void
    {
        $fandom = $this->fandomsTable->findSearchedBy(["name" => self::UPDATED_FANDOM_NAME])[0];
        $this->fandomsTable->delete($fandom->getId());
        $result = $this->fandomsTable->remove($fandom->getId());
        $this->assertTrue($result);
    }

    public function testRemoveInvalidId(): void
    {
        $result = $this->fandomsTable->remove(999);
        $this->assertFalse($result);
    }
}
