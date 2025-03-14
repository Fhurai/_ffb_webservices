<?php

require_once __DIR__ . "/../../src/entity/Language.php";
require_once __DIR__ . "/../../tests/entity/NamedEntityTest.php";

class LanguageTest extends NamedEntityTest
{
    protected function setUp(): void
    {
        $this->entity = new Language();
    }
    public function testConstructor()
    {
        $this->assertInstanceOf(Language::class, $this->entity);
        $this->assertEquals("", $this->entity->getAbbreviation());
    }

    public function testGetAndSetAbbreviation()
    {
        $this->entity->setAbbreviation("EN");
        $this->assertEquals("EN", $this->entity->getAbbreviation());
    }

    public function testGetNewObject()
    {
        $newLanguage = Language::getNewObject();
        $this->assertInstanceOf(Language::class, $newLanguage);
    }

    public function testJsonSerialize()
    {
        $this->entity->setAbbreviation("EN");
        $expected = [
            "id" => 0,
            "creation_date" => $this->entity->getCreationDate(),
            "update_date" => $this->entity->getUpdateDate(),
            "delete_date" => $this->entity->getDeleteDate(),
            "name" => "", // Assuming NamedEntity has a name property
            "abbreviation" => "EN"
        ];
        $this->assertEquals($expected, $this->entity->jsonSerialize());
    }
}