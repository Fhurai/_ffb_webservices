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
#[\PHPUnit\Framework\Attributes\CoversClass(\AuthorBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Character::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\CharacterBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ComplexEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EvaluableTrait::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FandomBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Fanfiction::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FanfictionBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FanfictionsTable::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Language::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\LanguageBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Link::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\LinkBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Parameters::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\RelationBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Tag::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\TagBuilder::class)]
class FanfictionsTableTest extends TestCase
{
    private const NEW_FANFICTION_NAME = 'New Fanfiction';
    private const UPDATED_FANFICTION_NAME = 'Updated Fanfiction';

    private FanfictionsTable $fanfictionsTable;

    protected function setUp(): void
    {
        $this->fanfictionsTable = new FanfictionsTable("tests", "user");
    }

    public function testGetValidId(): void
    {
        $result = $this->fanfictionsTable->get(1);

        $this->assertInstanceOf(Fanfiction::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Dancing Dragonflies", $result->getName());
    }

    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->fanfictionsTable->get(0);
    }

    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->fanfictionsTable->get("invalid_id");
    }

    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->fanfictionsTable->findSearchedBy(['name' => 'Harry Potter%']);
        $this->assertIsArray($result);
        $this->assertCount(26, $result);
        $this->assertInstanceOf(Fanfiction::class, $result[0]);
    }

    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");
        $this->fanfictionsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");
        $this->fanfictionsTable->findSearchedBy([]);
    }

    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->fanfictionsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(1061, $result);
        $this->assertEquals("'Til We Find Ourselves, Again", $result[0]->getName());
    }

    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");
        $this->fanfictionsTable->findOrderedBy(['name' => 'INVALID']);
    }

    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->fanfictionsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");
        $this->fanfictionsTable->findLimitedBy(['limit' => -1]);
    }

    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");
        $this->fanfictionsTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    public function testFindAllWithCriteria(): void
    {
        $result = $this->fanfictionsTable->findAll([
            'search' => ['name' => 'Naruto%'],
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
        $this->fanfictionsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    public function testFindAllEmptyArguments(): void
    {
        $result = $this->fanfictionsTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(1061, $result);
    }

    public function testCreateValid(): void
    {
        $fanfiction = (new FanfictionBuilder())
            ->withName(self::NEW_FANFICTION_NAME)
            ->withAuthorId(1)
            ->withRatingId(1)
            ->withDescription("Description")
            ->withLanguageId(1)
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdFanfiction = $this->fanfictionsTable->create($fanfiction);

        $this->assertInstanceOf(Fanfiction::class, $createdFanfiction);
        $this->assertNotNull($createdFanfiction->getId());
        $this->assertEquals(self::NEW_FANFICTION_NAME, $createdFanfiction->getName());
    }

    public function testCreateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->fanfictionsTable->create(new stdClass());
    }

    public function testUpdateValid(): void
    {
        $fanfiction = $this->fanfictionsTable->findSearchedBy(["name" => self::NEW_FANFICTION_NAME])[0];
        $fanfiction->setName(self::UPDATED_FANFICTION_NAME);
        $fanfiction->setUpdateDate(new DateTime());

        $updatedFanfiction = $this->fanfictionsTable->update($fanfiction);

        $this->assertInstanceOf(Fanfiction::class, $updatedFanfiction);
        $this->assertEquals(self::UPDATED_FANFICTION_NAME, $updatedFanfiction->getName());
    }

    public function testUpdateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->fanfictionsTable->update(new stdClass());
    }

    public function testDeleteValidId(): void
    {
        $fanfiction = $this->fanfictionsTable->findSearchedBy(["name" => self::UPDATED_FANFICTION_NAME])[0];
        $result = $this->fanfictionsTable->delete($fanfiction->getId());

        $this->assertTrue($result);
    }

    public function testDeleteInvalidId(): void
    {
        $result = $this->fanfictionsTable->delete(9999);
        $this->assertFalse($result);
    }

    public function testRestoreValidId(): void
    {
        $fanfiction = $this->fanfictionsTable->findSearchedBy(["name" => self::UPDATED_FANFICTION_NAME])[0];
        $result = $this->fanfictionsTable->restore($fanfiction->getId());

        $this->assertTrue($result);
    }

    public function testRestoreInvalidId(): void
    {
        $result = $this->fanfictionsTable->restore(9999);
        $this->assertFalse($result);
    }

    public function testRemoveValidId(): void
    {
        $fanfiction = $this->fanfictionsTable->findSearchedBy(["name" => self::UPDATED_FANFICTION_NAME])[0];
        $result = $this->fanfictionsTable->remove($fanfiction->getId());

        $this->assertTrue($result);
    }

    public function testRemoveInvalidId(): void
    {
        $result = $this->fanfictionsTable->remove(0);
        $this->assertFalse($result);
    }
}
