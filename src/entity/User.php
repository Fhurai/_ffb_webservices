<?php

require_once "../src/entity/Entity.php";

class User extends Entity
{
    private string $username;
    private string $password;
    private string $email;
    private bool $is_admin;
    private bool $is_local;
    private DateTime $birthday;
    private bool $is_nsfw;

    /**
     * 
     */
    public function __construct()
    {
        parent::__construct();
        $this->setUsername("");
        $this->setPassword("");
        $this->setEmail("");
        $this->setIsAdmin(false);
        $this->setIsLocal(true);
        $this->setBirthday(new DateTime());
        $this->setIsNsfw(false);
    }

    /**
     * 
     * @return string
     */
    public function getUsername(): string
    {
        return $this->username;
    }

    /**
     * 
     * @param string $username
     * @return void
     */
    public function setUsername(string $username): void
    {
        $this->username = $username;
    }

    /**
     * 
     * @return string
     */
    public function getPassword(): string
    {
        return $this->password;
    }

    /**
     * 
     * @param string $password
     * @return void
     */
    public function setPassword(string $password, bool $isHashed = false): void
    {

        if ($isHashed === false) {
            $this->password = password_hash($password, PASSWORD_DEFAULT);
        } else {
            $this->password = $password;
        }
    }

    /**
     * 
     * @return string
     */
    public function getEmail(): string
    {
        return $this->email;
    }

    /**
     * 
     * @param string $email
     * @return void
     */
    public function setEmail(string $email): void
    {
        $this->email = $email;
    }

    /**
     * 
     * @return bool
     */
    public function isAdmin(): bool
    {
        return $this->is_admin;
    }

    /**
     * 
     * @param bool $is_admin
     * @return void
     */
    public function setIsAdmin(bool $is_admin): void
    {
        $this->is_admin = $is_admin;
    }

    /**
     * 
     * @return bool
     */
    public function isLocal(): bool
    {
        return $this->is_local;
    }

    /**
     * 
     * @param bool $is_local
     * @return void
     */
    public function setIsLocal(bool $is_local): void
    {
        $this->is_local = $is_local;
    }

    /**
     * 
     * @return DateTime
     */
    public function getBirthday(): DateTime
    {
        return $this->birthday;
    }

    public function getBirthDate(): string
    {
        return $this->birthday->format("Y-m-d H:i:s");
    }

    /**
     * 
     * @param DateTime $birthday
     * @return void
     */
    public function setBirthday(DateTime $birthday): void
    {
        $this->birthday = $birthday;
    }

    /**
     * 
     * @return bool
     */
    public function isNsfw(): bool
    {
        return $this->is_nsfw;
    }

    /**
     * 
     * @param bool $view_nsfw
     * @return void
     */
    public function setIsNsfw(bool $is_nsfw): void
    {
        $this->is_nsfw = $is_nsfw;
    }

    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        return array_merge(parent::jsonSerialize(), [
            "username" => $this->username,
            "password" => $this->password,
            "email" => $this->email,
            "is_admin" => $this->is_admin,
            "is_local" => $this->is_local,
            "birthday" => $this->birthday,
            "view_nsfw" => $this->is_nsfw,
        ]);
    }

    public static function jsonUnserialize($json): User
    {
        $entity = new User();
        foreach (json_decode($json, true) as $key => $data) {

            $getFunction = parent::getterFunction($key);
            $setFunction = parent::setterFunction($key);

            if ($entity->$getFunction() instanceof DateTime) {
                $date = is_string($data) && !empty($data) ? DateTime::createFromFormat("Y-m-d H:i:s", $data, new DateTimeZone("Europe/Paris")) : null;
                $entity->$setFunction($date);
            } else {
                $entity->$setFunction($data);
            }
        }
        return $entity;
    }
}
