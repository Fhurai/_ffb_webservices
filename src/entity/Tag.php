<?php

require_once __DIR__ . '/../../src/entity/ComplexEntity.php';

/**
 * Tag class.
 */
final class Tag extends ComplexEntity
{
    use EntityTrait;

    /**
     * Description.
     * @var string
     */
    private string $description;

    /**
     * Type ID.
     * @var int
     */
    private int $typeId;

    /**
     * Associated TagType entity (loaded only when needed).
     * @var TagType|null
     */
    private ?TagType $tagType = null;

    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setDescription("");
        $this->setTypeId(-1);
    }

    /**
     * Getter description.
     * @return string Description.
     */
    public function getDescription(): string
    {
        return $this->description;
    }

    /**
     * Setter description.
     * @param string $description New Description.
     * @return void
     */
    public function setDescription(string $description): void
    {
        $this->description = $description;
    }

    /**
     * Getter type ID.
     * @return int Type ID.
     */
    public function getTypeId(): int
    {
        return $this->typeId;
    }

    /**
     * Setter type ID.
     * @param int $typeId New type ID.
     * @return void
     */
    public function setTypeId(int $typeId): void
    {
        $this->typeId = $typeId;
    }

    /**
     * Get the associated TagType entity.
     *
     * @return TagType
     * @throws \OutOfBoundsException If tagType is not loaded.
     */
    public function getTagType(): TagType
    {
        if (!$this->tagType) {
            throw new \OutOfBoundsException("tagType is not loaded. Use hasTagType() to check first.");
        }
        return $this->tagType;
    }

    /**
     * Check if tagType is loaded.
     *
     * @return bool
     */
    public function hasTagType(): bool
    {
        return $this->tagType !== null;
    }

    /**
     * Set the associated TagType entity.
     *
     * @param TagType|array $tagType
     */
    public function setTagType(TagType|array $tagType): void
    {
        if (is_array($tagType)) {
            $this->tagType = TagType::jsonUnserialize(json_encode($tagType));
            return;
        }

        if ($tagType instanceof TagType) {
            $this->tagType = $tagType;
            return;
        }

        throw new \InvalidArgumentException("Invalid type for tagType. Must be TagType or array.");
    }

    /**
     * Method to parse Tag into an array for JSON parsing.
     * @return array Array of Tag data.
     */
    public function jsonSerialize(): array
    {
        $assoc = [];

        if ($this->hasTagType()) {
            $assoc["tag_type"] = $this->getTagType()->jsonSerialize();
        }

        return array_merge(parent::jsonSerialize(), [
            "description" => $this->getDescription(),
            "type_id" => $this->getTypeId()
        ], $assoc);
    }

    /**
     * Method to create a new Tag.
     * @return mixed new Tag.
     */
    public static function getNewObject(): mixed
    {
        return new self();
    }
}
