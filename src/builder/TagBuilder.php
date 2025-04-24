<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Tag.php";

/**
 * TagBuilder is responsible for constructing and resetting instances of the Tag entity.
 * It extends the NamedEntityBuilder to inherit common functionality for named entities.
 */
final class TagBuilder extends NamedEntityBuilder
{

    /**
     * @var Tag The Tag object being built.
     */
    protected $obj;

    /**
     * Resets the Tag object to a new instance.
     * This method is typically called at the start of the building process.
     */
    public function reset(): void
    {
        // Initialize a new Tag object
        $this->obj = new Tag();
    }

    /**
     * Sets the description for the Tag object.
     *
     * @param  string $description The description of the tag.
     * @return TagBuilder The current instance of TagBuilder for method chaining.
     */
    public function withDescription(string $description): TagBuilder
    {
        // Set the description of the tag
        $this->obj->setDescription($description);
        return $this;
    }

    /**
     * Sets the type ID for the Tag object.
     *
     * @param  int|TagType $arg The type ID as an integer or a TagType object.
     *                          If a TagType object is provided, its ID will be used.
     * @return TagBuilder The current instance of TagBuilder for method chaining.
     */
    public function withTypeId(int|TagType $arg): TagBuilder
    {
        // Check if the argument is an integer
        if (is_int($arg)) {
            // Set the type ID
            $this->obj->setTypeId($arg);
        }
        // Check if the argument is a TagType object
        elseif ($arg instanceof TagType) {
            // Set the type ID from the TagType object
            $this->obj->setTypeId($arg->getId());
        }
        return $this;
    }

    /**
     * Sets the type for the Tag object.
     *
     * @param  TagType $type The TagType object representing the type of the tag.
     * @return TagBuilder The current instance of TagBuilder for method chaining.
     */
    public function withType(TagType $type): TagBuilder
    {
        // Set the type of the tag
        $this->obj->type = $type;
        // Set the type ID from the TagType object
        return $this->withTypeId($type);
    }
}
