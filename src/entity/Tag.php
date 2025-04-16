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
     * Type_id.
     * @var int
     */
    private int $type_id;

    /**
     * Associated TagType entity (loaded only when needed).
     * @var TagType|null
     */
    private ?TagType $tag_type = null;

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
     * Getter Type_id.
     * @return int Type_id.
     */
    public function getTypeId(): int
    {
        return $this->type_id;
    }

    /**
     * Setter Type_id.
     * @param int $type_id New Type_id;
     * @return void
     */
    public function setTypeId(int $type_id): void
    {
        $this->type_id = $type_id;
    }

    /**
     * Get the associated TagType entity.
     *
     * @return TagType
     * @throws \RuntimeException If tag_type is not loaded.
     */
    public function getTagType(): TagType
    {
        if (!$this->tag_type) {
            throw new \RuntimeException("tag_type is not loaded. Use hasTagType() to check first.");
        }
        return $this->tag_type;
    }

    /**
     * Check if tag_type is loaded.
     *
     * @return bool
     */
    public function hasTagType(): bool
    {
        return $this->tag_type !== null;
    }

    /**
     * Set the associated TagType entity.
     *
     * @param TagType|array $tagType
     */
    public function setTagType(TagType|array $tagType): void
    {
        if (is_array($tagType)) {
            $this->tag_type = TagType::jsonUnserialize(json_encode($tagType));
            return;
        }

        if ($tagType instanceof TagType) {
            $this->tag_type = $tagType;
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
