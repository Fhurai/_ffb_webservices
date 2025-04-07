<?php

require_once __DIR__ . "/../../src/entity/ComplexEntity.php";

/**
 * Character class.
 */
class Character extends ComplexEntity
{

    /**
     * Fandom_id.
     * @var int
     */
    private int $fandom_id;
    /**
     * Associated Fandom entity (loaded only when needed).
     * @var Fandom|null
     */
    private ?Fandom $fandom = null;

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
     * Getter Fandom.
     * @return Fandom|null Fandom.
     */
    public function getFandom(): ?Fandom
    {
        if (!$this->fandom) {
            throw new \RuntimeException("fandom is not loaded. Use hasFandom() to check first.");
        }
        return $this->fandom;
    }

    /**
     * Check if fandom is loaded.
     *
     * @return bool
     */
    public function hasFandom(): bool
    {
        return $this->fandom !== null;
    }

    /**
     * Setter Fandom.
     * @param Fandom|array $fandom New Fandom.
     * @return void
     */
    public function setFandom(Fandom|array $fandom): void
    {
        if (is_array($fandom)) {
            $this->fandom = Fandom::jsonUnserialize(json_encode($fandom));
        } else {
            $this->fandom = $fandom;
        }
    }

    /**
     * Method to parse Character into an array for JSON parsing.
     * @return array Array of Character data.
     */
    public function jsonSerialize(): array
    {
        $assoc = [];

        if (property_exists($this, "fandom")) {
            $assoc["fandom"] = $this->fandom;
        }

        return array_merge(parent::jsonSerialize(), [
            "fandom_id" => $this->getFandomId(),
        ], $assoc);
    }

    /**
     * Method to create a new Character.
     * @return mixed new Character.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}
