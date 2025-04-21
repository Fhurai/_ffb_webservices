<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Rating::class)]
class RatingsTest extends ApiTestCase
{
    #[DataProvider('ratingNamesProvider')]
    public function testRatingNames(string $expectedName, int $index): void
    {
        $ratings = $this->fetchData('/ratings.php');

        $this->assertArrayHasKey($index, $ratings, "Rating at index {$index} is missing");
        $this->assertEquals($expectedName, $ratings[$index]->name, "Rating name at index {$index} does not match");
    }

    public function testRatingsCount(): void
    {
        $ratings = $this->fetchData('/ratings.php');
        $this->assertCount(
            count(self::ratingNamesProvider()),
            $ratings,
            'The number of ratings returned does not match the expected count'
        );
    }

    public static function ratingNamesProvider(): array
    {
        return [
            ['K / 3', 0],
            ['K+ / 7', 1],
            ['T / 12', 2],
            ['M / 16', 3],
            ['MA / 18', 4],
        ];
    }
}
