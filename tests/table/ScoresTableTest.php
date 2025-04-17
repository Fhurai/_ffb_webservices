<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/ScoresTable.php';
require_once __DIR__ . '/../../src/entity/Score.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Parameters::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Score::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ScoresTable::class)]
class ScoresTableTest extends TestCase
{
    private ScoresTable $scoresTable;

    private const INVALID_COLUMN_EXCEPTION_MESSAGE = "Invalid column name: 'invalid_column'";

    protected function setUp(): void
    {
        $this->scoresTable = new ScoresTable("tests", "user");
    }

    public function testGetValidId(): void
    {
        $result = $this->scoresTable->get(1);
        $this->assertInstanceOf(Score::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Poor", $result->getName());
    }

    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->scoresTable->get(999);
    }

    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->scoresTable->get("invalid_id");
    }

    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->scoresTable->findSearchedBy(['name' => 'Excellent%']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Score::class, $result[0]);
    }

    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage(self::INVALID_COLUMN_EXCEPTION_MESSAGE);

        $this->scoresTable->findSearchedBy(['invalid_column' => 'value']);
    }

    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        $this->scoresTable->findSearchedBy([]);
    }

    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->scoresTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(6, $result);
        $this->assertEquals("Acceptable", $result[0]->getName());
    }

    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        $this->scoresTable->findOrderedBy(['name' => 'INVALID']);
    }

    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->scoresTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->scoresTable->findLimitedBy(['limit' => -1]);
    }

    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        $this->scoresTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    public function testFindAllWithCriteria(): void
    {
        $result = $this->scoresTable->findAll([
            'search' => ['name' => 'P%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
    }

    public function testFindAllNoResults(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->scoresTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    public function testFindAllEmptyArguments(): void
    {
        $result = $this->scoresTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(6, $result);
    }

    public function testFindAllInvalidSearchCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage(self::INVALID_COLUMN_EXCEPTION_MESSAGE);

        $this->scoresTable->findAll([
            'search' => ['invalid_column' => 'value']
        ]);
    }

    public function testFindAllInvalidOrderCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage(self::INVALID_COLUMN_EXCEPTION_MESSAGE);

        $this->scoresTable->findAll([
            'order' => ['invalid_column' => 'ASC']
        ]);
    }

    public function testFindAllInvalidLimitCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->scoresTable->findAll([
            'limit' => ['limit' => -10]
        ]);
    }
}
