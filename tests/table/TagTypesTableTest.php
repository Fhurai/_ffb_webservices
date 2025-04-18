<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/TagType.php';
require_once __DIR__ . '/../../src/table/TagTypesTable.php';
require_once __DIR__ . '/../../src/table/Connection.php';

#[\PHPUnit\Framework\Attributes\CoversClass(TagTypesTable::class)]
class TagTypesTableTest extends TestCase
{
    private TagTypesTable $tagTypesTable;

    protected function setUp(): void
    {
        // Create TagTypesTable with real connection
        $this->tagTypesTable = new TagTypesTable('tests', 'user');
    }

    public function testGet()
    {
        // Test existing ID
        $tagType = $this->tagTypesTable->get(1);
        $this->assertInstanceOf(TagType::class, $tagType);
        $this->assertEquals('Genre', $tagType->getName());

        // Test non-existing ID
        $this->expectException(FfbTableException::class);
        $this->tagTypesTable->get(999);
    }

    public function testFindAll()
    {
        // Get all tagTypes
        $result = $this->tagTypesTable->findAll([]);
        $this->assertCount(4, $result);

        // Verify all items are TagType instances
        $this->assertContainsOnlyInstancesOf(TagType::class, $result);
    }

    public function testFindSearchedBy()
    {
        // Exact match
        $result = $this->tagTypesTable->findSearchedBy(['name' => '%T%']);
        $this->assertCount(3, $result);
        $this->assertEquals(4, $result[0]->getId());

        // Partial match with LIKE
        $result = $this->tagTypesTable->findSearchedBy(['name' => '%M%']);
        $this->assertCount(1, $result);

        // Operator match
        $result = $this->tagTypesTable->findSearchedBy(['id' => '> 3']);
        $this->assertCount(1, $result); // IDs 4 and 5
    }

    public function testFindOrderedBy()
    {
        // Order by name ASC
        $result = $this->tagTypesTable->findOrderedBy(['name' => 'ASC']);
        $this->assertEquals('Genre', $result[0]->getName());
        $this->assertEquals('Other', $result[1]->getName());

        // Order by id DESC
        $result = $this->tagTypesTable->findOrderedBy(['id' => 'DESC']);
        $this->assertEquals(4, $result[0]->getId());
        $this->assertEquals(3, $result[1]->getId());
    }

    public function testFindLimitedBy()
    {
        // Limit 2
        $result = $this->tagTypesTable->findLimitedBy(['limit' => 2]);
        $this->assertCount(2, $result);

        // Limit 3 with offset 2
        $result = $this->tagTypesTable->findLimitedBy(['limit' => 3, 'offset' => 2]);
        $this->assertCount(2, $result);
        $this->assertEquals(3, $result[0]->getId()); // Default order is by ID ASC
    }

    public function testComplexCombination()
    {
        // Search + Order + Limit
        $result = $this->tagTypesTable->findAll([
            'search' => ['name' => '%i%'],
            'order' => ['name' => 'DESC'],
            'limit' => ['limit' => 2]
        ]);

        $expectedNames = ['Timeline', 'Relationships'];
        $this->assertCount(2, $result);
        $this->assertEquals($expectedNames, [$result[0]->getName(), $result[1]->getName()]);
    }
}
