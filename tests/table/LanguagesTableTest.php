<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/LanguagesTable.php';
require_once __DIR__ . '/../../src/entity/Language.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\Connection::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Entity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\EntityBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\FfbTableException::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Language::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\LanguageBuilder::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\LanguagesTable::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntity::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\NamedEntityBuilder::class)]
class LanguagesTableTest extends TestCase
{
    private LanguagesTable $languagesTable;
    private const NEW_LANGUAGE_NAME = 'New Language';
    private const UPDATED_LANGUAGE_NAME = 'Updated Language';

    protected function setUp(): void
    {
        $this->languagesTable = new LanguagesTable("tests", "user");
    }

    public function testGetValidId(): void
    {
        $result = $this->languagesTable->get(1);
        $this->assertInstanceOf(Language::class, $result);
        $this->assertEquals(1, $result->getId());
        $this->assertEquals("Français", $result->getName());
    }

    public function testGetInvalidId(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->languagesTable->get(999);
    }

    public function testGetNonIntegerId(): void
    {
        $this->expectException(TypeError::class);
        $this->languagesTable->get("invalid_id");
    }

    public function testFindSearchedByValidCriteria(): void
    {
        $result = $this->languagesTable->findSearchedBy(['name' => 'English']);
        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Language::class, $result[0]);
    }

    public function testFindSearchedByInvalidCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid column name: 'invalid_column'");
        $this->languagesTable->findSearchedBy(['invalid_column' => 'value']);
    }

    public function testFindSearchedByEmptyCriteria(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No search arguments provided!");
        $this->languagesTable->findSearchedBy([]);
    }

    public function testFindOrderedByValidCriteria(): void
    {
        $result = $this->languagesTable->findOrderedBy(['name' => 'ASC']);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
        $this->assertEquals("English", $result[0]->getName());
    }

    public function testFindOrderedByInvalidDirection(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid order direction: 'INVALID'");
        $this->languagesTable->findOrderedBy(['name' => 'INVALID']);
    }

    public function testFindLimitedByValidCriteria(): void
    {
        $result = $this->languagesTable->findLimitedBy(['limit' => 2, 'offset' => 0]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testFindLimitedByNegativeLimit(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid or missing limit value!");
        $this->languagesTable->findLimitedBy(['limit' => -1]);
    }

    public function testFindLimitedByNegativeOffset(): void
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("Invalid offset value!");
        $this->languagesTable->findLimitedBy(['limit' => 10, 'offset' => -5]);
    }

    public function testFindAllWithCriteria(): void
    {
        $result = $this->languagesTable->findAll([
            'search' => ['name' => 'E%'],
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
        $this->languagesTable->findAll([
            'search' => ['name' => 'Nonexistent%'],
            'order' => ['name' => 'ASC'],
            'limit' => ['limit' => 2, 'offset' => 0]
        ]);
    }

    public function testFindAllEmptyArguments(): void
    {
        $result = $this->languagesTable->findAll([]);
        $this->assertIsArray($result);
        $this->assertCount(2, $result);
    }

    public function testCreateValid(): void
    {
        $language = (new LanguageBuilder())
            ->withName(self::NEW_LANGUAGE_NAME)
            ->withAbbreviation("NL")
            ->withCreationDate(new DateTime())
            ->withUpdateDate(new DateTime())
            ->build();

        $createdLanguage = $this->languagesTable->create($language);
        $this->assertInstanceOf(Language::class, $createdLanguage);
        $this->assertNotNull($createdLanguage->getId());
        $this->assertEquals(self::NEW_LANGUAGE_NAME, $createdLanguage->getName());
    }

    public function testCreateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->languagesTable->create(new stdClass());
    }

    public function testUpdateValid(): void
    {
        $language = $this->languagesTable->findSearchedBy(["name" => self::NEW_LANGUAGE_NAME])[0];
        $language->setName(self::UPDATED_LANGUAGE_NAME);
        $language->setUpdateDate(new DateTime());

        $updatedLanguage = $this->languagesTable->update($language);
        $this->assertInstanceOf(Language::class, $updatedLanguage);
        $this->assertEquals(self::UPDATED_LANGUAGE_NAME, $updatedLanguage->getName());
    }

    public function testUpdateInvalidEntity(): void
    {
        $this->expectException(TypeError::class);
        $this->languagesTable->update(new stdClass());
    }

    public function testDeleteValidId(): void
    {
        $language = $this->languagesTable->findSearchedBy(["name" => self::UPDATED_LANGUAGE_NAME])[0];
        $result = $this->languagesTable->delete($language->getId());
        $this->assertTrue($result);
    }

    public function testDeleteInvalidId(): void
    {
        $result = $this->languagesTable->delete(9999);
        $this->assertFalse($result);
    }

    public function testRestoreValidId(): void
    {
        $language = $this->languagesTable->findSearchedBy(["name" => self::UPDATED_LANGUAGE_NAME])[0];
        $result = $this->languagesTable->restore($language->getId());
        $this->assertTrue($result);
    }

    public function testRestoreInvalidId(): void
    {
        $result = $this->languagesTable->restore(9999);
        $this->assertFalse($result);
    }

    public function testRemoveValidId(): void
    {
        $language = $this->languagesTable->findSearchedBy(["name" => self::UPDATED_LANGUAGE_NAME])[0];
        $this->languagesTable->delete($language->getId());
        $result = $this->languagesTable->remove($language->getId());
        $this->assertTrue($result);
    }

    public function testRemoveInvalidId(): void
    {
        $result = $this->languagesTable->remove(999);
        $this->assertFalse($result);
    }
}
