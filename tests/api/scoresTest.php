<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Score::class)]
class ScoresTest extends ApiTestCase
{
    #[DataProvider('scoreNamesProvider')]
    public function testScoreNames(string $expectedName, int $index): void
    {
        $scores = $this->fetchData('/scores.php');

        $this->assertArrayHasKey($index, $scores, "Score at index {$index} is missing");
        $this->assertEquals($expectedName, $scores[$index]->name, "Score name at index {$index} does not match");
    }

    public function testscoresCount(): void
    {
        $scores = $this->fetchData('/scores.php');
        $this->assertCount(
            count(self::scoreNamesProvider()),
            $scores,
            'The number of scores returned does not match the expected count'
        );
    }

    public static function scoreNamesProvider(): array
    {
        return [
            ['Unacceptable', 0],
            ['Poor', 1],
            ['Needs improvement', 2],
            ['Acceptable', 3],
            ['Good', 4],
            ['Excellent', 5]
        ];
    }
}
