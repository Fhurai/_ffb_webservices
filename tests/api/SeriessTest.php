<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(className: \Series::class)]
class SeriessTest extends ApiTestCase
{
    #[DataProvider('seriesNamesProvider')]
    public function testSeriesNames(string $expectedName, int $index): void
    {
        $seriess = $this->fetchData('/series.php');

        $this->assertArrayHasKey($index, $seriess, "Series type at index {$index} is missing");
        $this->assertEquals($expectedName, $seriess[$index]->name, "Series type name at index {$index} does not match");
    }

    public function testSeriessCount(): void
    {
        $seriess = $this->fetchData('/series.php');
        $this->assertCount(
            count(self::seriesNamesProvider()),
            $seriess,
            'The number of seriess returned does not match the expected count'
        );
    }

    public static function seriesNamesProvider(): array
    {
        return [
            ["From Innocent Feelings to Post Crisis",0],
            ["All Bets Are Off",1],
            ["Spira series",2],
            ["Scenes from a Life",3],
            ["Hermione in Authority",4],
            ["Teenage girlhood: power dynamics and messy friendship and sex",5],
            ["Voyeurism for Fun and Profit",6],
            ["The Domination Series",7],
            ["Contrast in Love",8],
            ["The Boy Who Wanted Her Stories",9],
            ["The Boy Who Lived and The Girl Who Topped",10],
            ["Triplicity",11],
            ["Revel",12],
            ["We Three Seekers",13],
            ["Southampton",14],
            ["The Importance Of Intent Collection",15],
            ["Novocaine",16],
            ["Sybillance",17],
            ["From Feral to Domesticated",18],
            ["Thrall or not Thrall",19],
            ["Hermione's Little Whore",20],
            ["A Bonding",21],
            ["The Prefect's Bathroom",22],
            ["Dragon Chronicles",23],
            ["Brothers",24],
            ["Family that Chooses You",25],
            ["A Taste of Magic",26],
            ["I told him, Gaby. I told him that I loved you",27],
            ["Music and Mayhem",28],
            ["Saving Nezzy",29],
            ["Mother/Daughter Love",30],
            ["Just Like the Folks",31],
            ["Blondes in Bed",32],
            ["The Blades of Elysium",33],
            ["Adventures in New Alrest",34],
            ["The weight of life",35],
            ["Momentary Weakness",36],
            ["Story of the Sword Demon",37]
        ];
    }

    #[DataProvider('seriessOptionalNamesProvider')]
    public function testSeriessOptionalNames(string $expectedName, int $index): void
    {
        $seriess = $this->fetchData('/series.php?search_description=%25Harry%20Potter%25');

        $this->assertArrayHasKey($index, $seriess, "Series at index {$index} is missing");
        $this->assertEquals($expectedName, $seriess[$index]->name, "Series name at index {$index} does not match");
    }

    public function testSeriessOptionalCount(): void
    {
        $seriess = $this->fetchData('/series.php?search_description=%25Harry%20Potter%25');

        $this->assertCount(
            count(self::seriessOptionalNamesProvider()),
            $seriess,
            'The number of seriess returned does not match the expected count'
        );
    }

    public static function seriessOptionalNamesProvider(): array
    {
        return [
            ["The Domination Series",0],
            ["Contrast in Love",1],
            ["The Boy Who Lived and The Girl Who Topped",2]
        ];
    }
}
