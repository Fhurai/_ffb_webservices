<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\Score::class)]
class ScoresTest extends ApiTestCase
{
    #[DataProvider('actionNamesProvider')]
    public function testActionNames(string $expectedName, int $index): void
    {
        $actions = $this->fetchData('/scores.php');

        $this->assertArrayHasKey($index, $actions, "Action at index {$index} is missing");
        $this->assertEquals($expectedName, $actions[$index]->name, "Action name at index {$index} does not match");
    }

    public function testActionsCount(): void
    {
        $actions = $this->fetchData('/scores.php');
        $this->assertCount(
            count(self::actionNamesProvider()),
            $actions,
            'The number of actions returned does not match the expected count'
        );
    }

    public static function actionNamesProvider(): array
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
