<?php

require_once "../src/entity/ComplexEntity.php";

/**
 * Tag class.
 */
#[AllowDynamicProperties]
class Tag extends ComplexEntity
{

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
     * Method to parse Tag into an array for JSON parsing.
     * @return array Array of Tag data.
     */
    public function jsonSerialize(): array
    {
        $assoc = [];

        if (property_exists($this, "tag_type")) {
            $assoc["tag_type"] = $this->tag_type;
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
