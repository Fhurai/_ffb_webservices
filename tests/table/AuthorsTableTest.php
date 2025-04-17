<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/AuthorsTable.php';
require_once __DIR__ . '/../../src/entity/Author.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\AuthorBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\AuthorsTable::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntityBuilder::class)]
class AuthorsTableTest extends TestCase
{
    private AuthorsTable $authorsTable;

    private const INVALID_COLUMN_MESSAGE = "Invalid column name: 'invalid_column'";
    private const NEW_AUTHOR_NAME = "New Author";
    private const UPDATED_AUTHOR_NAME = "Updated Author";

    protected function setUp(): void
    {
        $this->authorsTable = new AuthorsTable("tests", "user");
    }

    public function testGetValidId(): void
    {
        $result = $this->authorsTable->get(1);
        $this->assertInstanceOf(Author::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("", $result->getName());
    }

    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->authorsTable->get(999);
    }

    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->authorsTable->get("invalid_id");
    }

    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->authorsTable->findSearchedBy(['name' => 'A. LaRosa']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Author::class, $result[0]);
    }

    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage(self::INVALID_COLUMN_MESSAGE);
        $this->authorsTable->findSearchedBy(['invalid_column' => 'value']);
    }

    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");
        $this->authorsTable->findSearchedBy([]);
    }

    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->authorsTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(717, $result);
        $this->assertEquals("", $result[0]->getName());
    }

    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");
        $this->authorsTable->findOrderedBy(['name' => 'INVALID']);
    }

    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->authorsTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");
        $this->authorsTable->findLimitedBy(['limit' => -1]);
    }

    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");
        $this->authorsTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    public function testFindAllWithCriteria(): void
    {
        $result = $this->authorsTable->findAll([
            'search' => ['name' => 'J%'],
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
        $this->authorsTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    public function testFindAllEmptyArguments(): void
    {
        $result = $this->authorsTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(717, $result);
    }

    public function testFindAllInvalidSearchCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage(self::INVALID_COLUMN_MESSAGE);
        $this->authorsTable->findAll([
            'search' => ['invalid_column' => 'value']
        ]);
    }

    public function testFindAllInvalidOrderCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage(self::INVALID_COLUMN_MESSAGE);
        $this->authorsTable->findAll([
            'order' => ['invalid_column' => 'ASC']
        ]);
    }

    public function testFindAllInvalidLimitCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");
        $this->authorsTable->findAll([
            'limit' => ['limit' => -10]
        ]);
    }

    public function testCreateValid(): void
    {
        $author = (new AuthorBuilder())
            ->withName(self::NEW_AUTHOR_NAME)
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdAuthor = $this->authorsTable->create($author);
        $this->assertInstanceOf(Author::class, $createdAuthor);
        $this->assertNotNull($createdAuthor->getId());
        $this->assertEquals(self::NEW_AUTHOR_NAME, $createdAuthor->getName());
    }

    public function testCreateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->expectExceptionMessage("Argument #1 (\$entity) must be of type Entity, stdClass given");
        $this->authorsTable->create(new stdClass());
    }

    public function testUpdateValid(): void
    {
        $author = $this->authorsTable->findSearchedBy(["name" => self::NEW_AUTHOR_NAME])[0];
        $author->setName(self::UPDATED_AUTHOR_NAME);
        $author->setUpdateDate(new DateTime());

        $updatedAuthor = $this->authorsTable->update($author);
        $this->assertInstanceOf(Author::class, $updatedAuthor);
        $this->assertNotEquals(1, $updatedAuthor->getId());
        $this->assertEquals(self::UPDATED_AUTHOR_NAME, $updatedAuthor->getName());
    }

    public function testUpdateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->expectExceptionMessage("Argument #1 (\$entity) must be of type Entity, stdClass given");
        $this->authorsTable->update(new stdClass());
    }

    public function testDeleteValidId(): void
    {
        $author = $this->authorsTable->findSearchedBy(["name" => self::UPDATED_AUTHOR_NAME])[0];
        $result = $this->authorsTable->delete($author->getId());
        $this->assertTrue($result);
    }

    public function testDeleteInvalidId(): void
    {
        $result = $this->authorsTable->delete(9999);
        $this->assertFalse($result);
    }

    public function testRestoreValidId(): void
    {
        $author = $this->authorsTable->findSearchedBy(["name" => self::UPDATED_AUTHOR_NAME])[0];
        $result = $this->authorsTable->restore($author->getId());
        $this->assertTrue($result);
    }

    public function testRestoreInvalidId(): void
    {
        $result = $this->authorsTable->restore(9999);
        $this->assertFalse($result);
    }

    public function testRemoveValidId(): void
    {
        $author = $this->authorsTable->findSearchedBy(["name" => self::UPDATED_AUTHOR_NAME])[0];
        $this->authorsTable->delete($author->getId());
        $result = $this->authorsTable->remove($author->getId());
        $this->assertTrue($result);
    }

    public function testRemoveInvalidId(): void
    {
        $result = $this->authorsTable->remove(999);
        $this->assertFalse($result);
    }
}
