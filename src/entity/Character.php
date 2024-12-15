<?php

require_once "../src/entity/ComplexEntity.php";

/**
 * Character class.
 */
#[AllowDynamicProperties]
class Character extends ComplexEntity
{

    /**
     * Fandom_id.
     * @var int
     */
    private int $fandom_id;

    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setFandomId(-1);
    }

    /**
     * Getter Fandom_id.
     * @return int Fandom_id.
     */
    public function getFandomId(): int
    {
        return $this->fandom_id;
    }

    /**
     * Setter Fandom_id.
     * @param int $fandom_id New Fandom_id.
     * @return void
     */
    public function setFandomId(int $fandom_id): void
    {
        $this->fandom_id = $fandom_id;
    }

    /**
     * Method to parse Character into an array for JSON parsing.
     * @return mixed Array of Character data.
     */
    public function jsonSerialize(): mixed
    {
        return array_merge(parent::jsonSerialize(), [
            "fandom_id" => $this->getFandomId(),
        ]);
    }

    /**
     * Method to create a new Character.
     * @return mixed new Character.
     */
    public static function getNewObject(): mixed {
        return new self();
    }
}
