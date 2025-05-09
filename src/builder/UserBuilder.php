<?php

require_once __DIR__ . "/EntityBuilder.php";
require_once __DIR__ . "/../entity/User.php";

/**
 * Class UserBuilder
 * Implements the BuilderInterface to build User objects.
 * This class provides a fluent interface for setting various properties of a User object.
 */
final class UserBuilder extends EntityBuilder
{

    /**
     * @var User The User object being built.
     */
    protected $obj;

    /**
     * Resets the builder by creating a new User object.
     * This method is typically called before starting to build a new User.
     */
    public function reset(): void
    {
        $this->obj = new User();
    }

    /**
     * Sets the username of the User.
     *
     * @param  ?string $username The username to set.
     * @return UserBuilder The current instance of UserBuilder for method chaining.
     */
    public function withUsername(?string $username): UserBuilder
    {
        if($username === null) {
            throw new FfbException("Username cannot be null.");
        }
        // Set the username of the User object
        $this->obj->setUsername($username);
        return $this;
    }

    /**
     * Sets the password of the User.
     *
     * @param  ?string $password The password to set.
     * @return UserBuilder The current instance of UserBuilder for method chaining.
     */
    public function withPassword(?string $password): UserBuilder
    {
        if($password === null) {
            throw new FfbException("Password cannot be null.");
        }
        // Set the password of the User object
        $this->obj->setPassword($password);
        return $this;
    }

    /**
     * Sets the email of the User.
     *
     * @param  ?string $email The email to set.
     * @return UserBuilder The current instance of UserBuilder for method chaining.
     */
    public function withEmail(?string $email): UserBuilder
    {
        if($email === null) {
            throw new FfbException("Email cannot be null.");
        }
        // Set the email of the User object
        $this->obj->setEmail($email);
        return $this;
    }

    /**
     * Sets the admin status of the User.
     *
     * @param  ?bool $isAdmin The admin status to set (true for admin, false otherwise).
     * @return UserBuilder The current instance of UserBuilder for method chaining.
     */
    public function withIsAdmin(?bool $isAdmin): UserBuilder
    {
        if($isAdmin === null) {
            throw new FfbException("isAdmin cannot be null.");
        }
        // Set the admin status of the User object
        $this->obj->setIsAdmin($isAdmin);
        return $this;
    }

    /**
     * Sets the local status of the User.
     *
     * @param  ?bool $isLocal The local status to set (true for local, false otherwise).
     * @return UserBuilder The current instance of UserBuilder for method chaining.
     */
    public function withIsLocal(?bool $isLocal): UserBuilder
    {
        if($isLocal === null) {
            throw new FfbException("isLocal cannot be null.");
        }
        // Set the local status of the User object
        $this->obj->setIsLocal($isLocal);
        return $this;
    }

    /**
     * Sets the birthday of the User.
     *
     * @param  DateTime|string|null $birthday The birthday to set. Can be a DateTime object or a string in "Y-m-d H:i:s" format.
     * @return UserBuilder The current instance of UserBuilder for method chaining.
     */
    public function withBirthday(DateTime|string|null $birthday): UserBuilder
    {
        if($birthday === null && !($birthday instanceof DateTime) && !is_string($birthday)) {
            throw new FfbException("Birthday cannot be null.");
        }
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
     * Sets the NSFW (Not Safe For Work) status of the User.
     *
     * @param  ?bool $isNsfw The NSFW status to set (true for NSFW, false otherwise).
     * @return UserBuilder The current instance of UserBuilder for method chaining.
     */
    public function withIsNsfw(?bool $isNsfw): UserBuilder
    {
        if($isNsfw === null) {
            throw new FfbException("isNsfw cannot be null.");
        }
        // Set the NSFW status of the User object
        $this->obj->setIsNsfw($isNsfw);
        return $this;
    }
}
