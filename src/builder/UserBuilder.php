<?php

require_once __DIR__ . "/EntityBuilder.php";
require_once __DIR__ . "/../entity/User.php";

/**
 * Class UserBuilder
 * Implements the BuilderInterface to build User objects.
 */
final class UserBuilder extends EntityBuilder
{

    /**
     * @var User The User object being built.
     */
    protected $obj;

    /**
     * Resets the builder by creating a new User object.
     */
    public function reset(): void
    {
        $this->obj = new User();
    }

    /**
     * Sets the username of the User.
     *
     * @param  string $username The username to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withUsername(string $username): UserBuilder
    {
        // Set the username of the User object
        $this->obj->setUsername($username);
        return $this;
    }

    /**
     * Sets the password of the User.
     *
     * @param  string $password The password to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withPassword(string $password): UserBuilder
    {
        // Set the password of the User object
        $this->obj->setPassword($password);
        return $this;
    }

    /**
     * Sets the email of the User.
     *
     * @param  string $email The email to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withEmail(string $email): UserBuilder
    {
        // Set the email of the User object
        $this->obj->setEmail($email);
        return $this;
    }

    /**
     * Sets the admin status of the User.
     *
     * @param  bool $isAdmin The admin status to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withIsAdmin(bool $isAdmin): UserBuilder
    {
        // Set the admin status of the User object
        $this->obj->setIsAdmin($isAdmin);
        return $this;
    }

    /**
     * Sets the local status of the User.
     *
     * @param  bool $isLocal The local status to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withIsLocal(bool $isLocal): UserBuilder
    {
        // Set the local status of the User object
        $this->obj->setIsLocal($isLocal);
        return $this;
    }

    /**
     * Sets the birthday of the User.
     *
     * @param  DateTime|string $birthday The birthday to set. Can be a DateTime object or a string.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withBirthday(DateTime|string $birthday): UserBuilder
    {
        // Check if the birthday is a DateTime object
        if ($birthday instanceof DateTime) {
            $this->obj->setBirthday($birthday);
        }
        // Check if the birthday is a string
        elseif (is_string($birthday)) {
            $date = Datetime::createFromFormat("Y-m-d H:i:s", $birthday, new DateTimeZone('Europe/Paris'));
            $this->obj->setBirthday($date);
        }
        return $this;
    }

    /**
     * Sets the NSFW status of the User.
     *
     * @param  bool $isNsfw The NSFW status to set.
     * @return UserBuilder The current instance of UserBuilder.
     */
    public function withIsNsfw(bool $isNsfw): UserBuilder
    {
        // Set the NSFW status of the User object
        $this->obj->setIsNsfw($isNsfw);
        return $this;
    }
}
