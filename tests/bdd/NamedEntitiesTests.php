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

if (file_exists("../../src/exceptions/FfbTableException.php"))
    require_once "../../src/exceptions/FfbTableException.php";
else if (file_exists("../src/exceptions/FfbTableException.php"))
    require_once "../src/exceptions/FfbTableException.php";
else if (file_exists("../../src/exceptions/FfbTableException.php"))
    require_once "../../src/exceptions/FfbTableException.php";

/**
 * Named Entitiies tests class.
 */
class NamedEntitiesTests extends Tests
{
    private string $user = "user";
    
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
        $authorsTable = new AuthorsTable("tests", $this->user);

        // Case get() without problem.
        $named = $authorsTable->get(2);
        $this->addEqualsCheck("Authors_GET_id", 2, $named->getId());
        $this->addEqualsCheck("Authors_GET_name", "123irish", $named->getName());
        $this->addNotEqualsCheck("Authors_GET_creation_date", null, $named->getCreationDate()->format("Y-m-d H:i:s"));
        $this->addNotEqualsCheck("Authors_GET_update_date", null, $named->getUpdateDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Authors_GET_delete_date", null, $named->getDeleteDate());

        // Case get() with exception.
        try {
            $named = $authorsTable->get(0);
            $this->addEqualsCheck("Authors_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_GET_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Authors_GET_exception_message", "No data for authors n°0", $e->getMessage());
            $this->addEqualsCheck("Authors_GET_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Authors_GET_exception_trace", 3, count($e->getTrace()));
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
            $this->addEqualsCheck("Authors_CREATE_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Authors_CREATE_exception_message", "New entity has an id already !", $e->getMessage());
            $this->addEqualsCheck("Authors_CREATE_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Authors_CREATE_exception_trace", 3, count($e->getTrace()));
        }

        // New.
        $named = $authorsTable->new();
        $this->addEqualsCheck("Authors_NEW_id", 0, $named->getId());
        $this->addEqualsCheck("Authors_NEW_name", "", $named->getName());
        $this->addNotEqualsCheck("Authors_NEW_creation_date", null, $named->getCreationDate());
        $this->addNotEqualsCheck("Authors_NEW_update_date", null, $named->getUpdateDate());
        $this->addEqualsCheck("Authors_NEW_delete_date", null, $named->getDeleteDate());

        // Create without exception.
        try {
            $named->setName("Kaiser57");
            $named = $authorsTable->create(json_encode($named));
            $namedId = $named->getId();
            $this->addNotEqualsCheck("Authors_CREATE_id", 0, $named->getId());
            $this->addNotEqualsCheck("Authors_CREATE_creation_date", null, $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Authors_CREATE_update_date", null, $named->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Authors_CREATE_dates", $named->getCreationDate()->format("Y-m-d H:i:s"), $named->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Authors_CREATE_delete_date", null, $named->getDeleteDate());
        } catch (Throwable $th) {
            $this->addEqualsCheck("Authors_CREATE_no_exception", 0, 1);
        }

        // Delete without exception.
        try {
            sleep(1);
            $named = $authorsTable->delete($named->getId());
            $this->addEqualsCheck("Authors_DELETE1_id", $namedId, $named->getId());
            $this->addNotEqualsCheck("Authors_DELETE1_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Authors_DELETE1_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Authors_DELETE1_dates_delete", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $th) {
            $this->addEqualsCheck("Authors_DELETE1_no_exception", 0, 1);
        }

        // Restore without exception.
        try {
            $named = $authorsTable->restore($named->getId());
            $this->addEqualsCheck("Authors_RESTORE_id", $namedId, $named->getId());
            $this->addEqualsCheck("Authors_RESTORE_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Authors_RESTORE_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $th) {
            $this->addEqualsCheck("Authors_RESTORE_no_exception", 0, 1);
        }

        // Update without exception.
        try {
            $named->setName("Kaïser57");
            $named = $authorsTable->update(json_encode($named));
            $this->addEqualsCheck("Authors_UPDATE1_id", $namedId, $named->getId());
            $this->addEqualsCheck("Authors_UPDATE1_name_value", "Kaïser57", $named->getName());
            $this->addNotEqualsCheck("Authors_UPDATE1_name_empty", "", $named->getName());
        } catch (Throwable $th) {
            $this->addEqualsCheck("Authors_UPDATE1_no_exception", 0, 1);
        }

        // Remove with exception
        try {
            $named = $authorsTable->remove(json_encode($named));
            $this->addEqualsCheck("Authors_REMOVE1_no_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_REMOVE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Authors_REMOVE1_exception_message", "Entity being removed has no delete date !", $e->getMessage());
            $this->addEqualsCheck("Authors_REMOVE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Authors_REMOVE1_exception_trace", 3, count($e->getTrace()));
        }

        // Delete without exception
        try {
            $named = $authorsTable->delete($named->getId());
            $this->addEqualsCheck("Authors_DELETE2_id", $namedId, $named->getId());
            $this->addNotEqualsCheck("Authors_DELETE2_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Authors_DELETE2_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Authors_DELETE2_dates_delete", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Authors_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $named = $authorsTable->update(json_encode($named));
            $this->addEqualsCheck("Authors_UPDATE2_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_UPDATE2_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Authors_UPDATE2_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Authors_UPDATE2_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Authors_UPDATE2_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $authorsTable->remove(json_encode($named));
            $this->addEqualsCheck("Authors_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_REMOVE2_no_exception", 0, 1);
        }

        try {
            $entity = $authorsTable->get($named->getId());
            $this->addEqualsCheck("Authors_REMOVE2_exception", 0, 1);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Authors_REMOVE2_get_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Authors_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Authors_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }
    }

    /**
     * Tests on fandoms.
     * @return void
     */
    public function testsFandoms(): void
    {
        // Table creation for tests.
        $fandomsTable = new FandomsTable("tests", $this->user);

        // Case get() without problem.
        $named = $fandomsTable->get(8);
        $this->addEqualsCheck("Fandoms_GET_id", 8, $named->getId());
        $this->addEqualsCheck("Fandoms_GET_name", "Harry Potter - Wizarding World", $named->getName());
        $this->addNotEqualsCheck("Fandoms_GET_creation_date", null, $named->getCreationDate()->format("Y-m-d H:i:s"));
        $this->addNotEqualsCheck("Fandoms_GET_update_date", null, $named->getUpdateDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Fandoms_GET_delete_date", null, $named->getDeleteDate());

        // Case get() with exception.
        try {
            $named = $fandomsTable->get(0);
            $this->addEqualsCheck("Fandoms_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_GET_exception", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fandoms_GET_exception_message", "No data for fandoms n°0", $e->getMessage());
            $this->addEqualsCheck("Fandoms_GET_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Fandoms_GET_exception_trace", 3, count($e->getTrace()));
        }

        // Search with filter.
        $named = $fandomsTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addNotEqualsCheck("Fandoms_SEARCH_complete_count", 19, count($named));
        $this->addEqualsCheck("Fandoms_SEARCH_complete_min", 1, $named[0]->getId());

        // Create with exception.
        try {
            $named = $fandomsTable->create("{\"id\":\"1\",\"name\":\"South PARK\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Fandoms_CREATE1_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_CREATE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fandoms_CREATE1_exception_message", "New entity has an id already !", $e->getMessage());
            $this->addEqualsCheck("Fandoms_CREATE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Fandoms_CREATE1_exception_trace", 3, count($e->getTrace()));
        }

        // New.
        $named = $fandomsTable->new();
        $this->addEqualsCheck("Fandoms_NEW_id", 0, $named->getId());
        $this->addEqualsCheck("Fandoms_NEW_name", "", $named->getName());
        $this->addNotEqualsCheck("Fandoms_NEW_creation_date", null, $named->getCreationDate());
        $this->addNotEqualsCheck("Fandoms_NEW_update_date", null, $named->getUpdateDate());
        $this->addEqualsCheck("Fandoms_NEW_delete_date", null, $named->getDeleteDate());

        // Create without exception.
        try {
            $named->setName("South Park");
            $named = $fandomsTable->create(json_encode($named));
            $namedId = $named->getId();
            $this->addNotEqualsCheck("Fandoms_CREATE2_id", 0, $named->getId());
            $this->addNotEqualsCheck("Fandoms_CREATE2_creation_date", null, $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Fandoms_CREATE2_update_date", null, $named->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Fandoms_CREATE2_dates", $named->getCreationDate()->format("Y-m-d H:i:s"), $named->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Fandoms_CREATE2_delete_date", null, $named->getDeleteDate());
        } catch (Throwable $th) {
            $this->addEqualsCheck("Fandoms_CREATE2_no_exception", 0, 1);
        }

        // Delete without exception.
        try {
            sleep(1);
            $named = $fandomsTable->delete($named->getId());
            $this->addEqualsCheck("Fandoms_DELETE1_id", $namedId, $named->getId());
            $this->addNotEqualsCheck("Fandoms_DELETE1_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Fandoms_DELETE1_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Fandoms_DELETE1_dates_delete", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $th) {
            $this->addEqualsCheck("Fandoms_DELETE1_no_exception", 0, 1);
        }

        // Restore without exception.
        try {
            $named = $fandomsTable->restore($named->getId());
            $this->addEqualsCheck("Fandoms_RESTORE_id", $namedId, $named->getId());
            $this->addEqualsCheck("Fandoms_RESTORE_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Fandoms_RESTORE_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $th) {
            $this->addEqualsCheck("Fandoms_RESTORE_no_exception", 0, 1);
        }

        // Update without exception.
        try {
            $named->setName("SOUTH PARK");
            $named = $fandomsTable->update(json_encode($named));
            $this->addEqualsCheck("Fandoms_UPDATE1_id", $namedId, $named->getId());
            $this->addEqualsCheck("Fandoms_UPDATE1_name_value", "SOUTH PARK", $named->getName());
            $this->addNotEqualsCheck("Fandoms_UPDATE1_name_empty", "", $named->getName());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_UPDATE1_no_exception", 0, 1);
        }

        // Remove with exception
        try {
            $named = $fandomsTable->remove(json_encode($named));
            $this->addEqualsCheck("Fandoms_REMOVE1_no_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_REMOVE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fandoms_REMOVE1_exception_message", "Entity being removed has no delete date !", $e->getMessage());
            $this->addEqualsCheck("Fandoms_REMOVE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Fandoms_REMOVE1_exception_trace", 3, count($e->getTrace()));
        }

        // Delete without exception
        try {
            $named = $fandomsTable->delete($named->getId());
            $this->addEqualsCheck("Fandoms_DELETE2_id", $namedId, $named->getId());
            $this->addNotEqualsCheck("Fandoms_DELETE2_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Fandoms_DELETE2_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Fandoms_DELETE2_dates_delete", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Fandoms_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $named = $fandomsTable->update(json_encode($named));
            $this->addEqualsCheck("Fandoms_UPDATE2_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_UPDATE2_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fandoms_UPDATE2_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Fandoms_UPDATE2_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Fandoms_UPDATE2_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $fandomsTable->remove(json_encode($named));
            $this->addEqualsCheck("Fandoms_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_REMOVE2_no_exception", 0, 1);
        }

        try {
            $entity = $fandomsTable->get($named->getId());
            $this->addEqualsCheck("Fandoms_REMOVE2_exception", 0, 1);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fandoms_REMOVE2_get_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fandoms_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Fandoms_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }
    }

    /**
     * Tests on languages.
     * @return void
     */
    public function testsLanguages(): void
    {
        // Table creation for tests.
        $languagesTable = new LanguagesTable("tests", $this->user);

        // Case get() without problem.
        $named = $languagesTable->get(1);
        $this->addEqualsCheck("Languages_GET_id", 1, $named->getId());
        $this->addEqualsCheck("Languages_GET_name", "Français", $named->getName());
        $this->addNotEqualsCheck("Languages_GET_creation_date", null, $named->getCreationDate()->format("Y-m-d H:i:s"));
        $this->addNotEqualsCheck("Languages_GET_update_date", null, $named->getUpdateDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Languages_GET_delete_date", null, $named->getDeleteDate());

        // Case get() with exception.
        try {
            $named = $languagesTable->get(0);
            $this->addEqualsCheck("Languages_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_GET_exception", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Languages_GET_exception_message", "No data for languages n°0", $e->getMessage());
            $this->addEqualsCheck("Languages_GET_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Languages_GET_exception_trace", 3, count($e->getTrace()));
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
            $this->addEqualsCheck("Languages_CREATE_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Languages_CREATE_exception_message", "New entity has an id already !", $e->getMessage());
            $this->addEqualsCheck("Languages_CREATE_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Languages_CREATE_exception_trace", 3, count($e->getTrace()));
        }

        // New.
        $named = $languagesTable->new();
        $this->addEqualsCheck("Languages_NEW_id", 0, $named->getId());
        $this->addEqualsCheck("Languages_NEW_name", "", $named->getName());
        $this->addNotEqualsCheck("Languages_NEW_creation_date", null, $named->getCreationDate());
        $this->addNotEqualsCheck("Languages_NEW_update_date", null, $named->getUpdateDate());
        $this->addEqualsCheck("Languages_NEW_delete_date", null, $named->getDeleteDate());

        // Create without exception.
        try {
            $named->setName("Portuguese");
            $named->setAbbreviation("PT");
            $named = $languagesTable->create(json_encode($named));
            $namedId = $named->getId();
            $this->addNotEqualsCheck("Languages_CREATE_id", 0, $named->getId());
            $this->addNotEqualsCheck("Languages_CREATE_creation_date", null, $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Languages_CREATE_update_date", null, $named->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Languages_CREATE_dates", $named->getCreationDate()->format("Y-m-d H:i:s"), $named->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Languages_CREATE_delete_date", null, $named->getDeleteDate());
        } catch (Throwable $th) {
            $this->addEqualsCheck("Languages_CREATE_no_exception", 0, 1);
        }

        // Delete without exception.
        try {
            sleep(1);
            $named = $languagesTable->delete($named->getId());
            $this->addEqualsCheck("Languages_DELETE1_id", $namedId, $named->getId());
            $this->addNotEqualsCheck("Languages_DELETE1_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Languages_DELETE1_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Languages_DELETE1_dates_delete", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_DELETE1_no_exception", 0, 1);
        }

        // Restore without exception.
        try {
            $named = $languagesTable->restore($named->getId());
            $this->addEqualsCheck("Languages_RESTORE_id", $namedId, $named->getId());
            $this->addEqualsCheck("Languages_RESTORE_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Languages_RESTORE_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_RESTORE_no_exception", 0, 1);
        }

        // Update without exception.
        try {
            $named->setName("Deutsch");
            $named->setAbbreviation("DE");
            $named = $languagesTable->update(json_encode($named));
            $this->addEqualsCheck("Languages_UPDATE_id", $namedId, actual: $named->getId());
            $this->addEqualsCheck("Languages_UPDATE_name_value", "Deutsch", $named->getName());
            $this->addNotEqualsCheck("Languages_UPDATE_name_empty", "", $named->getName());
            $this->addEqualsCheck("Languages_UPDATE_abbreviation", "DE", $named->getAbbreviation());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_UPDATE_no_exception", 0, 1);
        }

        // Remove with exception
        try {
            $named = $languagesTable->remove(json_encode($named));
            $this->addEqualsCheck("Languages_REMOVE1_no_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_REMOVE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Languages_REMOVE1_exception_message", "Entity being removed has no delete date !", $e->getMessage());
            $this->addEqualsCheck("Languages_REMOVE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Languages_REMOVE1_exception_trace", 3, count($e->getTrace()));
        }

        // Delete without exception
        try {
            $named = $languagesTable->delete($named->getId());
            $this->addEqualsCheck("Languages_DELETE2_id", $namedId, $named->getId());
            $this->addNotEqualsCheck("Languages_DELETE2_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Languages_DELETE2_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Languages_DELETE2_dates_delete", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Languages_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $named = $languagesTable->update(json_encode($named));
            $this->addEqualsCheck("Languages_UPDATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_UPDATE_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Languages_UPDATE_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Languages_UPDATE_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Languages_UPDATE_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $languagesTable->remove(json_encode($named));
            $this->addEqualsCheck("Languages_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_REMOVE2_no_exception", 0, 1);
        }

        try {
            $entity = $languagesTable->get($named->getId());
            $this->addEqualsCheck("Languages_REMOVE2_exception", 0, 1);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Languages_REMOVE2_get_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Languages_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Languages_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }
    }
}