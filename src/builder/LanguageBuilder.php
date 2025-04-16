<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Language.php";

class LanguageBuilder extends NamedEntityBuilder
{

    /**
     * @var Language
     */
    protected $obj;

    /**
     * Resets the Language object to a new instance.
     */
    public function reset(): void
    {
        // Initialize a new Language object
        $this->obj = new Language();
    }

    /**
     * Sets the abbreviation for the Language object.
     *
     * @param string $abbreviation The abbreviation of the language.
     * @return LanguageBuilder The current instance of LanguageBuilder.
     */
    public function withAbbreviation(string $abbreviation): LanguageBuilder
    {
        // Set the abbreviation of the language
        $this->obj->setAbbreviation($abbreviation);
        return $this;
    }
}
