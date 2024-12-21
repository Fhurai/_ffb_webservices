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
        $this->addEqualsCheck("Tags_GET_tagtype_association", $complex->getTypeId(), $complex->tag_type->getId());

        // Case get() with exception.
        try {
            $complex = $tagsTable->get(0);
            $this->addEqualsCheck("Tags_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_GET_exception", FfbTableException::class, $e::class);
        }

        // Search with filter.
        $complex = $tagsTable->search(["filter" => ["limit" => 0, "offset" => 100]], true);
        $this->addNotEqualsCheck("Tags_SEARCH_complete_count", 100, count($complex));
        $this->addEqualsCheck("Tags_SEARCH_complete_min", 1, $complex[0]->getId());

        // Create with exception.
        try {
            $complex = $tagsTable->create("{\"id\":\"1\",\"name\":\"Veela\", \"description\":\"Story concerns or mentions bits about veela.\", \"type_id\":\"4\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Tags_CREATE_exception_id_exist", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_CREATE_exception_id_exist", FfbTableException::class, $e::class);
        }

        // New.
        $complex = $tagsTable->new();
        $this->addEqualsCheck("Tags_NEW_id", 0, $complex->getId());
        $this->addEqualsCheck("Tags_NEW_name", "", $complex->getName());
        $this->addEqualsCheck("Tags_NEW_description", "", $complex->getDescription());
        $this->addEqualsCheck("Tags_NEW_tagtype_id", -1, $complex->getTypeId());

        // Create with exception.
        try {
            $complex = $tagsTable->create(json_encode(value: $complex));
            $this->addEqualsCheck("Tags_CREATE_type_id_exception",1,0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_CREATE_type_id_exception",FfbTableException::class, $e::class);
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
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_CREATE_id", 0, $complexId);
            $this->addNotEqualsCheck("Tags_CREATE_name", "", $complex->getName());
            $this->addNotEqualsCheck("Tags_CREATE_type_id",1,$complex->getTypeId());
            $this->addNotEqualsCheck("Tags_CREATE_tagtype_id", 1, $complex->tag_type->getId());
            $this->addNotEqualsCheck("Tags_CREATE_tagtype_name", "Other", $complex->tag_type->getName());
        }

        // Delete without exception.
        try {
            $complex = $tagsTable->delete($complex->getId(), true);
            $this->addEqualsCheck("Tags_DELETE_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Tags_DELETE_delete_date", null, $complex->getDeleteDate());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_DELETE_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Tags_DELETE_delete_date", null, $complex->getDeleteDate());
        }

        // Restore without exception.
        try {
            $complex = $tagsTable->restore($complex->getId(), true);
            $this->addEqualsCheck("Tags_RESTORE_id", $complexId, $complex->getId());
            $this->addEqualsCheck("Tags_RESTORE_delete_date", null, $complex->getDeleteDate());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_RESTORE_id", 0, 1);
            $this->addEqualsCheck("Tags_RESTORE_delete_date", 0, 1);
        }

        // Update without exception.
        try {
            $complex->setName("Veela");
            $complex->setDescription("Story concerns or mentions bits about veela.");
            $complex->setTypeId(4);
            $complex = $tagsTable->update(json_encode($complex));
            $this->addEqualsCheck("Tags_UPDATE_id", $complexId, $complex->getId());
            $this->addEqualsCheck("Tags_UPDATE_name", "Veela", $complex->getName());
            $this->addEqualsCheck("Tags_UPDATE_description", "Story concerns or mentions bits about veela.", $complex->getDescription());
            $this->addEqualsCheck("Tags_UPDATE_type_id",4,$complex->getTypeId());
            $this->addEqualsCheck("Tags_UPDATE_tagtype_id", 4, $complex->tag_type->getId());
            $this->addEqualsCheck("Tags_UPDATE_tagtype_name", "Other", $complex->tag_type->getName());
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Tags_UPDATE_id", $complexId, $complex->getId());
            $this->addNotEqualsCheck("Tags_UPDATE_name", "Veela", $complex->getName());
            $this->addNotEqualsCheck("Tags_UPDATE_description", "Story concerns or mentions bits about veela.", $complex->getDescription());
            $this->addNotEqualsCheck("Tags_UPDATE_type_id",4,$complex->getTypeId());
            $this->addNotEqualsCheck("Tags_UPDATE_tagtype_id", 4, $complex->tag_type->getId());
            $this->addNotEqualsCheck("Tags_UPDATE_tagtype_name", "Other", $complex->tag_type->getName());
        }

        // Remove with exception
        try {
            $complex = $tagsTable->remove(json_encode($complex));
            $this->addEqualsCheck("Tags_REMOVE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_REMOVE_exception", FfbTableException::class, $e::class);
        }

        // Delete without exception
        try {
            $named = $tagsTable->delete($complex->getId());
            $this->addNotEqualsCheck("Tags_DELETE_date_delete", null, $named->getDeleteDate());
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Tags_DELETE_date_delete", null, $named->getDeleteDate());
        }

        // Update with exception
        try {
            $named = $tagsTable->update(json_encode($named));
            $this->addEqualsCheck("Tags_UPDATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_UPDATE_exception", FfbTableException::class, $e::class);
        }

        // Remove without exception
        try {
            $result = $tagsTable->remove(json_encode($named));
            $this->addEqualsCheck("Tags_REMOVE_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Tags_REMOVE_result", 0, 1);
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