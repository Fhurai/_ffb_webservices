<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(className: \TagType::class)]
class TagTypesTest extends ApiTestCase
{
    #[DataProvider('tagtypeNamesProvider')]
    public function testTagsTypesNames(string $expectedName, int $index): void
    {
        $tagtypes = $this->fetchData('/tagtypes.php');

        $this->assertArrayHasKey($index, $tagtypes, "Tag type at index {$index} is missing");
        $this->assertEquals($expectedName, $tagtypes[$index]->name, "Tag type name at index {$index} does not match");
    }

    public function testTagTypeCount(): void
    {
        $tagtypes = $this->fetchData('/tagtypes.php');
        $this->assertCount(
            count(self::tagtypeNamesProvider()),
            $tagtypes,
            'The number of tagtypes returned does not match the expected count'
        );
    }

    public static function tagtypeNamesProvider(): array
    {
        return [
            ['Genre', 0],
            ['Timeline', 1],
            ['Relationships', 2],
            ['Other', 3],
        ];
    }
}
