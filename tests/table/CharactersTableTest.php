<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/CharactersTable.php';
require_once __DIR__ . '/../../src/entity/Character.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

class CharactersTableTest extends TestCase
{
    private CharactersTable $charactersTable;

    protected function setUp(): void
    {
        $this->charactersTable = new CharactersTable("tests", "user");
    }

    public function testGetValidId(): void
    {
        $result = $this->charactersTable->get(1);
        $this->assertInstanceOf(Character::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Angelise Ikaruga Misurugi", $result->getName());
        $this->assertTrue($result->hasFandom());
        $this->assertEquals(3, $result->getFandomId());
        $this->assertEquals("クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon", $result->getFandom()->getName());
    }

    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->charactersTable->get(999);
    }

    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->charactersTable->get("invalid_id");
    }

    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->charactersTable->findSearchedBy(['name' => 'Hyuuga Hinata']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Character::class, $result[0]);
    }

    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->charactersTable->findSearchedBy(['invalid_column' => 'value']);
    }

    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        $this->charactersTable->findSearchedBy([]);
    }

    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->charactersTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(508, $result); // Adjust count as needed
        $this->assertEquals("A", $result[0]->getName());
    }

    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        $this->charactersTable->findOrderedBy(['name' => 'INVALID']);
    }

    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->charactersTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->charactersTable->findLimitedBy(['limit' => -1]);
    }

    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        $this->charactersTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    public function testFindAllWithCriteria(): void
    {
        $result = $this->charactersTable->findAll([
            'search' => ['name' => 'C%'],
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

        $this->charactersTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    public function testFindAllEmptyArguments(): void
    {
        $result = $this->charactersTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(508, $result); // Adjust count as needed
    }

    public function testFindAllInvalidSearchCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->charactersTable->findAll([
            'search' => ['invalid_column' => 'value']
        ]);
    }

    public function testFindAllInvalidOrderCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->charactersTable->findAll([
            'order' => ['invalid_column' => 'ASC']
        ]);
    }

    public function testFindAllInvalidLimitCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->charactersTable->findAll([
            'limit' => ['limit' => -10]
        ]);
    }

    public function testCreateValid(): void
    {
        $character = (new CharacterBuilder())
            ->withName("New Character")
            ->withFandomId(1)
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdCharacter = $this->charactersTable->create($character);

        $this->assertInstanceOf(Character::class, $createdCharacter);
        $this->assertNotNull($createdCharacter->getId());
        $this->assertEquals("New Character", $createdCharacter->getName());
        $this->assertTrue($createdCharacter->hasFandom());
        $this->assertEquals(1, $createdCharacter->getFandomId());
        $this->assertEquals("Avengers", $createdCharacter->getFandom()->getName());
    }

    public function testCreateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->charactersTable->create(new stdClass());
    }

    public function testUpdateValid(): void
    {
        $character = $this->charactersTable->findSearchedBy(["name" => "New Character"])[0];
        $character->setName("Updated Character");
        $character->setUpdateDate(new DateTime());

        $updatedCharacter = $this->charactersTable->update($character);

        $this->assertInstanceOf(Character::class, $updatedCharacter);
        $this->assertEquals("Updated Character", $updatedCharacter->getName());
        $this->assertTrue($updatedCharacter->hasFandom());
        $this->assertEquals(1, $updatedCharacter->getFandomId());
        $this->assertEquals("Avengers", $updatedCharacter->getFandom()->getName());
    }

    public function testUpdateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->charactersTable->update(new stdClass());
    }

    public function testDeleteValidId(): void
    {
        $character = $this->charactersTable->findSearchedBy(["name" => "Updated Character"])[0];
        $result = $this->charactersTable->delete($character->getId());
        $this->assertTrue($result);
    }

    public function testDeleteInvalidId(): void
    {
        $result = $this->charactersTable->delete(9999);
        $this->assertFalse($result);
    }

    public function testRestoreValidId(): void
    {
        $character = $this->charactersTable->findSearchedBy(["name" => "Updated Character"])[0];
        $result = $this->charactersTable->restore($character->getId());
        $this->assertTrue($result);
    }

    public function testRestoreInvalidId(): void
    {
        $result = $this->charactersTable->restore(9999);
        $this->assertFalse($result);
    }

    public function testRemoveValidId(): void
    {
        $character = $this->charactersTable->findSearchedBy(["name" => "Updated Character"])[0];
        $result = $this->charactersTable->remove($character->getId());
        $this->assertTrue($result);
    }

    public function testRemoveInvalidId(): void
    {
        $result = $this->charactersTable->remove(999);
        $this->assertFalse($result);
    }
}
