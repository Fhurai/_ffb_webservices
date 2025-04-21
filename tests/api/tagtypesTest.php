<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(className: \TagType::class)]
class TagTypesTest extends ApiTestCase
{
    #[DataProvider('actionNamesProvider')]
    public function testActionNames(string $expectedName, int $index): void
    {
        $actions = $this->fetchData('/tagtypes.php');

        $this->assertArrayHasKey($index, $actions, "Action at index {$index} is missing");
        $this->assertEquals($expectedName, $actions[$index]->name, "Action name at index {$index} does not match");
    }

    public function testActionsCount(): void
    {
        $actions = $this->fetchData('/tagtypes.php');
        $this->assertCount(
            count(self::actionNamesProvider()),
            $actions,
            'The number of actions returned does not match the expected count'
        );
    }

    public static function actionNamesProvider(): array
    {
        return [
            ['Genre', 0],
            ['Timeline', 1],
            ['Relationships', 2],
            ['Other', 3],
        ];
    }
}
