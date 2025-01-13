<?php

if (file_exists("./utilities/Tests.php"))
    require_once "./utilities/Tests.php";
else if (file_exists("../utilities/Tests.php"))
    require_once "../utilities/Tests.php";

if (file_exists("../../src/table/TagsTable.php"))
    require_once "../../src/table/TagsTable.php";
else if (file_exists("../src/table/TagsTable.php"))
    require_once "../src/table/TagsTable.php";

if (file_exists("../../src/table/CharactersTable.php"))
    require_once "../../src/table/CharactersTable.php";
else if (file_exists("../src/table/CharactersTable.php"))
    require_once "../src/table/CharactersTable.php";

if (file_exists("../../src/table/RelationsTable.php"))
    require_once "../../src/table/RelationsTable.php";
else if (file_exists("../src/table/RelationsTable.php"))
    require_once "../src/table/RelationsTable.php";

if (file_exists("../../src/table/FanfictionsTable.php"))
    require_once "../../src/table/FanfictionsTable.php";
else if (file_exists("../src/table/FanfictionsTable.php"))
    require_once "../src/table/FanfictionsTable.php";

if (file_exists("../../src/table/LinksTable.php"))
    require_once "../../src/table/LinksTable.php";
else if (file_exists("../src/table/LinksTable.php"))
    require_once "../src/table/LinksTable.php";

if (file_exists("../../src/table/SeriesTable.php"))
    require_once "../../src/table/SeriesTable.php";
else if (file_exists("../src/table/SeriesTable.php"))
    require_once "../src/table/SeriesTable.php";

if (file_exists("../../src/exceptions/FfbTableException.php"))
    require_once "../../src/exceptions/FfbTableException.php";
else if (file_exists("../src/exceptions/FfbTableException.php"))
    require_once "../src/exceptions/FfbTableException.php";
else if (file_exists("../../src/exceptions/FfbTableException.php"))
    require_once "../../src/exceptions/FfbTableException.php";

/**
 * Complex Entities tests class.
 */
class ComplexEntitiesTests extends Tests
{
    private string $user = "user";
    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();

