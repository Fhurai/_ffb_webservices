<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Language.php";

/**
 * LanguageBuilder is responsible for constructing and configuring
 * instances of the Language entity. It extends the NamedEntityBuilder
 * to inherit common functionality for named entities.
 */
final class LanguageBuilder extends NamedEntityBuilder
{
    /**
     * @var Language The Language object being built.
     */
    protected $obj;

    /**
     * Resets the Language object to a new instance.
     * This ensures the builder starts with a fresh Language object.
     */
    public function reset(): void
    {
        // Initialize a new Language object
        $this->obj = new Language();
    }

    /**
     * Sets the abbreviation for the Language object.
     *
     * @param  ?string $abbreviation The abbreviation of the language.
     * @return LanguageBuilder The current instance of LanguageBuilder.
     *                         This allows method chaining.
     */
    public function withAbbreviation(?string $abbreviation): LanguageBuilder
    {
        // Set the abbreviation of the language
        if ($abbreviation === null) {
            throw new FfbException("Abbreviation cannot be null.");
        }
        $this->obj->setAbbreviation($abbreviation);
        return $this;
    }
}
