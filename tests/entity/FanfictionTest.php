<?php

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Fanfiction.php';

/**
 * Class FanfictionTest
 *
 * Unit tests for the Fanfiction entity class.
 */
#[CoversClass(\Character::class)]
#[CoversClass(\EvaluableTrait::class)]
#[CoversClass(\Fanfiction::class)]
#[CoversClass(\Language::class)]
#[CoversClass(\Link::class)]
#[CoversClass(\Parameters::class)]
#[CoversClass(\Relation::class)]
#[CoversClass(\Score::class)]
#[CoversClass(\SrcUtilities::class)]
#[CoversClass(\Tag::class)]
class FanfictionTest extends TestCase
{
    /**
     * @var Fanfiction The Fanfiction entity instance being tested.
     */
    private Fanfiction $fanfiction;

    /**
     * Set up the test environment by initializing the Fanfiction instance.
     */
    protected function setUp(): void
    {
        // Initialize a new Fanfiction object before each test
        $this->fanfiction = new Fanfiction();
    }

    /**
     * Test inherited properties from parent classes or traits.
     */
    public function testInheritedProperties(): void
    {
        // Test setting and getting the ID property
        $this->fanfiction->setId(123);
        $this->assertEquals(123, $this->fanfiction->getId());

        // Test setting and getting the creation date with a specific timezone
        $date = new DateTime('now', new DateTimeZone('Europe/Paris'));
        $this->fanfiction->setCreationDate($date);
        $this->assertSame($date, $this->fanfiction->getCreationDate());

        // Test setting and getting the name property
        $this->fanfiction->setName('Test Fiction');
        $this->assertEquals('Test Fiction', $this->fanfiction->getName());
    }

    /**
     * Test properties specific to the Fanfiction class.
     */
    public function testClassSpecificProperties(): void
    {
        // Test setting and getting core properties
        $this->fanfiction->setAuthorId(456);
        $this->fanfiction->setRatingId(3);
        $this->fanfiction->setDescription('Test description');
        $this->fanfiction->setLanguageId(2);

        // Verify the values of the core properties
        $this->assertEquals(456, $this->fanfiction->getAuthorId());
        $this->assertEquals(3, $this->fanfiction->getRatingId());
        $this->assertEquals('Test description', $this->fanfiction->getDescription());
        $this->assertEquals(2, $this->fanfiction->getLanguageId());

        // Test setting and getting properties from the Evaluable trait
        $this->fanfiction->setScoreId(5);
        $this->fanfiction->setEvaluation('4.5 stars');

        // Verify the values of the Evaluable properties
        $this->assertEquals(5, $this->fanfiction->getScoreId());
        $this->assertEquals('4.5 stars', $this->fanfiction->getEvaluation());

        // Test the has* methods for checking associations
        $this->assertFalse($this->fanfiction->hasAuthor());
        $this->assertFalse($this->fanfiction->hasLanguage());
        $this->assertFalse($this->fanfiction->hasFandoms());
        $this->assertFalse($this->fanfiction->hasCharacters());
        $this->assertFalse($this->fanfiction->hasRelations());
        $this->assertFalse($this->fanfiction->hasTags());
        $this->assertFalse($this->fanfiction->hasLinks());
    }

