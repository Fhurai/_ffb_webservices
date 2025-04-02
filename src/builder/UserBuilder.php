<?php

require_once __DIR__ . "/EntityBuilderInterface.php";
require_once __DIR__ . "/../entity/User.php";

/**
 * Class UserBuilder
 * Implements the BuilderInterface to build User objects.
 */
class UserBuilder implements EntityBuilderInterface {

    /**
     * @var User The User object being built.
     */
    private User $obj;

    /**
     * UserBuilder constructor.
     * Initializes the builder by resetting the User object.
     */
    public function __construct() {
        $this->reset();
    }

    /**
     * Returns the built User object.
     *
     * @return User The built User object.
     */
    public function build(): User {
        return $this->obj;
    }

    /**
     * Resets the builder by creating a new User object.
     */
    public function reset(): void {
        $this->obj = new User();
    }

    /**
     * Sets the ID of the User.
     *
     * @param int $id The ID to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withId(int $id): UserBuilder {
        // Set the ID of the User object
        $this->obj->setId($id);
        return $this;
    }

    /**
     * Sets the creation date of the User.
     *
     * @param DateTime|string $creationDate The creation date to set. Can be a DateTime object or a string.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withCreationDate(DateTime|string $creationDate): UserBuilder {
        // Check if the creation date is a DateTime object
        if($creationDate instanceof DateTime){
            $this->obj->setCreationDate($creationDate);
        } 
        // Check if the creation date is a string
        else if(is_string($creationDate)){
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $creationDate);
            $this->obj->setCreationDate($date);
        }
        return $this;
    }

    /**
     * Sets the update date of the User.
     *
     * @param DateTime|string $updateDate The update date to set. Can be a DateTime object or a string.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withUpdateDate(DateTime|string $updateDate): UserBuilder {
        // Check if the update date is a DateTime object
        if($updateDate instanceof DateTime){
            $this->obj->setUpdateDate($updateDate);
        } 
        // Check if the update date is a string
        else if(is_string($updateDate)){
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $updateDate);
            $this->obj->setUpdateDate($date);
        }
        return $this;
    }

    /**
     * Sets the delete date of the User.
     *
     * @param DateTime|string $deleteDate The delete date to set. Can be a DateTime object or a string.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withDeleteDate(DateTime|string $deleteDate): UserBuilder {
        // Check if the delete date is a DateTime object
        if($deleteDate instanceof DateTime){
            $this->obj->setDeleteDate($deleteDate);
        } 
        // Check if the delete date is a string
        else if(is_string($deleteDate)){
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $deleteDate);
            $this->obj->setDeleteDate($date);
        }
        return $this;
    }

    /**
     * Sets the username of the User.
     *
     * @param string $username The username to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withUsername(string $username): UserBuilder {
        // Set the username of the User object
        $this->obj->setUsername($username);
        return $this;
    }

    /**
     * Sets the password of the User.
     *
     * @param string $password The password to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withPassword(string $password): UserBuilder {
        // Set the password of the User object
        $this->obj->setPassword($password);
        return $this;
    }

    /**
     * Sets the email of the User.
     *
     * @param string $email The email to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withEmail(string $email): UserBuilder {
        // Set the email of the User object
        $this->obj->setEmail($email);
        return $this;
    }

    /**
     * Sets the admin status of the User.
     *
     * @param bool $isAdmin The admin status to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function isAdmin(bool $isAdmin): UserBuilder {
        // Set the admin status of the User object
        $this->obj->setIsAdmin($isAdmin);
        return $this;
    }

    /**
     * Sets the local status of the User.
     *
     * @param bool $isLocal The local status to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function isLocal(bool $isLocal): UserBuilder {
        // Set the local status of the User object
        $this->obj->setIsLocal($isLocal);
        return $this;
    }

    /**
     * Sets the birthday of the User.
     *
     * @param DateTime|string $birthday The birthday to set. Can be a DateTime object or a string.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withBirthday(DateTime|string $birthday): UserBuilder {
        // Check if the birthday is a DateTime object
        if($birthday instanceof DateTime){
            $this->obj->setBirthday($birthday);
        } 
        // Check if the birthday is a string
        else if(is_string($birthday)){
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $birthday);
            $this->obj->setBirthday($date);
        }
        return $this;
    }

    /**
     * Sets the NSFW status of the User.
     *
     * @param bool $isNsfw The NSFW status to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function isNsfw(bool $isNsfw): UserBuilder {
        // Set the NSFW status of the User object
        $this->obj->setIsNsfw($isNsfw);
        return $this;
    }
}