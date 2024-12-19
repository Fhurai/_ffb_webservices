<?php

if (file_exists("./utilities/Tests.php"))
    require_once "./utilities/Tests.php";
else if (file_exists("../utilities/Tests.php"))
    require_once "../utilities/Tests.php";

if (file_exists("../../src/table/AuthorsTable.php"))
    require_once "../../src/table/AuthorsTable.php";
else if (file_exists("../src/table/AuthorsTable.php"))
    require_once "../src/table/AuthorsTable.php";

if (file_exists("../../src/table/FandomsTable.php"))
    require_once "../../src/table/FandomsTable.php";
else if (file_exists("../src/table/FandomsTable.php"))
    require_once "../src/table/FandomsTable.php";

if (file_exists("../../src/table/LanguagesTable.php"))
    require_once "../../src/table/LanguagesTable.php";
else if (file_exists("../src/table/LanguagesTable.php"))
    require_once "../src/table/LanguagesTable.php";

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

    public function testsAuthors(): void
    {
        $authorsTable = new AuthorsTable("tests");

        $named = $authorsTable->get(2);
        $this->addEqualsCheck("Authors_GET_id", 2, $named->getId());
        $this->addEqualsCheck("Authors_GET_name", "123irish", $named->getName());

        try {
            $named = $authorsTable->get(0);
            $this->addEqualsCheck("Authors_GET_exception", 1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Authors_GET_exception", FfbTableException::class, $e::class);
        }

        $named = $authorsTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addEqualsCheck("Authors_SEARCH_complete_count", 100, count($named));
        $this->addEqualsCheck("Authors_SEARCH_complete_min", 1, $named[0]->getId());

        try {
            $named = $authorsTable->create("{\"id\":\"1\",\"name\":\"Fhura\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Authors_CREATE_exception", 1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Authors_CREATE_exception", FfbTableException::class, $e::class);
        }

        $named = $authorsTable->new();
        $this->addEqualsCheck("Authors_NEW_id", 0, $named->getId());
        $this->addEqualsCheck("Authors_NEW_name", "", $named->getName());

        $named = $authorsTable->create(json_encode($named));
        $this->addNotEqualsCheck("Authors_CREATE_id", 0, $named->getId());

        // GET, SEARCH, CREATE(with id!=0), NEW, CREATE, [DELETE, RESTORE, UPDATE, REMOVE(with delete_date == null), DELETE, UPDATE (with delete_date != null), REMOVE
    }

    public function testsFandoms(): void
    {
        $fandomsTable = new FandomsTable("tests");

        $named = $fandomsTable->get(7);
        $this->addEqualsCheck("Fandoms_GET_id", 7, $named->getId());
        $this->addEqualsCheck("Fandoms_GET_name", "Harry Potter - Wizarding World", $named->getName());
        try {
            $named = $fandomsTable->get(0);
            $this->addEqualsCheck("Fandoms_GET_exception", 1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Fandoms_GET_exception", FfbTableException::class, $e::class);
        }

        $named = $fandomsTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addEqualsCheck("Fandoms_SEARCH_complete_count", 20, count($named));
        $this->addEqualsCheck("Fandoms_SEARCH_complete_min", 1, $named[0]->getId());

        try {
            $named = $fandomsTable->create("{\"id\":\"1\",\"name\":\"South PARK\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Fandoms_CREATE_exception", 1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Fandoms_CREATE_exception", FfbTableException::class, $e::class);
        }

        $named = $fandomsTable->new();
        $this->addEqualsCheck("Fandoms_NEW_id", 0, $named->getId());
        $this->addEqualsCheck("Fandoms_NEW_name", "", $named->getName());

        $named = $fandomsTable->create(json_encode($named));
        $this->addNotEqualsCheck("Fandoms_CREATE_id", 0, $named->getId());
    }

    public function testsLanguages(): void
    {
        $languagesTable = new LanguagesTable("tests");

        $named = $languagesTable->get(2);
        $this->addEqualsCheck( "Languages_GET_id", 2, $named->getId());
        $this->addEqualsCheck("Languages_GET_name", "English", $named->getName());
        $this->addEqualsCheck("Languages_GET_abbreviation", "EN", $named->getAbbreviation());
        try {
            $named = $languagesTable->get(0);
            $this->addEqualsCheck("Languages_GET_exception",1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Languages_GET_exception", FfbTableException::class, $e::class);
        }

        $named = $languagesTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addEqualsCheck("Languages_SEARCH_complete_count", 2, count($named));
        $this->addEqualsCheck("Languages_SEARCH_complete_min", 1, $named[0]->getId());

        try {
            $named = $languagesTable->create("{\"id\":\"1\",\"name\":\"Deutch\", \"Abbreviation\":\"DE\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Languages_CREATE_exception", 1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Languages_CREATE_exception", FfbTableException::class, $e::class);
        }

        $named = $languagesTable->new();
        $this->addEqualsCheck("Languages_NEW_id", 0, $named->getId());
        $this->addEqualsCheck("Languages_NEW_name", "", $named->getName());

        $named = $languagesTable->create(json_encode($named));
        $this->addNotEqualsCheck("Languages_CREATE_id", 0, $named->getId());
    }
}