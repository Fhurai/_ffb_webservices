<?php

if (file_exists("./utilities/Tests.php"))
    require_once "./utilities/Tests.php";
else if (file_exists("../utilities/Tests.php"))
    require_once "../utilities/Tests.php";

class NamedEntitiesTests extends Tests
{
    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();

        $this->testsAuthors();
        $this->testsFandoms();
        $this->testsLanguages();
    }

    public function testsAuthors():void
    {

    }

    public function testsFandoms():void
    {

    }

    public function testsLanguages(): void
    {

    }
}