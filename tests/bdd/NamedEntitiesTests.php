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

        // Do all tests.
        $this->testsAuthors();
        $this->testsFandoms();
        $this->testsLanguages();
    }

    /**
     * Tests on authors.
     * @return void
     */
    public function testsAuthors(): void
    {
        // Table creation for tests.
        $authorsTable = new AuthorsTable("tests");

        // Case get() without problem.
        $named = $authorsTable->get(2);
        $this->addEqualsCheck("Authors_GET_id", 2, $named->getId());
        $this->addEqualsCheck("Authors_GET_name", "123irish", $named->getName());

        // Case get() with exception.
        try {
            $named = $authorsTable->get(0);
            $this->addEqualsCheck("Authors_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_GET_exception", FfbTableException::class, $e::class);
        }

        // Search with filter.
        $named = $authorsTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addEqualsCheck("Authors_SEARCH_complete_count", 100, count($named));
        $this->addEqualsCheck("Authors_SEARCH_complete_min", 1, $named[0]->getId());

        // Create with exception.
        try {
            $named = $authorsTable->create("{\"id\":\"1\",\"name\":\"Fhura\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Authors_CREATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_CREATE_exception", FfbTableException::class, $e::class);
        }

        // New.
        $named = $authorsTable->new();
        $this->addEqualsCheck("Authors_NEW_id", 0, $named->getId());
        $this->addEqualsCheck("Authors_NEW_name", "", $named->getName());

        // Create without exception.
        try {
            $named = $authorsTable->create(json_encode($named));
            $namedId = $named->getId();
            $this->addNotEqualsCheck("Authors_CREATE_id", 0, $named->getId());
        } catch (Throwable $th) {
            $this->addNotEqualsCheck("Authors_CREATE_id", 0, 1);
        }

        // Delete without exception.
        try {
            $named = $authorsTable->delete($named->getId());
            $this->addEqualsCheck("Authors_DELETE_id", $namedId, $named->getId());
            $this->addNotEqualsCheck("Authors_DELETE_delete_date", null, $named->getDeleteDate());
        } catch (Throwable $th) {
            $this->addEqualsCheck("Authors_DELETE_id", 0, 1);
            $this->addNotEqualsCheck("Authors_DELETE_delete_date", 0, 1);
        }

        // Restore without exception.
        try {
            $named = $authorsTable->restore($named->getId());
            $this->addEqualsCheck("Authors_RESTORE_id", $namedId, $named->getId());
            $this->addEqualsCheck("Authors_RESTORE_delete_date", null, $named->getDeleteDate());
        } catch (Throwable $th) {
            $this->addEqualsCheck("Authors_RESTORE_id", 0, 1);
            $this->addEqualsCheck("Authors_RESTORE_delete_date", 0, 1);
        }

        // Update without exception.
        try {
            $named->setName("Fhuraï");
            $named = $authorsTable->update(json_encode($named));
            $this->addEqualsCheck("Authors_UPDATE_id", $namedId, $named->getId());
            $this->addEqualsCheck("Authors_UPDATE_name", "Fhuraï", $named->getName());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_UPDATE_id", 0, 1);
            $this->addEqualsCheck("Authors_UPDATE_name", 0, 1);
        }

        // Remove with exception
        try {
            $named = $authorsTable->remove(json_encode($named));
            $this->addEqualsCheck("Authors_REMOVE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_REMOVE_exception", FfbTableException::class, $e::class);
        }

        // Delete without exception
        try {
            $named = $authorsTable->delete($named->getId());
            $this->addNotEqualsCheck("Authors_DELETE_date_delete", null, $named->getDeleteDate());
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Authors_DELETE_date_delete", 0, 1);
        }

        // Update with exception
        try {
            $named = $authorsTable->update(json_encode($named));
            $this->addEqualsCheck("Authors_UPDATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_UPDATE_exception", FfbTableException::class, $e::class);
        }

        // Remove without exception
        try {
            $result = $authorsTable->remove(json_encode($named));
            $this->addEqualsCheck("Authors_REMOVE_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_REMOVE_result", 0, 1);
        }
    }

    /**
     * Tests on fandoms.
     * @return void
     */
    public function testsFandoms(): void
    {
        // Table creation for tests.
        $fandomsTable = new FandomsTable("tests");

        // Case get() without problem.
        $named = $fandomsTable->get(7);
        $this->addEqualsCheck("Fandoms_GET_id", 7, $named->getId());
        $this->addEqualsCheck("Fandoms_GET_name", "Harry Potter - Wizarding World", $named->getName());

        // Case get() with exception.
        try {
            $named = $fandomsTable->get(0);
            $this->addEqualsCheck("Fandoms_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_GET_exception", FfbTableException::class, $e::class);
        }

        // Search with filter.
        $named = $fandomsTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addNotEqualsCheck("Fandoms_SEARCH_complete_count", 19, count($named));
        $this->addEqualsCheck("Fandoms_SEARCH_complete_min", 1, $named[0]->getId());

        // Create with exception.
        try {
            $named = $fandomsTable->create("{\"id\":\"1\",\"name\":\"South PARK\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Fandoms_CREATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_CREATE_exception", FfbTableException::class, $e::class);
        }

        // New.
        $named = $fandomsTable->new();
        $this->addEqualsCheck("Fandoms_NEW_id", 0, $named->getId());
        $this->addEqualsCheck("Fandoms_NEW_name", "", $named->getName());

        // Create without exception.
        try {
            $named = $fandomsTable->create(json_encode($named));
            $namedId = $named->getId();
            $this->addNotEqualsCheck("Fandoms_CREATE_id", 0, $named->getId());
        } catch (Throwable $th) {
            $this->addNotEqualsCheck("Fandoms_CREATE_id", 0, 1);
        }

        // Delete without exception.
        try {
            $named = $fandomsTable->delete($named->getId());
            $this->addEqualsCheck("Fandoms_DELETE_id", $namedId, $named->getId());
            $this->addNotEqualsCheck("Fandoms_DELETE_delete_date", null, $named->getDeleteDate());
        } catch (Throwable $th) {
            $this->addEqualsCheck("Fandoms_DELETE_id", 0, 1);
            $this->addNotEqualsCheck("Fandoms_DELETE_delete_date", 0, 1);
        }

        // Restore without exception.
        try {
            $named = $fandomsTable->restore($named->getId());
            $this->addEqualsCheck("Fandoms_RESTORE_id", $namedId, $named->getId());
            $this->addEqualsCheck("Fandoms_RESTORE_delete_date", null, $named->getDeleteDate());
        } catch (Throwable $th) {
            $this->addEqualsCheck("Fandoms_RESTORE_id", 0, 1);
            $this->addEqualsCheck("Fandoms_RESTORE_delete_date", 0, 1);
        }

        // Update without exception.
        try {
            $named->setName("SOUTH PARK");
            $named = $fandomsTable->update(json_encode($named));
            $this->addEqualsCheck("Fandoms_UPDATE_id", $namedId, $named->getId());
            $this->addEqualsCheck("Fandoms_UPDATE_name", "SOUTH PARK", $named->getName());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_UPDATE_id", 0, 1);
            $this->addEqualsCheck("Fandoms_UPDATE_name", 0, 1);
        }

        // Remove with exception
        try {
            $named = $fandomsTable->remove(json_encode($named));
            $this->addEqualsCheck("Fandoms_REMOVE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_REMOVE_exception", FfbTableException::class, $e::class);
        }

        // Delete without exception
        try {
            $named = $fandomsTable->delete($named->getId());
            $this->addNotEqualsCheck("Fandoms_DELETE_date_delete", null, $named->getDeleteDate());
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Fandoms_DELETE_date_delete", 0, 1);
        }

        // Update with exception
        try {
            $named = $fandomsTable->update(json_encode($named));
            $this->addEqualsCheck("Fandoms_UPDATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_UPDATE_exception", FfbTableException::class, $e::class);
        }

        // Remove without exception
        try {
            $result = $fandomsTable->remove(json_encode($named));
            $this->addEqualsCheck("Fandoms_REMOVE_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_REMOVE_result", 0, 1);
        }
    }

    /**
     * Tests on languages.
     * @return void
     */
    public function testsLanguages(): void
    {
        // Table creation for tests.
        $languagesTable = new LanguagesTable("tests");

        // Case get() without problem.
        $named = $languagesTable->get(1);
        $this->addEqualsCheck("Languages_GET_id", 1, $named->getId());
        $this->addEqualsCheck("Languages_GET_name", "Français", $named->getName());

        // Case get() with exception.
        try {
            $named = $languagesTable->get(0);
            $this->addEqualsCheck("Languages_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_GET_exception", FfbTableException::class, $e::class);
        }

        // Search with filter.
        $named = $languagesTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addNotEqualsCheck("Languages_SEARCH_complete_count", 19, count($named));
        $this->addEqualsCheck("Languages_SEARCH_complete_min", 1, $named[0]->getId());

        // Create with exception.
        try {
            $named = $languagesTable->create("{\"id\":\"1\",\"name\":\"Deutch\", \"abbreviation\":\"DE\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Languages_CREATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_CREATE_exception", FfbTableException::class, $e::class);
        }

        // New.
        $named = $languagesTable->new();
        $this->addEqualsCheck("Languages_NEW_id", 0, $named->getId());
        $this->addEqualsCheck("Languages_NEW_name", "", $named->getName());

        // Create without exception.
        try {
            $named = $languagesTable->create(json_encode($named));
            $namedId = $named->getId();
            $this->addNotEqualsCheck("Languages_CREATE_id", 0, $named->getId());
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Languages_CREATE_id", 0, 1);
        }

        // Delete without exception.
        try {
            $named = $languagesTable->delete($named->getId());
            $this->addEqualsCheck("Languages_DELETE_id", $namedId, $named->getId());
            $this->addNotEqualsCheck("Languages_DELETE_delete_date", null, $named->getDeleteDate());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_DELETE_id", 0, 1);
            $this->addNotEqualsCheck("Languages_DELETE_delete_date", 0, 1);
        }

        // Restore without exception.
        try {
            $named = $languagesTable->restore($named->getId());
            $this->addEqualsCheck("Languages_RESTORE_id", $namedId, $named->getId());
            $this->addEqualsCheck("Languages_RESTORE_delete_date", null, $named->getDeleteDate());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_RESTORE_id", 0, 1);
            $this->addEqualsCheck("Languages_RESTORE_delete_date", 0, 1);
        }
        
        // Update without exception.
        try {
            $named->setName("Deutsch");
            $named->setAbbreviation("DE");
            $named = $languagesTable->update(json_encode($named));
            $this->addEqualsCheck("Languages_UPDATE_id", $namedId, $named->getId());
            $this->addEqualsCheck("Languages_UPDATE_name", "Deutsch", $named->getName());
            $this->addEqualsCheck("Languages_UPDATE_abbreviation", "DE", $named->getAbbreviation());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_UPDATE_id", 0, 1);
            $this->addEqualsCheck("Languages_UPDATE_name", 0, 1);
            $this->addEqualsCheck("Languages_UPDATE_abbreviation", 0, 1);
        }

        // Remove with exception
        try {
            $named = $languagesTable->remove(json_encode($named));
            $this->addEqualsCheck("Languages_REMOVE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_REMOVE_exception", FfbTableException::class, $e::class);
        }

        // Delete without exception
        try {
            $named = $languagesTable->delete($named->getId());
            $this->addNotEqualsCheck("Languages_DELETE_date_delete", null, $named->getDeleteDate());
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Languages_DELETE_date_delete", 0, 1);
        }

        // Update with exception
        try {
            $named = $languagesTable->update(json_encode($named));
            $this->addEqualsCheck("Languages_UPDATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_UPDATE_exception", FfbTableException::class, $e::class);
        }

        // Remove without exception
        try {
            $result = $languagesTable->remove(json_encode($named));
            $this->addEqualsCheck("Languages_REMOVE_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_REMOVE_result", 0, 1);
        }
    }
}