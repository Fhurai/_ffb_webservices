<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/RatingsTable.php';
require_once __DIR__ . '/../../src/entity/Rating.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Parameters::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Rating::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\RatingsTable::class)]
class RatingsTableTest extends TestCase
{
    private RatingsTable $ratingsTable;

    private const INVALID_COLUMN_EXCEPTION_MESSAGE = "Invalid column name: 'invalid_column'";

    /**
     * Set up the RatingsTable instance before each test.
     */
    protected function setUp(): void
    {
        $this->ratingsTable = new RatingsTable("tests", "user");
    }

    public function testGetValidId(): void
    {
        $result = $this->ratingsTable->get(1);
        $this->assertInstanceOf(Rating::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("K+ / 7", $result->getName());
    }

    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->ratingsTable->get(999);
    }

    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->ratingsTable->get("invalid_id");
    }

    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->ratingsTable->findSearchedBy(['name' => 'M / 16']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertEquals("M / 16", $result[0]->getName());
        $this->assertInstanceOf(Rating::class, $result[0]);
    }

    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage(self::INVALID_COLUMN_EXCEPTION_MESSAGE);

        $this->ratingsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        $this->ratingsTable->findSearchedBy([]);
    }

    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->ratingsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(5, $result);
        $this->assertEquals("K / 3", $result[0]->getName());
    }

    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        $this->ratingsTable->findOrderedBy(['name' => 'INVALID']);
    }

    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->ratingsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->ratingsTable->findLimitedBy(['limit' => -1]);
    }

    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        $this->ratingsTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    public function testFindAllWithCriteria(): void
    {
        $result = $this->ratingsTable->findAll([
            'search' => ['name' => 'K%'],
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

        $this->ratingsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    public function testFindAllEmptyArguments(): void
    {
        $result = $this->ratingsTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(5, $result);
    }

    public function testFindAllInvalidSearchCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage(self::INVALID_COLUMN_EXCEPTION_MESSAGE);

        $this->ratingsTable->findAll([
            'search' => ['invalid_column' => 'value']
        ]);
    }

    public function testFindAllInvalidOrderCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage(self::INVALID_COLUMN_EXCEPTION_MESSAGE);

        $this->ratingsTable->findAll([
            'order' => ['invalid_column' => 'ASC']
        ]);
    }

    public function testFindAllInvalidLimitCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->ratingsTable->findAll([
            'limit' => ['limit' => -10]
        ]);
    }
}
