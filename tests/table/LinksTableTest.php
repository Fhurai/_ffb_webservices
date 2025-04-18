<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/LinksTable.php';
require_once __DIR__ . '/../../src/entity/Link.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Link::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\LinkBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\LinksTable::class)]
class LinksTableTest extends TestCase
{
    private LinksTable $linksTable;

    private const EXAMPLE_URL = "https://example.com";
    private const UPDATED_EXAMPLE_URL = "https://updated-example.com";

    protected function setUp(): void
    {
        $this->linksTable = new LinksTable("tests", "user");
    }

    public function testGetValidId(): void
    {
        $result = $this->linksTable->get(1);
        $this->assertInstanceOf(Link::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("https://archiveofourown.org/works/7746940/chapters/17662930", $result->getUrl());
        $this->assertEquals(1, $result->getFanfictionId());
    }

    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->linksTable->get(9999);
    }

    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->linksTable->get("invalid_id");
    }

    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->linksTable->findSearchedBy(['url' => 'https://archiveofourown.org/works/7746940/chapters/17662930']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Link::class, $result[0]);
    }

    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");

        $this->linksTable->findSearchedBy(['invalid_column' => 'value']);
    }

    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");

        $this->linksTable->findSearchedBy([]);
    }

    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->linksTable->findOrderedBy(['url' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(1069, $result); // Adjust count based on test data
        $this->assertEquals("https://archiveofourown.org/works/1029121/chapters/2049512", $result[0]->getUrl());
    }

    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");

        $this->linksTable->findOrderedBy(['url' => 'INVALID']);
    }

    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->linksTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");

        $this->linksTable->findLimitedBy(['limit' => -1]);
    }

    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");

        $this->linksTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    public function testFindAllWithCriteria(): void
    {
        $result = $this->linksTable->findAll([
            'search' => ['url' => 'http%'],
            'order' => ['url' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindAllNoResults(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        $this->linksTable->findAll([
            'search' => ['url' => 'nonexistent%'],
            'order' => ['url' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    public function testFindAllEmptyArguments(): void
    {
        $result = $this->linksTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(1069, $result); // Adjust count based on test data
    }

    public function testCreateValid(): void
    {
        $link = (new LinkBuilder())
            ->withUrl(self::EXAMPLE_URL)
            ->withFanfictionId(1)
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdLink = $this->linksTable->create($link);

        $this->assertInstanceOf(Link::class, $createdLink);
        $this->assertNotNull($createdLink->getId());
        $this->assertEquals(self::EXAMPLE_URL, $createdLink->getUrl());
    }

    public function testUpdateValid(): void
    {
        $link = $this->linksTable->findSearchedBy(["url" => self::EXAMPLE_URL])[0];
        $link->setUrl(self::UPDATED_EXAMPLE_URL);
        $link->setUpdateDate(new DateTime());

        $updatedLink = $this->linksTable->update($link);

        $this->assertInstanceOf(Link::class, $updatedLink);
        $this->assertEquals(self::UPDATED_EXAMPLE_URL, $updatedLink->getUrl());
    }

    public function testDeleteValidId(): void
    {
        $link = $this->linksTable->findSearchedBy(["url" => self::UPDATED_EXAMPLE_URL])[0];
        $result = $this->linksTable->delete($link->getId());
        $this->assertTrue($result);
    }

    public function testRestoreValidId(): void
    {
        $link = $this->linksTable->findSearchedBy(["url" => self::UPDATED_EXAMPLE_URL])[0];
        $result = $this->linksTable->restore($link->getId());
        $this->assertTrue($result);
    }

    public function testRemoveValidId(): void
    {
        $link = $this->linksTable->findSearchedBy(["url" => self::UPDATED_EXAMPLE_URL])[0];
        $result = $this->linksTable->remove($link->getId());
        $this->assertTrue($result);
    }
}
