<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Fanfiction.php';

class FanfictionTest extends TestCase
{
    private Fanfiction $fanfiction;

    protected function setUp(): void
    {
        $this->fanfiction = new Fanfiction();
    }

    public function testInheritedProperties(): void
    {
        // Test Entity properties
        $this->fanfiction->setId(123);
        $this->assertEquals(123, $this->fanfiction->getId());

        $date = new DateTime('now', new DateTimeZone('Europe/Paris'));
        $this->fanfiction->setCreationDate($date);
        $this->assertSame($date, $this->fanfiction->getCreationDate());

        // Test NamedEntity property
        $this->fanfiction->setName('Test Fiction');
        $this->assertEquals('Test Fiction', $this->fanfiction->getName());
    }

    public function testClassSpecificProperties(): void
    {
        // Test core properties
        $this->fanfiction->setAuthorId(456);
        $this->fanfiction->setRatingId(3);
        $this->fanfiction->setDescription('Test description');
        $this->fanfiction->setLanguageId(2);
        
        $this->assertEquals(456, $this->fanfiction->getAuthorId());
        $this->assertEquals(3, $this->fanfiction->getRatingId());
        $this->assertEquals('Test description', $this->fanfiction->getDescription());
        $this->assertEquals(2, $this->fanfiction->getLanguageId());

        // Test Evaluable trait properties
        $this->fanfiction->setScoreId(5);
        $this->fanfiction->setEvaluation('4.5 stars');
        
        $this->assertEquals(5, $this->fanfiction->getScoreId());
        $this->assertEquals('4.5 stars', $this->fanfiction->getEvaluation());
    }

    public function testJsonSerialization(): void
    {
        // Set basic properties
        $this->fanfiction->setId(1);
        $this->fanfiction->setName('Great Story');
        $this->fanfiction->setAuthorId(789);
        $this->fanfiction->setRatingId(2);
        $this->fanfiction->setDescription('An amazing tale');
        $this->fanfiction->setLanguageId(3);
        $this->fanfiction->setScoreId(4);
        $this->fanfiction->setEvaluation('Highly recommended');

        // Set associations
        $this->fanfiction->author = new Author();
        $this->fanfiction->fandoms = [new Fandom()];
        $this->fanfiction->language = new Language();
        $this->fanfiction->relations = [new Relation()];
        $this->fanfiction->characters = [new Character()];
        $this->fanfiction->tags = [new Tag()];
        $this->fanfiction->score = new Score(3, "Acceptable");
        $this->fanfiction->links = [new Link()];

        $result = $this->fanfiction->jsonSerialize();

        // Test core fields
        $this->assertEquals(1, $result['id']);
        $this->assertEquals('Great Story', $result['name']);
        $this->assertEquals(789, $result['author_id']);
        $this->assertEquals(2, $result['rating_id']);
        $this->assertEquals('An amazing tale', $result['description']);
        $this->assertEquals(3, $result['language_id']);
        $this->assertEquals(4, $result['score_id']);
        $this->assertEquals('Highly recommended', $result['evaluation']);

        // Test associations
        $this->assertInstanceOf(Author::class, $result['author']);
        $this->assertIsArray($result['fandoms']);
        $this->assertInstanceOf(Fandom::class, $result['fandoms'][0]);
        $this->assertInstanceOf(Language::class, $result['language']);
        $this->assertIsArray($result['relations']);
        $this->assertInstanceOf(Relation::class, $result['relations'][0]);
        $this->assertIsArray($result['characters']);
        $this->assertInstanceOf(Character::class, $result['characters'][0]);
        $this->assertIsArray($result['tags']);
        $this->assertInstanceOf(Tag::class, $result['tags'][0]);
        $this->assertInstanceOf(Score::class, $result['score']);
        $this->assertIsArray($result['links']);
        $this->assertInstanceOf(Link::class, $result['links'][0]);
    }

    public function testJsonUnserialization(): void
    {
        $json = '{
            "id": 123,
            "name": "Epic Adventure",
            "author_id": 456,
            "rating_id": 3,
            "description": "Fantastic journey",
            "language_id": 2,
            "score_id": 5,
            "evaluation": "Must read!",
            "creation_date": "2023-01-01 12:34:56",
            "author": {
                "id": 456,
                "name": "Test Author"
            },
            "fandoms": [
                {"id": 1, "name": "Fantasy Fandom"}
            ],
            "language": {"id": 2, "name": "English"},
            "relations": [{"id": 3}],
            "characters": [{"id": 4}],
            "tags": [{"id": 5}],
            "score": {"id": 5, "name": "Excellent"},
            "links": [{"id": 7}]
        }';

        $fanfiction = Fanfiction::jsonUnserialize($json);

        // Test basic properties
        $this->assertEquals(123, $fanfiction->getId());
        $this->assertEquals('Epic Adventure', $fanfiction->getName());
        $this->assertEquals(456, $fanfiction->getAuthorId());
        $this->assertEquals(3, $fanfiction->getRatingId());
        $this->assertEquals('Fantastic journey', $fanfiction->getDescription());
        $this->assertEquals(2, $fanfiction->getLanguageId());
        $this->assertEquals(5, $fanfiction->getScoreId());
        $this->assertEquals('Must read!', $fanfiction->getEvaluation());

        // Test date handling
        $this->assertEquals(
            '2023-01-01 12:34:56',
            $fanfiction->getCreationDate()->format('Y-m-d H:i:s')
        );
        $this->assertEquals(
            'Europe/Paris',
            $fanfiction->getCreationDate()->getTimezone()->getName()
        );

        // Test associations
        $this->assertInstanceOf(Author::class, $fanfiction->author);
        $this->assertIsArray($fanfiction->fandoms);
        $this->assertInstanceOf(Fandom::class, $fanfiction->fandoms[0]);
        $this->assertInstanceOf(Language::class, $fanfiction->language);
        $this->assertIsArray($fanfiction->relations);
        $this->assertInstanceOf(Relation::class, $fanfiction->relations[0]);
    }

    public function testEmptyObject(): void
    {
        $json = '{}';
        $fanfiction = Fanfiction::jsonUnserialize($json);
        
        $this->assertEquals(0, $fanfiction->getId());
        $this->assertEquals('', $fanfiction->getName());
        $this->assertEquals(-1, $fanfiction->getAuthorId());
        $this->assertEquals('', $fanfiction->getDescription());
        $this->assertInstanceOf(DateTime::class, $fanfiction->getCreationDate());
    }
}