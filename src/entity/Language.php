<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";
require_once __DIR__ . "/../../src/entity/EntityTrait.php";

class Language extends NamedEntity
{
    use EntityTrait; // Replaces explicit getNewObject()

    private string $abbreviation;

    public function __construct()
    {
        parent::__construct();
        $this->setAbbreviation("");
    }

    public function getAbbreviation(): string { return $this->abbreviation; }
    public function setAbbreviation(string $abbreviation): void { $this->abbreviation = $abbreviation; }

    public function jsonSerialize(): array
    {
        return array_merge(parent::jsonSerialize(), [
            "abbreviation" => $this->abbreviation,
        ]);
    }
}
