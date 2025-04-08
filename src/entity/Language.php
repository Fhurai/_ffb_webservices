<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";

/**
 * Language class.
 * Represents a language entity with a name, abbreviation, and ID.
 */
class Language extends NamedEntity
{
    /**
     * Abbreviation of the language.
     * @var string
     */
    private string $abbreviation;

    /**
     * Constructor.
     * Initializes the Language object with default values.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setAbbreviation("");
    }

    /**
     * Getter for the abbreviation.
     * @return string Abbreviation of the language.
     */
    public function getAbbreviation(): string
    {
        return $this->abbreviation;
    }

    /**
     * Setter for the abbreviation.
     * @param string $abbreviation New abbreviation for the language.
     * @return void
     */
    public function setAbbreviation(string $abbreviation): void
    {
        $this->abbreviation = $abbreviation;
    }

    /**
     * Creates a new instance of the Language class.
     * @return Language A new Language object.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }

    /**
     * Converts the Language object into an array for JSON serialization.
     * @return array Array representation of the Language object.
     */
    public function jsonSerialize(): array
    {
        return array_merge(parent::jsonSerialize(), [
            "abbreviation" => $this->getAbbreviation(),
        ]);
    }
}
