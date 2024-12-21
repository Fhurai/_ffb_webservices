<?php

require_once "../src/entity/Entity.php";

/**
 * User class
 */
class User extends Entity
{
    /**
     * Username.
     * @var string
     */
    private string $username;
    /**
     * Password.
     * @var string
     */
    private string $password;
    /**
     * Mail address.
     * @var string
     */
    private string $email;
    /**
     * Indication if user is admin.
     * @var bool
     */
    private bool $is_admin;
    /**
     * Indication if user is local.
     * @var bool
     */
    private bool $is_local;
    /**
     * Birthday datetime.
     * @var DateTime
     */
    private DateTime $birthday;
    /**
     * Indication if user read nsfw content.
     * @var bool
     */
    private bool $is_nsfw;

    /**
     * Implied constructor.
     */
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

    /**
     * Getter Username.
     * @return string Username.
     */
    public function getUsername(): string
    {
        return $this->username;
    }

    /**
     * Setter Username.
     * @param string $username New Username.
     * @return void
     */
    public function setUsername(string $username): void
    {
        $this->username = $username;
    }

    /**
     * Getter Password.
     * @return string Password.
     */
    public function getPassword(): string
    {
        return $this->password;
    }

    /**
     * Setter Password. Can be hashed or not.
     * @param string $password new Password.
     * @param bool $isHashed Indication if password is already hashed or not. Default to true.
     * @return void
     */
    public function setPassword(string $password, bool $isHashed = true): void
    {
        $this->password = !$isHashed ? password_hash($password, PASSWORD_DEFAULT) : $password;
    }

    /**
     * Getter Mail address.
     * @return string Mail address.
     */
    public function getEmail(): string
    {
        return $this->email;
    }

    /**
     * Setter Mail address.
     * @param string $email new Mail address.
     * @return void
     */
    public function setEmail(string $email): void
    {
        $this->email = $email;
    }

    /**
     * Getter Indication user is admin.
     * @return bool Indication user is admin.
     */
    public function isAdmin(): bool
    {
        return $this->is_admin;
    }

    /**
     * Setter Indication user is admin.
     * @param bool $is_admin New Indication user is admin.
     * @return void
     */
    public function setIsAdmin(bool $is_admin): void
    {
        $this->is_admin = $is_admin;
    }

    /**
     * Getter Indication user is local.
     * @return bool Indication user is local.
     */
    public function isLocal(): bool
    {
        return $this->is_local;
    }

    /**
     * Setter Indication user is local.
     * @param bool $is_local New Indication user is local.
     * @return void
     */
    public function setIsLocal(bool $is_local): void
    {
        $this->is_local = $is_local;
    }

    /**
     * Getter Birthday.
     * @return DateTime Birthday.
     */
    public function getBirthday(): DateTime
    {
        return $this->birthday;
    }

    /**
     * Getter Birthday string.
     * @return string Birthday string.
     */
    public function getBirthDate(): string
    {
        return $this->birthday->format("Y-m-d H:i:s");
    }

    /**
     * Setter Birthday.
     * @param DateTime $birthday new Birthday.
     * @return void
     */
    public function setBirthday(DateTime $birthday): void
    {
        $this->birthday = $birthday;
    }

    /**
     * Getter Indication user read nsfw.
     * @return bool Indication user read nsfw.
     */
    public function isNsfw(): bool
    {
        return $this->is_nsfw;
    }

    /**
     * Setter Indication user read nsfw.
     * @param bool $view_nsfw new Indication user read nsfw.
     * @return void
     */
    public function setIsNsfw(bool $is_nsfw): void
    {
        $this->is_nsfw = $is_nsfw;
    }

    /**
     * Method to parse User into an array for JSON parsing.
     * @return array Array of User data.
     */
    public function jsonSerialize(): array
    {
        return array_merge(parent::jsonSerialize(), [
            "username" => $this->username,
            "password" => $this->password,
            "email" => $this->email,
            "is_admin" => $this->is_admin,
            "is_local" => $this->is_local,
            "birthday" => $this->birthday,
            "is_nsfw" => $this->is_nsfw,
        ]);
    }

    /**
     * Method to create a new User.
     * @return mixed New User.
     */
    public static function getNewObject(): mixed {
        return new self();
    }
}
