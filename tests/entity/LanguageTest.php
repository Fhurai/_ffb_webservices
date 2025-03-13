<?php

require_once __DIR__ . "/../../src/entity/Language.php";
require_once __DIR__ . "/../../tests/entity/NamedEntityTest.php";

class LanguageTest extends NamedEntityTest
{
    public function testConstructor()
    {
        $language = new Language();
        $this->assertInstanceOf(Language::class, $language);
        $this->assertEquals("", $language->getAbbreviation());
    }

    public function testGetAndSetAbbreviation()
    {
        $language = new Language();
        $language->setAbbreviation("EN");
        $this->assertEquals("EN", $language->getAbbreviation());
    }

    public function testGetNewObject()
    {
        $newLanguage = Language::getNewObject();
        $this->assertInstanceOf(Language::class, $newLanguage);
    }

    public function testJsonSerialize()
    {
        $language = new Language();
        $language->setAbbreviation("EN");
        $expected = [
            "id" => 0,
            "creation_date" => $language->getCreationDate(),
            "update_date" => $language->getUpdateDate(),
            "delete_date" => $language->getDeleteDate(),
            "name" => "", // Assuming NamedEntity has a name property
            "abbreviation" => "EN"
        ];
        $this->assertEquals($expected, $language->jsonSerialize());
    }
}