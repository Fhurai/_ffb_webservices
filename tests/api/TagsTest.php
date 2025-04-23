<?php

declare(strict_types=1);

use PHPUnit\Framework\Attributes\DataProvider;

require_once __DIR__ . '/../../tests/api/ApiTestCase.php';

#[\PHPUnit\Framework\Attributes\CoversClass(\ApiClient::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(className: \Tag::class)]
#[\PHPUnit\Framework\Attributes\CoversClass(\SrcUtilities::class)]
class TagsTest extends ApiTestCase
{
    #[DataProvider('tagNamesProvider')]
    public function testTagNames(string $expectedName, int $index): void
    {
        $tags = $this->fetchData('/tags.php');

        $this->assertArrayHasKey($index, $tags, "Tag type at index {$index} is missing");
        $this->assertEquals($expectedName, $tags[$index]->name, "Tag type name at index {$index} does not match");
    }

    public function testTagsCount(): void
    {
        $tags = $this->fetchData('/tags.php');
        $this->assertCount(
            count(self::tagNamesProvider()),
            $tags,
            'The number of tags returned does not match the expected count'
        );
    }

    public static function tagNamesProvider(): array
    {
        return [
            ["Romance",0],
            ["Adventure",1],
            ["Friendship",2],
            ["Fluff",3],
            ["Family",4],
            ["Angst",5],
            ["Drama",6],
            ["Hurt | Comfort",7],
            ["Humor",8],
            ["Slices of life",9],
            ["Mystery",10],
            ["Crime",11],
            ["Supernatural",12],
            ["Fantasy",13],
            ["Pre-canon",14],
            ["Post-canon",15],
            ["Previous Generation",16],
            ["Next Generation",17],
            ["Gay | Yaoi",18],
            ["Lesbian | Yuri",19],
            ["Multi",20],
            ["Harem",21],
            ["Mecha",22],
            ["Dragons",23],
            ["Vampires",24],
            ["Pwp",25],
            ["Sexual content",26],
            ["Femdom",27],
            ["AU",28],
            ["Time travel",29],
            ["Good",30],
            ["Dark",31],
            ["Evil",32],
            ["One-shot",33]
        ];
    }

    #[DataProvider('tagsOptionalNamesProvider')]
    public function testTagsOptionalNames(string $expectedName, int $index): void
    {
        $tags = $this->fetchData('/tags.php?search_type_id=1');

        $this->assertArrayHasKey($index, $tags, "Tag at index {$index} is missing");
        $this->assertEquals($expectedName, $tags[$index]->name, "Tag name at index {$index} does not match");
    }

    public function testTagsOptionalCount(): void
    {
        $tags = $this->fetchData('/tags.php?search_type_id=1');

        $this->assertCount(
            count(self::tagsOptionalNamesProvider()),
            $tags,
            'The number of tags returned does not match the expected count'
        );
    }

    public static function tagsOptionalNamesProvider(): array
    {
        return [
            ["Romance",0],
            ["Adventure",1],
            ["Friendship",2],
            ["Fluff",3],
            ["Family",4],
            ["Angst",5],
            ["Drama",6],
            ["Hurt | Comfort",7],
            ["Humor",8],
            ["Slices of life",9],
            ["Mystery",10],
            ["Crime",11],
            ["Supernatural",12],
            ["Fantasy",13]
        ];
    }

    #[DataProvider('tagsCreationProvider')]
    public function testCreateTag($expectedName, $expectedDescription, $expectedTagType, $index): void
    {
        $tagData = new stdClass();
        $tagData->name = $expectedName;
        $tagData->description = $expectedDescription;
        $tagData->type_id = $expectedTagType;

        $entity = $this->postData('/tag.php', $tagData);
        $this->assertInstanceOf(Tag::class, $entity, 'The entity is not an instance of Author class');
        $this->assertNotEquals(0, $entity->getId(), 'The tag ID does not match the expected value');
        $this->assertNotEquals('', $entity->getName(), 'The tag name does not match the expected value');
        $this->assertNotEquals('', $entity->getDescription(), 'The tag description does not match the expected value');
        $this->assertNotEquals(0, $entity->getTypeId(), 'The tag type does not match the expected value');
        $this->assertEquals($tagData->name, $entity->getName(), 'The tag name does not match the expected value');
        $this->assertEquals($expectedDescription, $entity->getDescription(), 'The tag description does not match the expected value');
        $this->assertEquals($expectedTagType, $entity->getTypeId(), 'The tag type does not match the expected value');
    }

    public static function tagsCreationProvider(): array
    {
        return [
            ['Tag1', 'Description tag1', 2, 0],
            ['Tag2', 'Description tag2', 3, 1],
            ['Tag3', 'Description tag3', 1, 2]
        ];
    }
}
