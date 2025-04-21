<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\Language::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
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
}
