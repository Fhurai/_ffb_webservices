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

class ComplexEntitiesTests extends Tests
{
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
        $this->testsLinks();
        $this->testsSeries();
    }

    /**
     * Tests on tags
     * @return void
     */
    public function testsTags(): void
    {
        // Table creation for tests.
        $tagsTable = new TagsTable("tests");

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
            $this->addEqualsCheck("Tags_CREATE2_exception_message", "SQLSTATE[23000]: Integrity constraint violation: 1452 Cannot add or update a child row: a foreign key constraint fails (`ffb_tests`.`tags`, CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tag_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT)", $e->getMessage());
            $this->addEqualsCheck("Tags_CREATE2_exception_code", 500, $e->getCode());
            $this->addEqualsCheck("Tags_CREATE2_exception_trace", 3, count($e->getTrace()));
        }

        // Create without exception.
        try {
            $complex->setTypeId(1);
            $complex = $tagsTable->create(json_encode($complex));
            $complexId = $complex->getId();
            $this->addNotEqualsCheck("Tags_CREATE_id", 0, $complexId);
            $this->addEqualsCheck("Tags_CREATE_name", "", $complex->getName());
            $this->addEqualsCheck("Tags_CREATE_type_id",1,$complex->getTypeId());
            $this->addEqualsCheck("Tags_CREATE_tagtype_id", 1, $complex->tag_type->getId());
            $this->addEqualsCheck("Tags_CREATE_tagtype_name", "Genre", $complex->tag_type->getName());
            $this->addNotEqualsCheck("Tags_CREATE_creation_date", null, $complex->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Tags_CREATE_update_date", null, $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Tags_CREATE_dates", $complex->getCreationDate()->format("Y-m-d H:i:s"), $complex->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Tags_CREATE_delete_date", null, $complex->getDeleteDate());
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Tags_CREATE_no_exception", 0, 1);
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
            $this->addEqualsCheck("Tags_UPDATE_type_id",4,$complex->getTypeId());
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
            $named = $tagsTable->delete($complex->getId());
            $this->addEqualsCheck("Tags_DELETE2_id", $complexId, $named->getId());
            $this->addNotEqualsCheck("Tags_DELETE2_delete_date", null, $named->getDeleteDate());
            $this->addNotEqualsCheck("Tags_DELETE2_dates_creation", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Tags_DELETE2_dates_delete", $named->getUpdateDate()->format("Y-m-d H:i:s"), $named->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Tags_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $named = $tagsTable->update(json_encode($named));
            $this->addEqualsCheck("Tags_UPDATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_UPDATE_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Tags_UPDATE_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Tags_UPDATE_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Tags_UPDATE_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $tagsTable->remove(json_encode($named));
            $this->addEqualsCheck("Tags_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_REMOVE2_no_exception", 0, 1);
        }

        try{
            $entity = $tagsTable->get($named->getId());
            $this->addEqualsCheck("Tags_REMOVE2_exception",0,1);
        }catch (Throwable $e) {
            $this->addEqualsCheck("Tags_REMOVE2_get_exception_type",FfbTableException::class, $e::class);
            $this->addEqualsCheck("Tags_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Tags_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }
    }

    public function testsCharacters(): void
    {
        
    }

    public function testsRelations(): void
    {

    }

    public function testsFanfictions(): void
    {

    }


    public function testsLinks(): void
    {

    }

    public function testsSeries(): void
    {

    }
}