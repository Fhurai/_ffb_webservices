<?php

require_once __DIR__ . "/Entity.php";
require_once __DIR__ . "/EntityTrait.php";

final class User extends Entity
{
    use EntityTrait;

    private string $username;
    private string $password;
    private string $email;
    private bool $is_admin;
    private bool $is_local;
    private DateTime $birthday;
    private bool $is_nsfw;

    public function __construct()
    {
        parent::__construct();
        $this->setUsername("");
        $this->setPassword("");
        $this->setEmail("");
        $this->setIsAdmin(false);
        $this->setIsLocal(true);
        $this->setBirthday(new DateTime("now", new DateTimeZone("Europe/Paris")));
        $this->setIsNsfw(false);
    }

    public function getUsername(): string
    {
        return $this->username;
    }

    public function setUsername(string $username): void
    {
        $this->username = $username;
    }

    public function getPassword(): string
    {
        return $this->password;
    }

    public function setPassword(string $password, bool $isHashed = true): void
    {
        $this->password = !$isHashed ? password_hash($password, PASSWORD_DEFAULT) : $password;
    }

    public function getEmail(): string
    {
        return $this->email;
    }

    public function setEmail(string $email): void
    {
        $this->email = $email;
    }

    public function isAdmin(): bool
    {
        return $this->is_admin;
    }

    public function setIsAdmin(bool $is_admin): void
    {
        $this->is_admin = $is_admin;
    }

    public function isLocal(): bool
    {
        return $this->is_local;
    }

    public function setIsLocal(bool $is_local): void
    {
        $this->is_local = $is_local;
    }

    public function getBirthday(): DateTime
    {
        return $this->birthday;
    }

    public function getBirthDate(): string
    {
        return $this->birthday->format("Y-m-d H:i:s");
    }

    public function setBirthday(DateTime $birthday): void
    {
        $this->birthday = $birthday;
    }

    public function isNsfw(): bool
    {
        return $this->is_nsfw;
    }

    public function setIsNsfw(bool $is_nsfw): void
    {
        $this->is_nsfw = $is_nsfw;
    }

    public function jsonSerialize(): array
    {
        return array_merge(parent::jsonSerialize(), [
            "username" => $this->username,
            "email" => $this->email,
            "is_admin" => $this->is_admin,
            "is_local" => $this->is_local,
            "birthday" => $this->birthday->format("Y-m-d H:i:s"),
            "is_nsfw" => $this->is_nsfw,
        ]);
    }

    /**
     * Method to create a new User.
     * @return mixed New User.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}
