<?php

require_once __DIR__ . "/../../src/entity/Language.php";
require_once __DIR__ . "/../../tests/entity/NamedEntityTest.php";

class LanguageTest extends NamedEntityTest
{
    protected function setUp(): void
    {
        $this->namedEntity = new Language();
    }
    public function testConstructor()
    {
        $this->assertInstanceOf(Language::class, $this->namedEntity);
        $this->assertEquals("", $this->namedEntity->getAbbreviation());
    }

    public function testGetAndSetAbbreviation()
    {
        $this->namedEntity->setAbbreviation("EN");
        $this->assertEquals("EN", $this->namedEntity->getAbbreviation());
    }

    public function testGetNewObject()
    {
        $newLanguage = Language::getNewObject();
        $this->assertInstanceOf(Language::class, $newLanguage);
    }

    public function testJsonSerialize()
    {
        $this->namedEntity->setAbbreviation("EN");
        $expected = [
            "id" => 0,
            "creation_date" => $this->namedEntity->getCreationDate(),
            "update_date" => $this->namedEntity->getUpdateDate(),
            "delete_date" => $this->namedEntity->getDeleteDate(),
            "name" => "", // Assuming NamedEntity has a name property
            "abbreviation" => "EN"
        ];
        $this->assertEquals($expected, $this->namedEntity->jsonSerialize());
    }
}