    /**
     * Test associations between Fanfiction and related entities.
     */
    public function testAssociations(): void
    {
        // Test setting and verifying the Author association
        $author = new Author();
        $this->fanfiction->setAuthor($author);
        $this->assertTrue($this->fanfiction->hasAuthor());
        $this->assertInstanceOf(Author::class, $this->fanfiction->getAuthor());

        // Test setting and verifying the Language association
        $language = new Language();
        $this->fanfiction->setLanguage($language);
        $this->assertTrue($this->fanfiction->hasLanguage());
        $this->assertInstanceOf(Language::class, $this->fanfiction->getLanguage());

        // Test setting and verifying the Fandoms association
        $fandoms = [new Fandom()];
        $this->fanfiction->setFandoms($fandoms);
        $this->assertTrue($this->fanfiction->hasFandoms());
        $this->assertIsArray($this->fanfiction->getFandoms());
        $this->assertInstanceOf(Fandom::class, $this->fanfiction->getFandoms()[0]);

        // Test setting and verifying the Characters association
        $characters = [new Character()];
        $this->fanfiction->setCharacters($characters);
        $this->assertTrue($this->fanfiction->hasCharacters());
        $this->assertIsArray($this->fanfiction->getCharacters());
        $this->assertInstanceOf(Character::class, $this->fanfiction->getCharacters()[0]);

        // Test setting and verifying the Relations association
        $relations = [new Relation()];
        $this->fanfiction->setRelations($relations);
        $this->assertTrue($this->fanfiction->hasRelations());
        $this->assertIsArray($this->fanfiction->getRelations());
        $this->assertInstanceOf(Relation::class, $this->fanfiction->getRelations()[0]);

        // Test setting and verifying the Tags association
        $tags = [new Tag()];
        $this->fanfiction->setTags($tags);
        $this->assertTrue($this->fanfiction->hasTags());
        $this->assertIsArray($this->fanfiction->getTags());
        $this->assertInstanceOf(Tag::class, $this->fanfiction->getTags()[0]);

        // Test setting and verifying the Links association
        $links = [new Link()];
        $this->fanfiction->setLinks($links);
        $this->assertTrue($this->fanfiction->hasLinks());
        $this->assertIsArray($this->fanfiction->getLinks());
        $this->assertInstanceOf(Link::class, $this->fanfiction->getLinks()[0]);
    }

    /**
     * Test JSON serialization of the Fanfiction entity.
     */
    public function testJsonSerialization(): void
    {
        // Set basic properties for serialization
        $this->fanfiction->setId(1);
        $this->fanfiction->setName('Great Story');
        $this->fanfiction->setAuthorId(789);
        $this->fanfiction->setRatingId(2);
        $this->fanfiction->setDescription('An amazing tale');
        $this->fanfiction->setLanguageId(3);
        $this->fanfiction->setScoreId(4);
        $this->fanfiction->setEvaluation('Highly recommended');

        // Set associated entities for serialization
        $this->fanfiction->setAuthor(new Author());
        $this->fanfiction->setFandoms([new Fandom()]);
        $this->fanfiction->setLanguage(new Language());
        $this->fanfiction->setRelations([new Relation()]);
        $this->fanfiction->setCharacters([new Character()]);
        $this->fanfiction->setTags([new Tag()]);
        $this->fanfiction->setScore(new Score(3, "Acceptable"));
        $this->fanfiction->setLinks([new Link()]);

        // Serialize the Fanfiction object to JSON
        $result = $this->fanfiction->jsonSerialize();

        // Verify serialized core fields
        $this->assertEquals(1, $result['id']);
        $this->assertEquals('Great Story', $result['name']);
        $this->assertEquals(789, $result['author_id']);
        $this->assertEquals(2, $result['rating_id']);
        $this->assertEquals('An amazing tale', $result['description']);
        $this->assertEquals(3, $result['language_id']);
        $this->assertEquals(4, $result['score_id']);
        $this->assertEquals('Highly recommended', $result['evaluation']);

        // Verify serialized associations
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

    /**
     * Test JSON unserialization of the Fanfiction entity.
     */
    public function testJsonUnserialization(): void
    {
        // Define a JSON string representing a Fanfiction object
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

        // Unserialize the JSON string into a Fanfiction object
        $fanfiction = Fanfiction::jsonUnserialize($json);

        // Verify basic properties
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
        $this->assertInstanceOf(Author::class, $fanfiction->getAuthor());
        $this->assertIsArray($fanfiction->getFandoms());
        $this->assertInstanceOf(Fandom::class, $fanfiction->getFandoms()[0]);
        $this->assertInstanceOf(Language::class, $fanfiction->getLanguage());
        $this->assertIsArray($fanfiction->getRelations());
        $this->assertInstanceOf(Relation::class, $fanfiction->getRelations()[0]);
    }

    /**
     * Test behavior when an empty JSON object is unserialized.
     */
    public function testEmptyObject(): void
    {
        // Define an empty JSON string
        $json = '{}';

        // Unserialize the empty JSON string into a Fanfiction object
        $fanfiction = Fanfiction::jsonUnserialize($json);

        // Verify default values for properties
        $this->assertEquals(0, $fanfiction->getId());
        $this->assertEquals('', $fanfiction->getName());
        $this->assertEquals(-1, $fanfiction->getAuthorId());
        $this->assertEquals('', $fanfiction->getDescription());
        $this->assertInstanceOf(DateTime::class, $fanfiction->getCreationDate());
    }
}
