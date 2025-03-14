<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Language.php';

class LanguageTest extends TestCase
{
    public function testConstructorInitializesDefaultValues()
    {
        $language = new Language();
        $this->assertSame('', $language->getName());
        $this->assertSame('', $language->getAbbreviation());
        $this->assertEquals(0, $language->getId());
    }

    public function testNameSetterAndGetter()
    {
        $language = new Language();
        $testName = 'English';
        $language->setName($testName);
        $this->assertSame($testName, $language->getName());
    }

    public function testAbbreviationSetterAndGetter()
    {
        $language = new Language();
        $testAbbrev = 'EN';
        $language->setAbbreviation($testAbbrev);
        $this->assertSame($testAbbrev, $language->getAbbreviation());
    }

    public function testJsonSerializationContainsAllProperties()
    {
        $language = new Language();
        $language->setName('Spanish');
        $language->setAbbreviation('ES');
        $data = $language->jsonSerialize();

        $this->assertArrayHasKey('id', $data);
        $this->assertArrayHasKey('name', $data);
        $this->assertArrayHasKey('abbreviation', $data);
        $this->assertEquals('Spanish', $data['name']);
        $this->assertEquals('ES', $data['abbreviation']);
    }

    public function testGetNewObjectReturnsLanguageInstance()
    {
        $language = Language::getNewObject();
        $this->assertInstanceOf(Language::class, $language);
    }

    public function testPropertyModificationSequence()
    {
        $language = new Language();
        
        // Test initial empty values
        $this->assertSame('', $language->getName());
        $this->assertSame('', $language->getAbbreviation());

        // Set first values
        $language->setName('French');
        $language->setAbbreviation('FR');
        $this->assertSame('French', $language->getName());
        $this->assertSame('FR', $language->getAbbreviation());

        // Update values
        $language->setName('German');
        $language->setAbbreviation('DE');
        $this->assertSame('German', $language->getName());
        $this->assertSame('DE', $language->getAbbreviation());
    }

    public function testSpecialCharactersHandling()
    {
        $language = new Language();
        $complexName = 'Português (Brasil)';
        $complexAbbrev = 'PT-BR';

        $language->setName($complexName);
        $language->setAbbreviation($complexAbbrev);

        $this->assertSame($complexName, $language->getName());
        $this->assertSame($complexAbbrev, $language->getAbbreviation());
    }
}