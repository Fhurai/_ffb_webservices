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

    public function testsUsers(): void
    {
        $usersTable = new UsersTable("tests");

        $entity = $usersTable->get(2);
        $this->addEqualsCheck("Users_GET_id", 2, $entity->getId());
        $this->addEqualsCheck("Users_GET_username", "Guest", $entity->getUsername());

        try {
            $entity = $usersTable->get(0);
            $this->addEqualsCheck("Users_GET_exception", 1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Users_GET_exception", FfbTableException::class, $e::class);
        }

        $entity = $usersTable->search(["filter" => ["limit" => 0, "offset" => 100]]);
        $this->addNotEqualsCheck("Users_SEARCH_complete_count", 2, count($entity));
        $this->addEqualsCheck("Users_SEARCH_complete_min", 1, $entity[0]->getId());

        try {
            $entity = $usersTable->create("{\"id\":\"1\",\"username\":\"Kaiser_57\", \"password\":\"test\", \"email\":\"kuntz.lucas@gmail.com\", \"is_admin\":\"0\", \"is_local\":\"1\",  \"birthday\":\"1992-12-21 23:30:00\", \"is_nsfw\":\"1\",\"creation_date\":\"2024-12-18 13:30:05\",\"update_date\":\"2024-12-18 13:30:05\",\"delete_date\":\"2024-12-18 13:30:05\"}");
            $this->addEqualsCheck("Users_CREATE_exception", 1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Users_CREATE_exception", FfbTableException::class, $e::class);
        }

        $entity = $usersTable->new();
        $this->addEqualsCheck("Users_NEW_id", 0, $entity->getId());
        $this->addEqualsCheck("Users_NEW_username", "", $entity->getUsername());

        try {
            $entity = $usersTable->create(json_encode($entity));
            $entityId = $entity->getId();
            $this->addNotEqualsCheck("Users_CREATE_id", 0, $entity->getId());
        } catch (FfbTableException $e) {
            $this->addNotEqualsCheck("Users_CREATE_id", 0, 1);
        }

        try {
            $entity = $usersTable->delete($entity->getId());
            $this->addEqualsCheck("Users_DELETE_id", $entityId, $entity->getId());
            $this->addNotEqualsCheck("Users_DELETE_delete_date", null, $entity->getDeleteDate());
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Users_DELETE_id", 0, 1);
            $this->addNotEqualsCheck("Users_DELETE_delete_date", 0, 1);
        }

        try {
            $entity = $usersTable->restore($entity->getId());
            $this->addEqualsCheck("Users_RESTORE_id", $entityId, $entity->getId());
            $this->addEqualsCheck("Users_RESTORE_delete_date", null, $entity->getDeleteDate());
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Users_RESTORE_id", 0, 1);
            $this->addEqualsCheck("Users_RESTORE_delete_date", 0, 1);
        }

        try {
            $entity->setUsername("Kaiser57");
            $entity->setIsNsfw(false);
            $entity = $usersTable->update(json_encode($entity));
            $this->addEqualsCheck("Users_UPDATE_id", $entityId, $entity->getId());
            $this->addEqualsCheck("Users_UPDATE_username", "Kaiser57", $entity->getUsername());
            $this->addEqualsCheck("Users_UPDATE_is_nsfw", false, $entity->isNsfw());
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Users_UPDATE_id", 0, 1);
            $this->addEqualsCheck("Users_UPDATE_name", 0, 1);
            $this->addEqualsCheck("Users_UPDATE_abbreviation", 0, 1);
        }

        try {
            $entity = $usersTable->remove(json_encode($entity));
            $this->addEqualsCheck("Users_REMOVE_exception", 1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Users_REMOVE_exception", FfbTableException::class, $e::class);
        }

        try {
            $entity = $usersTable->delete($entity->getId());
            $this->addNotEqualsCheck("Users_DELETE_date_delete", null, $entity->getDeleteDate());
        } catch (FfbTableException $e) {
            $this->addNotEqualsCheck("Users_DELETE_date_delete", 0, 1);
        }

        try {
            $entity = $usersTable->update(json_encode($entity));
            $this->addEqualsCheck("Users_UPDATE_exception", 1, 0);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Users_UPDATE_exception", FfbTableException::class, $e::class);
        }

        try {
            $result = $usersTable->remove(json_encode($entity));
            $this->addEqualsCheck("Users_REMOVE_result", true, $result);
        } catch (FfbTableException $e) {
            $this->addEqualsCheck("Users_REMOVE_result", 0, 1);
        }
    }
}