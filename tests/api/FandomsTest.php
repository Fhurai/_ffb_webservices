<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\Fandom::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
class FandomsTest extends ApiTestCase
{
    #[DataProvider('fandomNamesProvider')]
    public function testFandomNames(string $expectedName, int $index): void
    {
        $fandoms = $this->fetchData('/fandoms.php');

        $this->assertArrayHasKey($index, $fandoms, "Fandom at index {$index} is missing");
        $this->assertEquals($expectedName, $fandoms[$index]->name, "Fandom name at index {$index} does not match");
    }

    public function testFandomsCount(): void
    {
        $fandoms = $this->fetchData('/fandoms.php');
        $this->assertCount(
            count(self::fandomNamesProvider()),
            $fandoms,
            'The number of fandoms returned does not match the expected count'
        );
    }

    public static function fandomNamesProvider(): array
    {
        return [
            ['Avengers', 0],
            ['Boruto: Naruto Next Generations', 1],
            ['クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon', 2],
            ['Final Fantasy VII', 3],
            ['Final Fantasy X / X-2', 4],
            ['Final Fantasy XIV', 5],
            ['Hellsing', 6],
            ['Harry Potter - Wizarding World', 7],
            ['LEGO Harry Potter', 8],
            ['Mass Effect', 9],
            ['ナナとカオル | Nana to Kaoru', 10],
            ['Naruto', 11],
            ['Overwatch', 12],
            ['Parahumans Series - Wildbow', 13],
            ['Smash Brothers Ultimate', 14],
            ['StarCraft', 15],
            ['Tales of Berseria', 16],
            ['Wiedźmin | The Witcher', 17],
            ['Xenoblade Chronicles 1', 18],
            ['Xenoblade Chronicles 2', 19],
            ['Xenoblade Chronicles 3', 20]
        ];
    }

    #[DataProvider('fandomsOptionalNamesProvider')]
    public function testFandomsOptionalNames(string $expectedName, int $index): void
    {
        $fandoms = $this->fetchData('/fandoms.php?search_name=F%25&order_id=DESC');

        $this->assertArrayHasKey($index, $fandoms, "Fandom at index {$index} is missing");
        $this->assertEquals($expectedName, $fandoms[$index]->name, "Fandom name at index {$index} does not match");
    }

    public function testFandomsOptionalCount(): void
    {
        $fandoms = $this->fetchData('/fandoms.php?search_name=F%25&order_id=DESC');

        $this->assertCount(
            count(self::fandomsOptionalNamesProvider()),
            $fandoms,
            'The number of fandoms returned does not match the expected count'
        );
    }

    public static function fandomsOptionalNamesProvider(): array
    {
        return [
            ["Final Fantasy XIV",0],
            ["Final Fantasy X / X-2",1],
            ["Final Fantasy VII",2]
        ];
    }
}
