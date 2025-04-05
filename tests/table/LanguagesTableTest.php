<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/LanguagesTable.php';
require_once __DIR__ . '/../../src/entity/Language.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class LanguagesTableTest extends TestCase
{
    private LanguagesTable $languagesTable;

    private int $languageId; // Example language ID for testing

    /**
     * Set up the LanguagesTable instance before each test.
     */
    protected function setUp(): void
    {
        // Initialize the LanguagesTable instance with test database and user.
        $this->languagesTable = new LanguagesTable("tests", "user");
    }

    /**
     * Test getting a language by its ID.
     */
    public function testGetLanguageById()
    {
        // Retrieve a language by its ID.
        $language = $this->languagesTable->get(1);

        // Assert that the retrieved language has the expected ID and name.
        $this->assertEquals(1, $language->getId());
        $this->assertEquals("Français", $language->getName());

        // Assert that the retrieved object is an instance of the Language class.
        $this->assertInstanceOf(Language::class, $language);
    }

    /**
     * Test getting a language by an ID that does not exist.
     */
    public function testGetLanguageByIdNotFound()
    {
        // Expect an exception when trying to retrieve a non-existent language.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Attempt to retrieve a language with an invalid ID.
        $this->languagesTable->get(999);
    }

    /**
     * Test finding languages by exact match.
     */
    public function testFindSearchedByEquality()
    {
        // Search for languages with an exact name match.
        $languages = $this->languagesTable->findSearchedBy([
            "name" => "Français"
        ]);

        // Assert that only one language is found and it matches the expected name.
        $this->assertCount(1, $languages);
        $this->assertEquals(1, $languages[0]->getId());
        $this->assertEquals("Français", $languages[0]->getName());

        // Assert that the retrieved object is an instance of the Language class.
        $this->assertInstanceOf(Language::class, $languages[0]);
    }

    /**
     * Test finding languages using a LIKE query.
     * This test checks if the findSearchedBy method can retrieve languages
     * whose names match a pattern (e.g., names starting with 'E').
     */
    public function testFindSearchedByLike()
    {
        // Search for languages with names starting with 'E'.
        $languages = $this->languagesTable->findSearchedBy([
            "name" => "LIKE 'E%'"
        ]);

        // Assert that one language is found and it matches the expected name.
        $this->assertCount(1, $languages);
        $this->assertEquals(2, $languages[0]->getId());
        $this->assertEquals("English", $languages[0]->getName());

        // Assert that the retrieved object is an instance of the Language class.
        $this->assertInstanceOf(Language::class, $languages[0]);
    }

    /**
     * Test finding languages ordered by name in ascending order.
     * This test ensures that the findOrderedBy method correctly sorts
     * languages alphabetically by their names in ascending order.
     */
    public function testFindOrderedByAsc()
    {
        // Retrieve languages ordered by name in ascending order.
        $languages = $this->languagesTable->findOrderedBy([
            "name" => "ASC"
        ]);

        // Assert that the languages are sorted alphabetically.
        $this->assertCount(2, $languages);
        $this->assertEquals("English", $languages[0]->getName());
        $this->assertEquals("Français", $languages[1]->getName());

        // Assert that each retrieved object is an instance of the Language class.
        foreach ($languages as $language) {
            $this->assertInstanceOf(Language::class, $language);
        }
    }

    /**
     * Test finding languages with a limit of 2.
     * This test verifies that the findLimitedBy method respects the limit
     * parameter and retrieves only the specified number of languages.
     */
    public function testFindLimitedBy02()
    {
        // Retrieve a limited number of languages (2).
        $languages = $this->languagesTable->findLimitedBy([
            "limit" => 2
        ]);

        // Assert that only two languages are retrieved.
        $this->assertCount(2, $languages);
        $this->assertEquals("Français", $languages[0]->getName());
        $this->assertEquals("English", $languages[1]->getName());

        // Assert that each retrieved object is an instance of the Language class.
        foreach ($languages as $language) {
            $this->assertInstanceOf(Language::class, $language);
        }
    }

    /**
     * Test creating a new language.
     */
    public function testCreateLanguage()
    {
        $language = new Language();
        $language->setName("New Language");
        $language->setAbbreviation("NL");
        $language->setCreationDate(new DateTime("2023-01-01"));
        $language->setUpdateDate(new DateTime("2023-01-01"));
        $language->setDeleteDate(null);

        $createdLanguage = $this->languagesTable->create($language);

        $this->assertNotNull($createdLanguage->getId());
        $this->assertEquals("New Language", $createdLanguage->getName());
        $this->assertInstanceOf(Language::class, $createdLanguage);
    }

    /**
     * Test updating an existing language.
     */
    public function testUpdateLanguage()
    {
        $language = $this->languagesTable->get($this->languagesTable->getLastInsertId());
        $language->setName("Updated Language");

        $updatedLanguage = $this->languagesTable->update($language);

        $this->assertEquals("Updated Language", $updatedLanguage->getName());
        $this->assertInstanceOf(Language::class, $updatedLanguage);
    }

    /**
     * Test soft deleting a language.
     */
    public function testDeleteLanguage()
    {
        $languages = $this->languagesTable->findSearchedBy([
            "name" => "Updated Language"
        ]);

        $result = $this->languagesTable->delete($languages[0]->getId());

        $this->assertTrue($result);
    }

    /**
     * Test restoring a soft-deleted language.
     */
    public function testRestoreLanguage()
    {
        $languages = $this->languagesTable->findSearchedBy([
            "name" => "Updated Language"
        ]);

        $this->assertNotEmpty($languages);
        $this->assertEquals("Updated Language", $languages[0]->getName());

        $result = $this->languagesTable->restore($languages[0]->getId());

        $this->assertTrue($result);

        $restoredLanguage = $this->languagesTable->get($languages[0]->getId());
        $this->assertNotNull($restoredLanguage);
        $this->assertEquals("Updated Language", $restoredLanguage->getName());
    }

    /**
     * Test hard deleting a language.
     */
    public function testRemoveLanguage()
    {
        $languages = $this->languagesTable->findSearchedBy([
            "name" => "Updated Language"
        ]);

        $this->assertNotEmpty($languages);
        $this->assertEquals("Updated Language", $languages[0]->getName());

        $result = $this->languagesTable->remove($languages[0]->getId());

        $this->assertTrue($result);

        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->languagesTable->get($languages[0]->getId());
    }
}