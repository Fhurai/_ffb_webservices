<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\Language::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\SrcUtilities::class)]
class LanguagesTest extends ApiTestCase
{
    #[DataProvider('languageNamesProvider')]
    public function testLanguageNames(string $expectedName, int $index): void
    {
        $languages = $this->fetchData('/languages.php');

        $this->assertArrayHasKey($index, $languages, "Language at index {$index} is missing");
        $this->assertEquals($expectedName, $languages[$index]->name, "Language name at index {$index} does not match");
    }

    public function testLanguagesCount(): void
    {
        $languages = $this->fetchData('/languages.php');

        $this->assertCount(
            count(self::languageNamesProvider()),
            $languages,
            'The number of languages returned does not match the expected count'
        );
    }

    public static function languageNamesProvider(): array
    {
        return [
            ['Français', 0],
            ['English', 1]
        ];
    }

    #[DataProvider('languagesCreationProvider')]
    public function testCreateLanguage($expectedName, $abbreviation, $index): void
    {
        $languageData = new stdClass();
        $languageData->name = $expectedName;
        $languageData->abbreviation = $abbreviation;

        $entity = $this->postData('/language.php', $languageData);
        $this->assertInstanceOf(Language::class, $entity, 'The entity is not an instance of Author class');
        $this->assertNotEquals(0, $entity->getId(), 'The language ID does not match the expected value');
        $this->assertNotEquals('', $entity->getName(), 'The language name does not match the expected value');
        $this->assertNotEquals('', $entity->getAbbreviation(), 'The language abbreviation does not match the expected value');
        $this->assertEquals($languageData->name, $entity->getName(), 'The language name does not match the expected value');
        $this->assertEquals($languageData->abbreviation, $entity->getAbbreviation(), 'The language abbreviation does not match the expected value');
    }

    public static function languagesCreationProvider(): array
    {
        return [
            ['Español', 'ES', 0],
            ['Deutsch', 'DE', 1],
            ['日本語', 'JA', 2]
        ];
    }
}
