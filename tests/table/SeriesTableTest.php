<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/SeriesTable.php';
require_once __DIR__ . '/../../src/entity/Series.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

/**
 * Class SeriesTableTest
 *
 * Unit tests for the SeriesTable class.
 */
#[\PHPUnit\Framework\Attributes\CoversClass(\ComplexEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EvaluableTrait::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Series::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\SeriesBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\SeriesTable::class)]
class SeriesTableTest extends TestCase
{
    private SeriesTable $seriesTable;

    private const NEW_SERIES_NAME     = "New Series";
    private const UPDATED_SERIES_NAME = "Updated Series";

    /**
     * Set up the test environment by initializing the SeriesTable instance.
     */
    protected function setUp(): void
    {
        $this->seriesTable = new SeriesTable("tests", "user");
    }

    /**
     * Test retrieving a valid series by ID.
     */
    public function testGetValidId(): void
    {
        $result = $this->seriesTable->get(1);
        $this->assertInstanceOf(Series::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("From Innocent Feelings to Post Crisis", $result->getName());
    }

    /**
     * Test retrieving a series with an invalid ID.
     */
    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->seriesTable->get(0);
    }

    /**
     * Test searching for series by valid criteria.
     */
    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->seriesTable->findSearchedBy(['name' => '%series%']);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
        $this->assertInstanceOf(Series::class, $result[0]);
    }

    /**
     * Test ordering series by valid criteria.
     */
    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->seriesTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(38, $result);
        $this->assertEquals("A Bonding", $result[0]->getName());
    }

    /**
     * Test limiting series by valid criteria.
     */
    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->seriesTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Test retrieving all series with specific criteria.
     */
    public function testFindAllWithCriteria(): void
    {
        $result = $this->seriesTable->findAll([
            'search' => ['name' => '%Boy%'],
            'order'  => ['name' => 'ASC'],
            'limit'  => ['limit' => 2, 'offset' => 0],
        ]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    /**
     * Test creating a valid series entity.
     */
    public function testCreateValid(): void
    {
        $series = (new SeriesBuilder())
            ->withName(self::NEW_SERIES_NAME)
            ->withDescription("Description")
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdSeries = $this->seriesTable->create($series);

        $this->assertInstanceOf(Series::class, $createdSeries);
        $this->assertNotNull($createdSeries->getId());
        $this->assertEquals(self::NEW_SERIES_NAME, $createdSeries->getName());
    }

    /**
     * Test updating a valid series entity.
     */
    public function testUpdateValid(): void
    {
        $series = $this->seriesTable->findSearchedBy(['name' => self::NEW_SERIES_NAME])[0];

        $series->setName(self::UPDATED_SERIES_NAME);
        $series->setUpdateDate(new DateTime());

        $updatedSeries = $this->seriesTable->update($series);

        $this->assertInstanceOf(Series::class, $updatedSeries);
        $this->assertEquals(self::UPDATED_SERIES_NAME, $updatedSeries->getName());
    }

    /**
     * Test deleting a series by a valid ID.
     */
    public function testDeleteValidId(): void
    {
        $series = $this->seriesTable->findSearchedBy(['name' => self::UPDATED_SERIES_NAME])[0];
        $result = $this->seriesTable->delete($series->getId());
        $this->assertTrue($result);
    }

    /**
     * Test restoring a series by a valid ID.
     */
    public function testRestoreValidId(): void
    {
        $series = $this->seriesTable->findSearchedBy(['name' => self::UPDATED_SERIES_NAME])[0];
        $result = $this->seriesTable->restore($series->getId());
        $this->assertTrue($result);
    }

    /**
     * Test permanently removing a series by a valid ID.
     */
    public function testRemoveValidId(): void
    {
        $series = $this->seriesTable->findSearchedBy(['name' => self::UPDATED_SERIES_NAME])[0];
        $result = $this->seriesTable->remove($series->getId());
        $this->assertTrue($result);
    }
}