        // Do all tests.
        $this->testsTags();
        $this->testsCharacters();
        $this->testsRelations();
        $this->testsFanfictions();
        $this->testsSeries();
    }

    /**
     * Tests on tags
     * @return void
     */
    public function testsTags(): void
    {
        // Table creation for tests.
        $tagsTable = new TagsTable("tests", $this->user);

        // Case get() without problem.
        $complex = $tagsTable->get(1, true);
        $this->addEqualsCheck("Tags_GET_id", 1, $complex->getId());
        $this->addEqualsCheck("Tags_GET_name", "Romance", $complex->getName());
        $this->addNotEqualsCheck("Tags_GET_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
        $this->addNotEqualsCheck("Tags_GET_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Tags_GET_delete_date", null, $complex->getDeleteDate());
        $this->addEqualsCheck("Tags_GET_tagtype_association", $complex->getTypeId(), $complex->tag_type->getId());

        // Case get() with exception.
        try {
            $complex = $tagsTable->get(0);
            $this->addEqualsCheck("Tags_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_GET_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Tags_GET_exception_message", "No data for tags n°0", $e->getMessage());
            $this->addEqualsCheck("Tags_GET_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Tags_GET_exception_trace", 3, count($e->getTrace()));
        }

        // Search with filter.
        $complex = $tagsTable->search(["filter" => ["limit" => 0, "offset" => 100]], true);
        $this->addNotEqualsCheck("Tags_SEARCH_complete_count", 100, count($complex));
        $this->addEqualsCheck("Tags_SEARCH_complete_min", 1, $complex[0]->getId());

        // Create with exception.
        try {
            $complex = $tagsTable->create("{\"id\":\"1\",\"name\":\"Veela\", \"description\":\"Story concerns or mentions bits about veela.\", \"type_id\":\"4\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Tags_CREATE1_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_CREATE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Tags_CREATE1_exception_message", "New entity has an id already !", $e->getMessage());
            $this->addEqualsCheck("Tags_CREATE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Tags_CREATE1_exception_trace", 3, count($e->getTrace()));
        }

        // New.
        $complex = $tagsTable->new();
        $this->addEqualsCheck("Tags_NEW_id", 0, $complex->getId());
        $this->addEqualsCheck("Tags_NEW_name", "", $complex->getName());
        $this->addEqualsCheck("Tags_NEW_description", "", $complex->getDescription());
        $this->addEqualsCheck("Tags_NEW_tagtype_id", -1, $complex->getTypeId());
        $this->addNotEqualsCheck("Tags_NEW_creation_date", null, $complex->getCreationDate());
        $this->addNotEqualsCheck("Tags_NEW_update_date", null, $complex->getUpdateDate());
        $this->addEqualsCheck("Tags_NEW_delete_date", null, $complex->getDeleteDate());

        // Create with exception.
        try {
            $complex = $tagsTable->create(json_encode(value: $complex));
            $this->addEqualsCheck("Tags_CREATE2_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_CREATE2_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Tags_CREATE2_exception_message", true, str_contains($e->getMessage(), "SQLSTATE"));
            $this->addEqualsCheck("Tags_CREATE2_exception_code", 500, $e->getCode());
            $this->addEqualsCheck("Tags_CREATE2_exception_trace", 3, count($e->getTrace()));
        }

        // Create without exception.
        try {
            $complex->setName("Nobility");
            $complex->setTypeId(1);
            $complex = $tagsTable->create(json_encode($complex));
            $complexId = $complex->getId();
            $this->addNotEqualsCheck("Tags_CREATE3_id", 0, $complexId);
            $this->addEqualsCheck("Tags_CREATE3_name", "Nobility", $complex->getName());
            $this->addEqualsCheck("Tags_CREATE3_type_id", 1, $complex->getTypeId());
            $this->addEqualsCheck("Tags_CREATE3_tagtype_id", 1, $complex->tag_type->getId());
            $this->addEqualsCheck("Tags_CREATE3_tagtype_name", "Genre", $complex->tag_type->getName());
            $this->addNotEqualsCheck("Tags_CREATE3_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Tags_CREATE3_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Tags_CREATE3_dates", $complex->getCreationDate()->format("Y-m-d H:i:s"), $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Tags_CREATE3_delete_date", null, $complex->getDeleteDate());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_CREATE3_no_exception", 0, 1);
        }

        // Delete without exception.
        try {
            sleep(1);
            $complex = $tagsTable->delete($complex->getId(), true);
            $this->addEqualsCheck("Tags_DELETE1_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Tags_DELETE1_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Tags_DELETE1_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Tags_DELETE1_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_DELETE1_no_exception", 0, 1);
        }

        // Restore without exception.
        try {
            $complex = $tagsTable->restore($complex->getId(), true);
            $this->addEqualsCheck("Tags_RESTORE_id", $complexId, $complex->getId());
            $this->addEqualsCheck("Tags_RESTORE_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Tags_RESTORE_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_RESTORE_no_exception", 0, 1);
        }

        // Update without exception.
        try {
            $complex->setName("Veela");
            $complex->setDescription("Story concerns or mentions bits about veela.");
            $complex->setTypeId(4);
            $complex = $tagsTable->update(json_encode($complex));
            $this->addEqualsCheck("Tags_UPDATE_id", $complexId, $complex->getId());
            $this->addEqualsCheck("Tags_UPDATE_name", "Veela", $complex->getName());
            $this->addNotEqualsCheck("Tags_UPDATE_name_empty", "", $complex->getName());
            $this->addEqualsCheck("Tags_UPDATE_description", "Story concerns or mentions bits about veela.", $complex->getDescription());
            $this->addEqualsCheck("Tags_UPDATE_type_id", 4, $complex->getTypeId());
            $this->addEqualsCheck("Tags_UPDATE_tagtype_id", 4, $complex->tag_type->getId());
            $this->addEqualsCheck("Tags_UPDATE_tagtype_name", "Other", $complex->tag_type->getName());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_UPDATE_no_exception", 0, 1);
        }

        // Remove with exception
        try {
            $complex = $tagsTable->remove(json_encode($complex));
            $this->addEqualsCheck("Tags_REMOVE1_no_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_REMOVE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Tags_REMOVE1_exception_message", "Entity being removed has no delete date !", $e->getMessage());
            $this->addEqualsCheck("Tags_REMOVE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Tags_REMOVE1_exception_trace", 3, count($e->getTrace()));
        }

        // Delete without exception
        try {
            $complex = $tagsTable->delete($complex->getId());
            $this->addEqualsCheck("Tags_DELETE2_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Tags_DELETE2_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Tags_DELETE2_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Tags_DELETE2_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Tags_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $complex = $tagsTable->update(json_encode($complex));
            $this->addEqualsCheck("Tags_UPDATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_UPDATE_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Tags_UPDATE_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Tags_UPDATE_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Tags_UPDATE_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $tagsTable->remove(json_encode($complex));
            $this->addEqualsCheck("Tags_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_REMOVE2_no_exception", 0, 1);
        }

        try {
            $complex = $tagsTable->get($complex->getId());
            $this->addEqualsCheck("Tags_REMOVE2_exception", 0, 1);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_REMOVE2_get_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Tags_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Tags_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }
    }

    public function testsCharacters(): void
    {
        // Table creation for tests.
        $charactersTable = new CharactersTable("tests", $this->user);

        // Case get() without problem.
        $complex = $charactersTable->get(1, true);
        $this->addEqualsCheck("Characters_GET_id", 1, $complex->getId());
        $this->addEqualsCheck("Characters_GET_name", "Angelise Ikaruga Misurugi", $complex->getName());
        $this->addNotEqualsCheck("Characters_GET_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
        $this->addNotEqualsCheck("Characters_GET_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Characters_GET_delete_date", null, $complex->getDeleteDate());
        $this->addEqualsCheck("Characters_GET_fandom_association", $complex->getFandomId(), $complex->fandom->getId());

        // Case get() with exception.
        try {
            $complex = $charactersTable->get(0);
            $this->addEqualsCheck("Characters_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_GET_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Characters_GET_exception_message", "No data for characters n°0", $e->getMessage());
            $this->addEqualsCheck("Characters_GET_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Characters_GET_exception_trace", 3, count($e->getTrace()));
        }

        // Search with filter.
        $complex = $charactersTable->search(["filter" => ["limit" => 0, "offset" => 100]], true);
        $this->addEqualsCheck("Characters_SEARCH_complete_count", 100, count($complex));
        $this->addEqualsCheck("Characters_SEARCH_complete_min", 1, $complex[0]->getId());

        // Create with exception.
        try {
            $complex = $charactersTable->create("{\"id\":\"1\",\"name\":\"Kadaj\", \"fandom_id\":\"4\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Characters_CREATE1_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_CREATE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Characters_CREATE1_exception_message", "New entity has an id already !", $e->getMessage());
            $this->addEqualsCheck("Characters_CREATE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Characters_CREATE1_exception_trace", 3, count($e->getTrace()));
        }

        // New.
        $complex = $charactersTable->new();
        $this->addEqualsCheck("Characters_NEW_id", 0, $complex->getId());
        $this->addEqualsCheck("Characters_NEW_name", "", $complex->getName());
        $this->addEqualsCheck("Characters_NEW_fandom_id_id", -1, $complex->getFandomId());
        $this->addNotEqualsCheck("Characters_NEW_creation_date", null, $complex->getCreationDate());
        $this->addNotEqualsCheck("Characters_NEW_update_date", null, $complex->getUpdateDate());
        $this->addEqualsCheck("Characters_NEW_delete_date", null, $complex->getDeleteDate());

        // Create with exception.
        try {
            $complex = $charactersTable->create(json_encode(value: $complex));
            $this->addEqualsCheck("Characters_CREATE2_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_CREATE2_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Characters_CREATE2_exception_message", true, str_contains($e->getMessage(), "SQLSTATE"));
            $this->addEqualsCheck("Characters_CREATE2_exception_code", 500, $e->getCode());
            $this->addEqualsCheck("Characters_CREATE2_exception_trace", 3, count($e->getTrace()));
        }

        // Create without exception.
        try {
            $complex->setName("Tony Stark | Iron Man");
            $complex->setFandomId(1);
            $complex = $charactersTable->create(json_encode($complex));
            $complexId = $complex->getId();
            $this->addNotEqualsCheck("Characters_CREATE3_id", 0, $complexId);
            $this->addEqualsCheck("Characters_CREATE3_name", "Tony Stark | Iron Man", $complex->getName());
            $this->addEqualsCheck("Characters_CREATE3_fandom_id", 1, $complex->getFandomId());
            $this->addEqualsCheck("Characters_CREATE3_fandomObj_id", 1, $complex->fandom->getId());
            $this->addNotEqualsCheck("Characters_CREATE3_fandom_name", "", $complex->fandom->getName());
            $this->addNotEqualsCheck("Characters_CREATE3_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Characters_CREATE3_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Characters_CREATE3_dates", $complex->getCreationDate()->format("Y-m-d H:i:s"), $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Characters_CREATE3_delete_date", null, $complex->getDeleteDate());
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Characters_CREATE3_no_exception", 0, 1);
        }

        // Delete without exception.
        try {
            sleep(1);
            $complex = $charactersTable->delete($complex->getId(), true);
            $this->addEqualsCheck("Characters_DELETE1_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Characters_DELETE1_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Characters_DELETE1_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Characters_DELETE1_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_DELETE1_no_exception", 0, 1);
        }

        // Restore without exception.
        try {
            $complex = $charactersTable->restore($complex->getId(), true);
            $this->addEqualsCheck("Characters_RESTORE_id", $complexId, $complex->getId());
            $this->addEqualsCheck("Characters_RESTORE_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Characters_RESTORE_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_RESTORE_no_exception", 0, 1);
        }

        // Update without exception.
        try {
            $complex->setName("Kadaj");
            $complex->setFandomId(4);
            $complex = $charactersTable->update(json_encode($complex));
            $this->addEqualsCheck("Characters_UPDATE_id", $complexId, $complex->getId());
            $this->addEqualsCheck("Characters_UPDATE_name", "Kadaj", $complex->getName());
            $this->addNotEqualsCheck("Characters_UPDATE_name_empty", "", $complex->getName());
            $this->addEqualsCheck("Characters_UPDATE_fandom_id", 4, $complex->getFandomId());
            $this->addEqualsCheck("Characters_UPDATE_fandomObj_id", 4, $complex->fandom->getId());
            $this->addEqualsCheck("Characters_UPDATE_fandom_name", "Final Fantasy VII", $complex->fandom->getName());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_UPDATE_no_exception", 0, 1);
        }

        // Remove with exception
        try {
            $complex = $charactersTable->remove(json_encode($complex));
            $this->addEqualsCheck("Characters_REMOVE1_no_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_REMOVE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Characters_REMOVE1_exception_message", "Entity being removed has no delete date !", $e->getMessage());
            $this->addEqualsCheck("Characters_REMOVE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Characters_REMOVE1_exception_trace", 3, count($e->getTrace()));
        }

        // Delete without exception
        try {
            $complex = $charactersTable->delete($complex->getId());
            $this->addEqualsCheck("Characters_DELETE2_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Characters_DELETE2_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Characters_DELETE2_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Characters_DELETE2_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Characters_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $complex = $charactersTable->update(json_encode($complex));
            $this->addEqualsCheck("Characters_UPDATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_UPDATE_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Characters_UPDATE_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Characters_UPDATE_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Characters_UPDATE_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $charactersTable->remove(json_encode($complex));
            $this->addEqualsCheck("Characters_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_REMOVE2_no_exception", 0, 1);
        }

        try {
            $complex = $charactersTable->get($complex->getId());
            $this->addEqualsCheck("Characters_REMOVE2_exception", 0, 1);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Characters_REMOVE2_get_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Characters_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Characters_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }
    }

    public function testsRelations(): void
    {
        $relationsTable = new RelationsTable("tests", $this->user);
        $charactersTable = new CharactersTable("tests", $this->user);

        // Case get() without problem.
        $complex = $relationsTable->get(1, true);
        $complexCharactersNameArray = explode(" / ", $complex->getName());
        $this->addEqualsCheck("Relations_GET_id", 1, $complex->getId());
        $this->addEqualsCheck("Relations_GET_name", "Angelise Ikaruga Misurugi / Hilda Schlievogt / Tusk", $complex->getName());
        $this->addNotEqualsCheck("Relations_GET_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
        $this->addNotEqualsCheck("Relations_GET_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Relations_GET_delete_date", null, $complex->getDeleteDate());
        $this->addEqualsCheck("Relations_GET_characters_count", count($complexCharactersNameArray), count($complex->characters));
        foreach ($complex->characters as $key => $character) {
            $this->addEqualsCheck("Relations_GET_characters_namesObj" . ($key + 1), true, in_array($character->getName(), $complexCharactersNameArray));
        }

        // Case get() with exception.
        try {
            $complex = $relationsTable->get(0);
            $this->addEqualsCheck("Relations_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_GET_exception", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Relations_GET_exception_message", "No data for relations n°0", $e->getMessage());
            $this->addEqualsCheck("Relations_GET_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Relations_GET_exception_trace", 3, count($e->getTrace()));
        }

        // Search with filter.
        $complex = $relationsTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addEqualsCheck("Relations_SEARCH_complete_count", 100, count($complex));
        $this->addEqualsCheck("Relations_SEARCH_complete_min", 1, $complex[0]->getId());

        // Create with exception.
        try {
            $complex = $relationsTable->create("{\"id\":\"1\",\"name\":\"Tidus / Yuna\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Relations_CREATE1_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_CREATE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Relations_CREATE1_exception_message", "New entity has an id already !", $e->getMessage());
            $this->addEqualsCheck("Relations_CREATE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Relations_CREATE1_exception_trace", 3, count($e->getTrace()));
        }

        // New.
        $complex = $relationsTable->new();
        $this->addEqualsCheck("Relations_NEW_id", 0, $complex->getId());
        $this->addEqualsCheck("Relations_NEW_name", "", $complex->getName());
        $this->addNotEqualsCheck("Relations_NEW_creation_date", null, $complex->getCreationDate());
        $this->addNotEqualsCheck("Relations_NEW_update_date", null, $complex->getUpdateDate());
        $this->addEqualsCheck("Relations_NEW_delete_date", null, $complex->getDeleteDate());

        // Create without exception.
        try {
            $complex->setName("Lulu / Tidus / Yuna");
            $complex->characters = $charactersTable->search(["conditions" => ["id IN" => json_encode([23, 24, 26])]], true);
            $complex = $relationsTable->create(json_encode($complex));
            $complexId = $complex->getId();
            $complexCharactersNameArray = explode(" / ", $complex->getName());
            $this->addNotEqualsCheck("Relations_CREATE2_id", 0, $complex->getId());
            $this->addNotEqualsCheck("Relations_CREATE2_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Relations_CREATE2_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Relations_CREATE2_dates", $complex->getCreationDate()->format("Y-m-d H:i:s"), $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Relations_CREATE2_delete_date", null, $complex->getDeleteDate());
            $this->addEqualsCheck("Relations_CREATE2_characters_count", count($complexCharactersNameArray), count($complex->characters));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_CREATE2_no_exception", 0, 1);
        }

        // Delete without exception.
        try {
            sleep(1);
            $complex = $relationsTable->delete($complex->getId());
            $this->addEqualsCheck("Relations_DELETE1_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Relations_DELETE1_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Relations_DELETE1_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Relations_DELETE1_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_DELETE1_no_exception", 0, 1);
        }

        // Restore without exception.
        try {
            $complex = $relationsTable->restore($complex->getId());
            $this->addEqualsCheck("Relations_RESTORE_id", $complexId, $complex->getId());
            $this->addEqualsCheck("Relations_RESTORE_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Relations_RESTORE_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_RESTORE_no_exception", 0, 1);
        }

        // Update without exception.
        try {
            $complex->setName("Rikku / Tidus / Yuna");
            $complex->characters = $charactersTable->search(["conditions" => ["id IN" => json_encode([23, 24, 29])]], true);
            $complex = $relationsTable->update(json_encode($complex));
            $complexCharactersNameArray = explode(" / ", $complex->getName());
            $this->addEqualsCheck("Relations_UPDATE1_id", $complexId, actual: $complex->getId());
            $this->addEqualsCheck("Relations_UPDATE1_name_value", "Rikku / Tidus / Yuna", $complex->getName());
            $this->addNotEqualsCheck("Relations_UPDATE1_name_empty", "", $complex->getName());
            $this->addNotEqualsCheck("Relations_UPDATE1_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Relations_UPDATE1_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Relations_UPDATE1_dates", $complex->getCreationDate()->format("Y-m-d H:i:s"), $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Relations_UPDATE1_delete_date", null, $complex->getDeleteDate());
            $this->addEqualsCheck("Relations_UPDATE1_characters_count", count($complexCharactersNameArray), count($complex->characters));
            foreach ($complex->characters as $key => $character) {
                $this->addEqualsCheck("Relations_UPDATE1_characters_namesObj" . ($key + 1), true, in_array($character->getName(), $complexCharactersNameArray));
            }
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_UPDATE_no_exception", 0, 1);
        }

        // Remove with exception
        try {
            $complex = $relationsTable->remove(json_encode($complex));
            $this->addEqualsCheck("Relations_REMOVE1_no_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_REMOVE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Relations_REMOVE1_exception_message", "Entity being removed has no delete date !", $e->getMessage());
            $this->addEqualsCheck("Relations_REMOVE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Relations_REMOVE1_exception_trace", 3, count($e->getTrace()));
        }

        // Delete without exception
        try {
            $complex = $relationsTable->delete($complex->getId());
            $this->addEqualsCheck("Relations_DELETE2_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Relations_DELETE2_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Relations_DELETE2_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Relations_DELETE2_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Relations_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $complex = $relationsTable->update(json_encode($complex));
            $this->addEqualsCheck("Relations_UPDATE2_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_UPDATE2_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Relations_UPDATE2_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Relations_UPDATE2_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Relations_UPDATE2_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $relationsTable->remove(json_encode($complex));
            $this->addEqualsCheck("Relations_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_REMOVE2_no_exception", 0, 1);
        }

        try {
            $entity = $relationsTable->get($complex->getId());
            $this->addEqualsCheck("Relations_REMOVE2_exception", 0, 1);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Relations_REMOVE2_get_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Relations_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Relations_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }
    }

    public function testsFanfictions(): void
    {
        $fanfictionsTable = new FanfictionsTable("tests", $this->user);
        $authorsTable = new AuthorsTable("tests", $this->user);
        $fandomsTable = new FandomsTable("tests", $this->user);
        $fandomsTable = new FandomsTable("tests", $this->user);
        $relationsTable = new RelationsTable("tests", $this->user);
        $charactersTable = new CharactersTable("tests", $this->user);
        $tagsTable = new TagsTable("tests", $this->user);
        $linksTable = new LinksTable("tests", $this->user);

        // Case get() without problem.
        $complex = $fanfictionsTable->get(2, true);
        $this->addEqualsCheck("Fanfictions_GET_id", 2, $complex->getId());
        $this->addEqualsCheck("Fanfictions_GET_name", "Necessary", $complex->getName());
        $this->addNotEqualsCheck("Fanfictions_GET_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
        $this->addNotEqualsCheck("Fanfictions_GET_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Fanfictions_GET_delete_date", null, $complex->getDeleteDate());
        $this->addEqualsCheck("Fanfictions_GET_author_association", $complex->author->getId(), $complex->getAuthorId());
        $this->addEqualsCheck("Fanfictions_GET_rating_association", $complex->rating->getId(), $complex->getRatingId());
        $this->addEqualsCheck("Fanfictions_GET_language_association", $complex->language->getId(), $complex->getLanguageId());
        $this->addEqualsCheck("Fanfictions_GET_score_association", null, $complex->getScoreId());
        $this->addEqualsCheck("Fanfictions_GET_fandoms_count", 1, count($complex->fandoms));
        $this->addEqualsCheck("Fanfictions_GET_relations_count", 1, count($complex->relations));
        $this->addEqualsCheck("Fanfictions_GET_characters_count", 3, count($complex->characters));
        $this->addEqualsCheck("Fanfictions_GET_tags_count", 4, count($complex->tags));
        $this->addEqualsCheck("Fanfictions_GET_links_count", 1, count($complex->links));

        // Case get() with exception.
        try {
            $complex = $fanfictionsTable->get(0);
            $this->addEqualsCheck("Fanfictions_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_GET_exception", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fanfictions_GET_exception_message", "No data for fanfictions n°0", $e->getMessage());
            $this->addEqualsCheck("Fanfictions_GET_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Fanfictions_GET_exception_trace", 3, count($e->getTrace()));
        }

        // Search with filter.
        $complex = $fanfictionsTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addEqualsCheck("Fanfictions_SEARCH_complete_count", 100, count($complex));
        $this->addEqualsCheck("Fanfictions_SEARCH_complete_min", 1, $complex[0]->getId());

        // Create with exception.
        try {
            $complex = $fanfictionsTable->create("{\"id\":\"1\",\"name\":\"Les Reliques des Aînés\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Fanfictions_CREATE1_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_CREATE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fanfictions_CREATE1_exception_message", "New entity has an id already !", $e->getMessage());
            $this->addEqualsCheck("Fanfictions_CREATE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Fanfictions_CREATE1_exception_trace", 3, count($e->getTrace()));
        }

        // New.
        $complex = $fanfictionsTable->new();
        $this->addEqualsCheck("Fanfictions_NEW_id", 0, $complex->getId());
        $this->addEqualsCheck("Fanfictions_NEW_name", "", $complex->getName());
        $this->addNotEqualsCheck("Fanfictions_NEW_creation_date", null, $complex->getCreationDate());
        $this->addNotEqualsCheck("Fanfictions_NEW_update_date", null, $complex->getUpdateDate());
        $this->addEqualsCheck("Fanfictions_NEW_delete_date", null, $complex->getDeleteDate());

        // Create without exception.
        try {
            $complex->setName("With frustration and fear");
            $complex->setAuthorId(3);
            $complex->setRatingId(1);
            $complex->setLanguageId(2);
            $complex->setScoreId(5);
            $complex->fandoms = $fandomsTable->search(["conditions" => ["id IN" => json_encode([8])]]);
            $complex->relations = $relationsTable->search(["conditions" => ["id IN" => json_encode([250, 245, 244])]], true);
            $complex->characters = $charactersTable->search(["conditions" => ["id IN" => json_encode([229, 225, 299])]], true);
            $complex->tags = $tagsTable->search(["conditions" => ["id IN" => json_encode([1, 16, 20, 21])]], true);


            $link = $linksTable->new();
            $link->setUrl("https://archiveofourown.org/works/24301294");
            $complex->links = [$link];

            $complex = $fanfictionsTable->create(json_encode($complex));
            $complexId = $complex->getId();
            $this->addNotEqualsCheck("Fanfictions_CREATE2_id", 0, $complex->getId());
            $this->addEqualsCheck("Fanfictions_CREATE2_name", "With frustration and fear", $complex->getName());
            $this->addEqualsCheck("Fanfictions_CREATE2_author_id", 3, $complex->getAuthorId());
            $this->addEqualsCheck("Fanfictions_CREATE2_authorObj_id", 3, $complex->author->getId());
            $this->addEqualsCheck("Fanfictions_CREATE2_author_name", "1Sakura-Haruno1", $complex->author->getName());
            $this->addEqualsCheck("Fanfictions_CREATE2_rating_id", 1, $complex->getRatingId());
            $this->addEqualsCheck("Fanfictions_CREATE2_ratingObj_id", 1, $complex->rating->getId());
            $this->addEqualsCheck("Fanfictions_CREATE2_rating_name", "K+ / 7", $complex->rating->getName());
            $this->addEqualsCheck("Fanfictions_CREATE2_language_id", 2, $complex->getLanguageId());
            $this->addEqualsCheck("Fanfictions_CREATE2_languageObj_id", 2, $complex->language->getId());
            $this->addEqualsCheck("Fanfictions_CREATE2_language_name", "English", $complex->language->getName());
            $this->addEqualsCheck("Fanfictions_CREATE2_score_id", 5, $complex->getScoreId());
            $this->addEqualsCheck("Fanfictions_CREATE2_scoreObj_id", 5, $complex->score->getId());
            $this->addEqualsCheck("Fanfictions_CREATE2_score_name", "Excellent", $complex->score->getName());

            $this->addEqualsCheck("Fanfictions_CREATE2_fandoms_count", 1, count($complex->fandoms));
            $this->addEqualsCheck("Fanfictions_CREATE2_relations_count", 3, count($complex->relations));
            $this->addEqualsCheck("Fanfictions_CREATE2_characters_count", 3, count($complex->characters));
            $this->addEqualsCheck("Fanfictions_CREATE2_tags_count", 4, count($complex->tags));
            $this->addEqualsCheck("Fanfictions_CREATE2_links_count", 1, count($complex->links));

            $this->addNotEqualsCheck("Fanfictions_CREATE2_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Fanfictions_CREATE2_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Fanfictions_CREATE2_dates", $complex->getCreationDate()->format("Y-m-d H:i:s"), $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Fanfictions_CREATE2_delete_date", null, $complex->getDeleteDate());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_CREATE2_no_exception", 0, 1);
        }

        // Delete without exception.
        try {
            sleep(1);
            $complex = $fanfictionsTable->delete($complex->getId());
            $this->addEqualsCheck("Fanfictions_DELETE1_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Fanfictions_DELETE1_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Fanfictions_DELETE1_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Fanfictions_DELETE1_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_DELETE1_no_exception", 0, 1);
        }

        // Restore without exception.
        try {
            $complex = $fanfictionsTable->restore($complex->getId());
            $this->addEqualsCheck("Fanfictions_RESTORE_id", $complexId, $complex->getId());
            $this->addEqualsCheck("Fanfictions_RESTORE_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Fanfictions_RESTORE_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_RESTORE_no_exception", 0, 1);
        }

        // Update without exception.
        try {
            $author = $authorsTable->new();
            $author->setName("Fhuraï");
            $author = $authorsTable->create(json_encode($author));

            $relation = $relationsTable->new();
            $relation->setName("Chigusa Nana / Hyuuga Hinata / OFC");
            $relation->characters = $charactersTable->search(["conditions" => ["id IN" => json_encode([31, 224, 233])]], true);
            $relation = $relationsTable->create(json_encode($relation));

            $complex->setName("A Night for girls across the worlds");
            $complex->setDescription("When three beautiful and long haired ladies meet in a cross over event, they profit to experiment together...");
            $complex->setAuthorId($author->getId());
            $complex->author = $author;
            $complex->setRatingId(4);
            $complex->setScoreId(5);
            $complex->fandoms = $fandomsTable->search(["conditions" => ["id IN" => json_encode([6, 11, 12])]]);
            $complex->relations = [$relation];
            $complex->characters = $charactersTable->search(["conditions" => ["id IN" => json_encode([31, 224, 233])]], true);
            $complex->tags = $tagsTable->search(["conditions" => ["id IN" => json_encode([21, 20, 26, 28, 34])]], true);
            $complex = $fanfictionsTable->update(json_encode($complex));

            $this->addEqualsCheck("Fanfictions_UPDATE1_id", $complexId, actual: $complex->getId());
            $this->addEqualsCheck("Fanfictions_UPDATE1_name_value", "A Night for girls across the worlds", $complex->getName());
            $this->addNotEqualsCheck("Fanfictions_UPDATE1_name_empty", "", $complex->getName());
            $this->addNotEqualsCheck("Fanfictions_UPDATE1_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Fanfictions_UPDATE1_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Fanfictions_UPDATE1_dates", $complex->getCreationDate()->format("Y-m-d H:i:s"), $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Fanfictions_UPDATE1_delete_date", null, $complex->getDeleteDate());

            $this->addNotEqualsCheck("Fanfictions_UPDATE1_author_id", 3, $complex->getAuthorId());
            $this->addNotEqualsCheck("Fanfictions_UPDATE1_authorObj_id", 3, $complex->author->getId());
            $this->addNotEqualsCheck("Fanfictions_UPDATE1_rating_id", 1, $complex->getRatingId());
            $this->addNotEqualsCheck("Fanfictions_UPDATE1_ratingObj_id", 1, $complex->rating->getId());
            $this->addEqualsCheck("Fanfictions_UPDATE1_language_id", 2, $complex->getLanguageId());
            $this->addEqualsCheck("Fanfictions_UPDATE1_languageObj_id", 2, $complex->language->getId());
            $this->addEqualsCheck("Fanfictions_UPDATE1_score_id", 5, $complex->getScoreId());
            $this->addEqualsCheck("Fanfictions_UPDATE1_scoreObj_id", 5, $complex->score->getId());

            $this->addEqualsCheck("Fanfictions_UPDATE1_fandoms_count", 3, count($complex->fandoms));
            $this->addEqualsCheck("Fanfictions_UPDATE1_relations_count", 1, count($complex->relations));
            $this->addEqualsCheck("Fanfictions_UPDATE1_characters_count", 3, count($complex->characters));
            $this->addEqualsCheck("Fanfictions_UPDATE1_tags_count", 5, count($complex->tags));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_UPDATE1_no_exception", 0, 1);
        }

        // Remove with exception
        try {
            $complex = $fanfictionsTable->remove(json_encode($complex));
            $this->addEqualsCheck("Fanfictions_REMOVE1_no_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_REMOVE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fanfictions_REMOVE1_exception_message", "Entity being removed has no delete date !", $e->getMessage());
            $this->addEqualsCheck("Fanfictions_REMOVE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Fanfictions_REMOVE1_exception_trace", 3, count($e->getTrace()));
        }

        // Delete without exception
        try {
            $complex = $fanfictionsTable->delete($complex->getId());
            $this->addEqualsCheck("Fanfictions_DELETE2_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Fanfictions_DELETE2_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Fanfictions_DELETE2_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Fanfictions_DELETE2_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Fanfictions_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $complex = $fanfictionsTable->update(json_encode($complex));
            $this->addEqualsCheck("Fanfictions_UPDATE2_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_UPDATE2_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fanfictions_UPDATE2_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Fanfictions_UPDATE2_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Fanfictions_UPDATE2_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $fanfictionsTable->remove(json_encode($complex));
            $this->addEqualsCheck("Fanfictions_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_REMOVE2_no_exception", 0, 1);
        }

        try {
            $entity = $fanfictionsTable->get($complex->getId());
            $this->addEqualsCheck("Fanfictions_REMOVE2_exception", 0, 1);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Fanfictions_REMOVE2_get_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Fanfictions_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Fanfictions_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }

        $author = $authorsTable->delete($author->getId());
        $authorsTable->remove(json_encode($author));

        $relation = $relationsTable->delete($relation->getId());
        $relationsTable->remove(json_encode($relation));
    }

    public function testsSeries(): void
    {
        $seriesTable = new SeriesTable("tests", $this->user);
        $fanfictionsTable = new FanfictionsTable("tests", $this->user);

        // Case get() without problem.
        $complex = $seriesTable->get(1, true);
        $this->addEqualsCheck("Series_GET_id", 1, $complex->getId());
        $this->addEqualsCheck("Series_GET_name", "From Innocent Feelings to Post Crisis", $complex->getName());
        $this->addEqualsCheck("Series_GET_fanfictions_count", 8, count($complex->fanfictions));
        $this->addNotEqualsCheck("Series_GET_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
        $this->addNotEqualsCheck("Series_GET_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Series_GET_delete_date", null, $complex->getDeleteDate());

        // Case get() with exception.
        try {
            $complex = $seriesTable->get(0);
            $this->addEqualsCheck("Series_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_GET_exception", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Series_GET_exception_message", "No data for series n°0", $e->getMessage());
            $this->addEqualsCheck("Series_GET_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Series_GET_exception_trace", 3, count($e->getTrace()));
        }

        // Search with filter.
        $complex = $seriesTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addNotEqualsCheck("Series_SEARCH_complete_count", 100, count($complex));
        $this->addEqualsCheck("Series_SEARCH_complete_min", 1, $complex[0]->getId());

        // Create with exception.
        try {
            $complex = $seriesTable->create("{\"id\":\"1\",\"name\":\"Tests\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Series_CREATE1_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_CREATE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Series_CREATE1_exception_message", "New entity has an id already !", $e->getMessage());
            $this->addEqualsCheck("Series_CREATE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Series_CREATE1_exception_trace", 3, count($e->getTrace()));
        }

        // New.
        $complex = $seriesTable->new();
        $this->addEqualsCheck("Series_NEW_id", 0, $complex->getId());
        $this->addEqualsCheck("Series_NEW_name", "", $complex->getName());
        $this->addNotEqualsCheck("Series_NEW_creation_date", null, $complex->getCreationDate());
        $this->addNotEqualsCheck("Series_NEW_update_date", null, $complex->getUpdateDate());
        $this->addEqualsCheck("Series_NEW_delete_date", null, $complex->getDeleteDate());

        // Create without exception.
        try {
            $complex->setName("Orion Black");
            $complex->fanfictions = $fanfictionsTable->search(["conditions" => ["id IN" => json_encode([23, 24, 26])]], true);
            $complex = $seriesTable->create(json_encode($complex));
            $complexId = $complex->getId();
            $this->addNotEqualsCheck("Series_CREATE2_id", 0, $complex->getId());
            $this->addEqualsCheck("Series_CREATE2_fanfictions_count", 3, count($complex->fanfictions));
            $this->addNotEqualsCheck("Series_CREATE2_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Series_CREATE2_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Series_CREATE2_dates", $complex->getCreationDate()->format("Y-m-d H:i:s"), $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Series_CREATE2_delete_date", null, $complex->getDeleteDate());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_CREATE2_no_exception", 0, 1);
        }

        // Delete without exception.
        try {
            sleep(1);
            $complex = $seriesTable->delete($complex->getId());
            $this->addEqualsCheck("Series_DELETE1_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Series_DELETE1_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Series_DELETE1_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Series_DELETE1_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_DELETE1_no_exception", 0, 1);
        }

        // Restore without exception.
        try {
            $complex = $seriesTable->restore($complex->getId());
            $this->addEqualsCheck("Series_RESTORE_id", $complexId, $complex->getId());
            $this->addEqualsCheck("Series_RESTORE_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Series_RESTORE_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_RESTORE_no_exception", 0, 1);
        }

        // Update without exception.
        try {
            $complex->setName("Unknown Relations: Orion Black");
            $complex->fanfictions = $fanfictionsTable->search(["conditions" => ["id IN" => json_encode([23, 24, 29, 150, 1000])]], true);
            $complex = $seriesTable->update(json_encode($complex));
            $this->addEqualsCheck("Series_UPDATE1_id", $complexId, actual: $complex->getId());
            $this->addEqualsCheck("Series_UPDATE1_name_value", "Unknown Relations: Orion Black", $complex->getName());
            $this->addNotEqualsCheck("Series_UPDATE1_name_empty", "", $complex->getName());
            $this->addEqualsCheck("Series_UPDATE1_fanfictions_count", 5, count($complex->fanfictions));
            $this->addNotEqualsCheck("Series_UPDATE1_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Series_UPDATE1_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Series_UPDATE1_dates", $complex->getCreationDate()->format("Y-m-d H:i:s"), $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Series_UPDATE1_delete_date", null, $complex->getDeleteDate());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_UPDATE_no_exception", 0, 1);
        }

        // Remove with exception
        try {
            $complex = $seriesTable->remove(json_encode($complex));
            $this->addEqualsCheck("Series_REMOVE1_no_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_REMOVE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Series_REMOVE1_exception_message", "Entity being removed has no delete date !", $e->getMessage());
            $this->addEqualsCheck("Series_REMOVE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Series_REMOVE1_exception_trace", 3, count($e->getTrace()));
        }

        // Delete without exception
        try {
            $complex = $seriesTable->delete($complex->getId());
            $this->addEqualsCheck("Series_DELETE2_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Series_DELETE2_delete_date", null, $complex->getDeleteDate());
            $this->addNotEqualsCheck("Series_DELETE2_dates_creation", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Series_DELETE2_dates_delete", $complex->getUpdateDate()->format("Y-m-d H:i:s"), $complex->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Series_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $complex = $seriesTable->update(json_encode($complex));
            $this->addEqualsCheck("Series_UPDATE2_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_UPDATE2_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Series_UPDATE2_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Series_UPDATE2_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Series_UPDATE2_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $seriesTable->remove(json_encode($complex));
            $this->addEqualsCheck("Series_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_REMOVE2_no_exception", 0, 1);
        }

        try {
            $entity = $seriesTable->get($complex->getId());
            $this->addEqualsCheck("Series_REMOVE2_exception", 0, 1);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Series_REMOVE2_get_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Series_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Series_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }
    }
}