<?php

require_once "../src/entity/NamedEntity.php";

/**
 * Language class.
 */
class Language extends NamedEntity
{
    /**
     * Abbreviation.
     * @var string
     */
    private string $abbreviation;

    /**
     * Constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setAbbreviation("");
    }

    /**
     * Getter Abbreviation.
     * @return string Abbreviation.
     */
    public function getAbbreviation(): string
    {
        return $this->abbreviation;
    }

    /**
     * Setter Abbreviation.
     * @param string $abbreviation new Abbreviation.
     * @return void
     */
    public function setAbbreviation(string $abbreviation): void
    {
        $this->abbreviation = $abbreviation;
    }

    /**
     * Method to create a new object.
     * @return mixed the new object.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}
