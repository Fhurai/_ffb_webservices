<?php

require_once __DIR__ . "/../../src/entity/ComplexEntity.php";

/**
 * Character class.
 */
final class Character extends ComplexEntity
{
    use EntityTrait;
    
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
     * Constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setFandomId(-1);
    }

    /**
     * Get Fandom_id.
     * @return int Fandom_id.
     */
    public function getFandomId(): int
    {
        return $this->fandom_id;
    }

    /**
     * Set Fandom_id.
     * @param int $fandom_id New Fandom_id.
     * @return void
     */
    public function setFandomId(int $fandom_id): void
    {
        $this->fandom_id = $fandom_id;
    }

    /**
     * Get Fandom.
     * @return Fandom|null Fandom.
     * @throws \RuntimeException If fandom is not loaded.
     */
    public function getFandom(): ?Fandom
    {
        if (!$this->hasFandom()) {
            throw new \RuntimeException("Fandom is not loaded. Use hasFandom() to check first.");
        }
        return $this->fandom;
    }

    /**
     * Check if fandom is loaded.
     * @return bool True if fandom is loaded, false otherwise.
     */
    public function hasFandom(): bool
    {
        return $this->fandom !== null;
    }

    /**
     * Set Fandom.
     * @param Fandom|array $fandom New Fandom.
     * @return void
     */
    public function setFandom(Fandom|array $fandom): void
    {
        $this->fandom = is_array($fandom)
            ? Fandom::jsonUnserialize(json_encode($fandom))
            : $fandom;
    }

    /**
     * Serialize Character into an array for JSON parsing.
     * @return array Array of Character data.
     */
    public function jsonSerialize(): array
    {
        $assoc = [];

        if ($this->hasFandom()) {
            $assoc["fandom"] = $this->fandom;
        }

        return array_merge(parent::jsonSerialize(), [
            "fandom_id" => $this->getFandomId(),
        ], $assoc);
    }

    /**
     * Create a new Character instance.
     * @return self New Character instance.
     */
    public static function getNewObject(): self
    {
        return new self();
    }
}
