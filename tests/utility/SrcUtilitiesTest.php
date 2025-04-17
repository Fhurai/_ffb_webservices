use PHPUnit\Framework\TestCase;

<?php

require_once __DIR__ . "/../../src/utility/SrcUtilities.php";

use PHPUnit\Framework\TestCase;

/**
 * Class SrcUtilitiesTest
 *
 * This class contains unit tests for the SrcUtilities class.
 */
#[\PHPUnit\Framework\Attributes\CoversClass(\SrcUtilities::class)]
class SrcUtilitiesTest extends TestCase {

    /**
     * Test for gsFunction method.
     */
    public function testGsFunction() {
        $this->assertEquals('getProperty', SrcUtilities::gsFunction('get', 'property'));
        $this->assertEquals('isProperty', SrcUtilities::gsFunction('is', 'property'));
        $this->assertEquals('IsProperty', SrcUtilities::gsFunction('get', 'is_property'));
        $this->assertEquals('IsProperty', SrcUtilities::gsFunction('get', 'isProperty'));
        $this->assertEquals('isIsProperty', SrcUtilities::gsFunction('is', 'is_property'));
    }

    /**
     * Test for getTableName method.
     */
    public function testGetTableName() {
        $this->assertEquals('ClassNamesTable', SrcUtilities::getTableName('ClassName'));
        $this->assertEquals('ClassNamesTable', SrcUtilities::getTableName('Class_Name'));
        $this->assertEquals('ClassNamesTable', SrcUtilities::getTableName('ClassName', true));
        $this->assertEquals('ClassNameTable', SrcUtilities::getTableName('ClassName', false));
    }
}
