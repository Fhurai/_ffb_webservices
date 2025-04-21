<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

#[\PHPUnit\Framework\Attributes\CoversClass(className: \Rating::class)]

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Rating::class)]
class RatingsTest extends ApiTestCase
{
    #[DataProvider('actionNamesProvider')]
    public function testActionNames(string $expectedName, int $index): void
    {
        $actions = $this->fetchData('/ratings.php');

        $this->assertArrayHasKey($index, $actions, "Action at index {$index} is missing");
        $this->assertEquals($expectedName, $actions[$index]->name, "Action name at index {$index} does not match");
    }

    public function testActionsCount(): void
    {
        $actions = $this->fetchData('/ratings.php');
        $this->assertCount(
            count(self::actionNamesProvider()),
            $actions,
            'The number of actions returned does not match the expected count'
        );
    }

    public static function actionNamesProvider(): array
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
