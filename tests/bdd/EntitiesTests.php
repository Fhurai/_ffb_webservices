<?php

if (file_exists("./utilities/Tests.php"))
    require_once "./utilities/Tests.php";
else if (file_exists("../utilities/Tests.php"))
    require_once "../utilities/Tests.php";

if (file_exists("../../src/table/UsersTable.php"))
    require_once "../../src/table/UsersTable.php";
else if (file_exists("../src/table/UsersTable.php"))
    require_once "../src/table/UsersTable.php";

class EntitiesTests extends Tests
{
    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();

        // Do all tests.
        $this->testsUsers();
    }

    /**
     * Tests on users.
     * @return void
     */
    public function testsUsers(): void
    {
        // Table creation for tests.
        $usersTable = new UsersTable("tests");

        // Case get() without problem.
        $entity = $usersTable->get(2);
        $this->addEqualsCheck("Users_GET_id", 2, $entity->getId());
        $this->addEqualsCheck("Users_GET_username", "Guest", $entity->getUsername());
        $this->addEqualsCheck("Users_GET_password", "", $entity->getPassword());
        $this->addEqualsCheck("Users_GET_email", "luku@free.fr", $entity->getEmail());
        $this->addEqualsCheck("Users_GET_is_admin", false, $entity->isAdmin());
        $this->addEqualsCheck("Users_GET_is_local", true, $entity->isLocal());
        $this->addEqualsCheck("Users_GET_is_nsfw", false, $entity->isNsfw());
        $this->addEqualsCheck("Users_GET_creation_date", "2024-12-20 18:51:40", $entity->getCreationDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Users_GET_update_date", "2024-12-20 18:51:40", $entity->getUpdateDate()->format("Y-m-d H:i:s"));
        $this->addEqualsCheck("Users_GET_delete_date", null, $entity->getDeleteDate());
        $this->addEqualsCheck("Users_GET_birthday", "1970-01-01 00:00:01", $entity->getBirthday()->format("Y-m-d H:i:s"));

        // Case get() with exception.
        try {
            $entity = $usersTable->get(0);
            $this->addEqualsCheck("Users_GET_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Users_GET_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Users_GET_exception_message", "No data for users n°0", $e->getMessage());
            $this->addEqualsCheck("Users_GET_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Users_GET_exception_trace", 3, count($e->getTrace()));
        }

        // Search with filter.
        $entity = $usersTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addNotEqualsCheck("Users_SEARCH_complete_count", 2, count($entity));
        $this->addEqualsCheck("Users_SEARCH_complete_min", 1, $entity[0]->getId());


        // Create with exception.
        try {
            $entity = $usersTable->create("{\"id\":\"1\",\"username\":\"Kaiser_57\", \"password\":\"test\", \"email\":\"kuntz.lucas@gmail.com\", \"is_admin\":\"0\", \"is_local\":\"1\",  \"birthday\":\"1992-12-21 23:30:00\", \"is_nsfw\":\"1\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Users_CREATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Users_CREATE_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Users_CREATE_exception_message", "New entity has an id already !", $e->getMessage());
            $this->addEqualsCheck("Users_CREATE_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Users_CREATE_exception_trace", 3, count($e->getTrace()));
        }

        // New
        $entity = $usersTable->new();
        $this->addEqualsCheck("Users_NEW_id", 0, $entity->getId()); 
        $this->addEqualsCheck("Users_NEW_username", "", $entity->getUsername());
        $this->addEqualsCheck("Users_NEW_password", "", $entity->getPassword());
        $this->addEqualsCheck("Users_NEW_email", "", $entity->getEmail());
        $this->addEqualsCheck("Users_NEW_is_admin", false, $entity->isAdmin());
        $this->addEqualsCheck("Users_NEW_is_local", true, $entity->isLocal());
        $this->addEqualsCheck("Users_NEW_is_nsfw", false, $entity->isNsfw());
        $this->addNotEqualsCheck("Users_NEW_creation_date", null, $entity->getCreationDate());
        $this->addNotEqualsCheck("Users_NEW_update_date", null, $entity->getUpdateDate());
        $this->addEqualsCheck("Users_NEW_delete_date", null, $entity->getDeleteDate());
        $this->addNotEqualsCheck("Users_NEW_birthday", null, $entity->getBirthday());

        // Create without exception.
        try {
            $entity = $usersTable->create(json_encode($entity));
            $entityId = $entity->getId();
            $this->addNotEqualsCheck("Users_CREATE_id", 0, $entity->getId());
            $this->addNotEqualsCheck("Users_CREATE_creation_date", null, $entity->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addNotEqualsCheck("Users_CREATE_update_date", null, $entity->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Users_CREATE_dates", $entity->getCreationDate()->format("Y-m-d H:i:s"), $entity->getUpdateDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Users_CREATE_delete_date", null, $entity->getDeleteDate());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Users_CREATE_no_exception", 0, 1);
        }

        // Delete without exception.
        try {
            sleep(1);
            $entity = $usersTable->delete($entity->getId());
            $this->addEqualsCheck("Users_DELETE1_id", $entityId, $entity->getId());
            $this->addNotEqualsCheck("Users_DELETE1_delete_date", null, $entity->getDeleteDate());
            $this->addNotEqualsCheck("Users_DELETE1_dates_creation", $entity->getUpdateDate()->format("Y-m-d H:i:s"), $entity->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Users_DELETE1_dates_delete", $entity->getUpdateDate()->format("Y-m-d H:i:s"), $entity->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Users_DELETE1_no_exception", 0, 1);
        }

        // Restore without exception.
        try {
            $entity = $usersTable->restore($entity->getId());
            $this->addEqualsCheck("Users_RESTORE_id", $entityId, $entity->getId());
            $this->addEqualsCheck("Users_RESTORE_delete_date", null, $entity->getDeleteDate());
            $this->addNotEqualsCheck("Users_RESTORE_dates_creation", $entity->getUpdateDate()->format("Y-m-d H:i:s"), $entity->getCreationDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addEqualsCheck("Users_RESTORE_no_exception", 0, 1);
        }

        // Update without exception.
        try {
            $entity->setUsername("Kaiser57");
            $entity->setIsNsfw(true);
            $entity = $usersTable->update(json_encode($entity));
            $this->addEqualsCheck("Users_UPDATE_id", $entityId, $entity->getId());
            $this->addEqualsCheck("Users_UPDATE_username_value", "Kaiser57", $entity->getUsername());
            $this->addNotEqualsCheck("Users_UPDATE_username_empty", "", $entity->getUsername());
            $this->addEqualsCheck("Users_UPDATE_is_nsfw", true, $entity->isNsfw());
        } catch (Throwable $e) {
            $this->addEqualsCheck("Users_UPDATE_no_exception", 0, 1);
        }

        // Remove with exception
        try {
            $entity = $usersTable->remove(json_encode($entity));
            $this->addEqualsCheck("Users_REMOVE1_no_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Users_REMOVE1_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Users_REMOVE1_exception_message", "Entity being removed has no delete date !", $e->getMessage());
            $this->addEqualsCheck("Users_REMOVE1_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Users_REMOVE1_exception_trace", 3, count($e->getTrace()));
        }

        // Delete without exception
        try {
            $entity = $usersTable->delete($entity->getId());
            $this->addEqualsCheck("Users_DELETE2_id", $entityId, $entity->getId());
            $this->addNotEqualsCheck("Users_DELETE2_delete_date", null, $entity->getDeleteDate());
            $this->addNotEqualsCheck("Users_DELETE2_dates_creation", $entity->getUpdateDate()->format("Y-m-d H:i:s"), $entity->getCreationDate()->format("Y-m-d H:i:s"));
            $this->addEqualsCheck("Users_DELETE2_dates_delete", $entity->getUpdateDate()->format("Y-m-d H:i:s"), $entity->getDeleteDate()->format("Y-m-d H:i:s"));
        } catch (Throwable $e) {
            $this->addNotEqualsCheck("Users_DELETE2_no_exception", 0, 1);
        }

        // Update with exception
        try {
            $entity = $usersTable->update(json_encode($entity));
            $this->addEqualsCheck("Users_UPDATE_exception", 1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Users_UPDATE_exception_type", FfbTableException::class, $e::class);
            $this->addEqualsCheck("Users_UPDATE_exception_message", "Entity being updated has delete date !", $e->getMessage());
            $this->addEqualsCheck("Users_UPDATE_exception_code", 409, $e->getCode());
            $this->addEqualsCheck("Users_UPDATE_exception_trace", 3, count($e->getTrace()));
        }

        // Remove without exception
        try {
            $result = $usersTable->remove(json_encode($entity));
            $this->addEqualsCheck("Users_REMOVE2_result", true, $result);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Users_REMOVE2_no_exception", 0, 1);
        }

        try{
            $entity = $usersTable->get($entity->getId());
            $this->addEqualsCheck("Users_REMOVE2_exception",0,1);
        }catch (Throwable $e) {
            $this->addEqualsCheck("Users_REMOVE2_get_exception_type",FfbTableException::class, $e::class);
            $this->addEqualsCheck("Users_REMOVE2_get_exception_code", 404, $e->getCode());
            $this->addEqualsCheck("Users_REMOVE2_get_exception_trace", 3, count($e->getTrace()));
        }
    }
}