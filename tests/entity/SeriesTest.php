<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Series.php';

#[CoversClass(\Fanfiction::class)]
#[CoversClass(\Series::class)]
#[CoversClass(\SrcUtilities::class)]
class SeriesTest extends TestCase
{
    private Series $series;

    private const TIMEZONE_PARIS = 'Europe/Paris';

    protected function setUp(): void
    {
        $this->series = new Series();
    }

    /**
     * Test inherited properties from parent classes and traits.
     */
    public function testInheritedProperties(): void
    {
        $this->series->setId(123);
        $this->assertEquals(123, $this->series->getId());

        $date = new DateTime('now', new DateTimeZone(self::TIMEZONE_PARIS));
        $this->series->setCreationDate($date);
        $this->assertSame($date, $this->series->getCreationDate());

        $this->series->setName('Test Series');
        $this->assertEquals('Test Series', $this->series->getName());

        $this->series->setScoreId(5);
        $this->series->setEvaluation('4.5 stars');
        $this->assertEquals(5, $this->series->getScoreId());
        $this->assertEquals('4.5 stars', $this->series->getEvaluation());

        $this->series->setScoreId(0);
        $this->assertEquals(0, $this->series->getScoreId());

        $this->series->setEvaluation('');
        $this->assertEquals('', $this->series->getEvaluation());
    }

    /**
     * Test the description property of the Series class.
     */
    public function testDescriptionProperty(): void
    {
        $this->series->setDescription('Test description');
        $this->assertEquals('Test description', $this->series->getDescription());

        $this->series->setDescription('');
        $this->assertEquals('', $this->series->getDescription());
    }

    /**
     * Test JSON serialization of the Series object.
     */
    public function testJsonSerialization(): void
    {
        $this->series->setId(1);
        $this->series->setName('Great Series');
        $this->series->setDescription('An amazing series');
        $this->series->setScoreId(4);
        $this->series->setEvaluation('Highly recommended');
        $this->series->setFanfictions([new Fanfiction()]);

        $date = new DateTime('2023-01-01 12:34:56', new DateTimeZone(self::TIMEZONE_PARIS));
        $this->series->setCreationDate($date);
        $this->series->setUpdateDate($date);

        $result = $this->series->jsonSerialize();
        $this->assertArrayHasKey('fanfictions', $result);
        $this->assertNotEmpty($result['fanfictions']);

        $this->series->setFanfictions([new Fanfiction()]);
        $resultWithAssoc = $this->series->jsonSerialize();

        $this->assertEquals(1, $resultWithAssoc['id']);
        $this->assertEquals('Great Series', $resultWithAssoc['name']);
        $this->assertEquals('An amazing series', $resultWithAssoc['description']);
        $this->assertEquals(4, $resultWithAssoc['score_id']);
        $this->assertEquals('Highly recommended', $resultWithAssoc['evaluation']);
        $this->assertEquals($date->format("Y-m-d H:i:s"), $resultWithAssoc['creation_date']);

        $this->assertArrayHasKey('fanfictions', $resultWithAssoc);
        $this->assertIsArray($resultWithAssoc['fanfictions']);
        $this->assertInstanceOf(Fanfiction::class, $resultWithAssoc['fanfictions'][0]);

        $this->series->setFanfictions([]);
        $resultEmptyAssoc = $this->series->jsonSerialize();
        $this->assertFalse(array_key_exists('fanfictions', $resultEmptyAssoc));
    }

    /**
     * Test JSON unserialization of a Series object.
     */
    public function testJsonUnserialization(): void
    {
        $json = '{
            "id": 456,
            "name": "Epic Series",
            "description": "Fantastic series journey",
            "score_id": 7,
            "evaluation": "Must read series!",
            "creation_date": "2023-02-01 10:15:30",
            "fanfictions": [
                {"id": 1, "name": "First Part"},
                {"id": 2, "name": "Second Part"}
            ]
        }';

        $series = Series::jsonUnserialize($json);

        $this->assertEquals(456, $series->getId());
        $this->assertEquals('Epic Series', $series->getName());
        $this->assertEquals('Fantastic series journey', $series->getDescription());
        $this->assertEquals(7, $series->getScoreId());
        $this->assertEquals('Must read series!', $series->getEvaluation());

        $this->assertEquals(
            '2023-02-01 10:15:30',
            $series->getCreationDate()->format('Y-m-d H:i:s')
        );
        $this->assertEquals(
            self::TIMEZONE_PARIS,
            $series->getCreationDate()->getTimezone()->getName()
        );

        $this->assertIsArray($series->fanfictions);
        $this->assertCount(2, $series->fanfictions);
        $this->assertInstanceOf(Fanfiction::class, $series->fanfictions[0]);
        $this->assertEquals(1, $series->fanfictions[0]->getId());
    }

    /**
     * Test behavior when an empty JSON object is unserialized.
     */
    public function testEmptyObject(): void
    {
        $json = '{}';
        $series = Series::jsonUnserialize($json);

        $this->assertEquals(0, $series->getId());
        $this->assertEquals('', $series->getName());
        $this->assertEquals('', $series->getDescription());
        $this->assertNull($series->getScoreId());
        $this->assertEquals('', $series->getEvaluation());
        $this->assertInstanceOf(DateTime::class, $series->getCreationDate());
    }

    /**
     * Test fanfictions association handling.
     */
    public function testFanfictionsAssociation(): void
    {
        $this->series->setFanfictions(
            [
            ['id' => 1, 'name' => 'Fanfiction 1'],
            ['id' => 2, 'name' => 'Fanfiction 2']
            ]
        );

        $fanfictions = $this->series->getFanfictions();
        $this->assertCount(2, $fanfictions);
        $this->assertInstanceOf(Fanfiction::class, $fanfictions[0]);
        $this->assertEquals(1, $fanfictions[0]->getId());
        $this->assertEquals('Fanfiction 1', $fanfictions[0]->getName());
    }
}
