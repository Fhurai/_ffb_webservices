<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Tag.php";

class TagBuilder extends NamedEntityBuilder
{

    /**
     * @var Tag
     */
    protected $obj;

    /**
     * Resets the Tag object to a new instance.
     */
    public function reset(): void
    {
        // Initialize a new Tag object
        $this->obj = new Tag();
    }

    /**
     * Sets the description for the Tag object.
     *
     * @param string $description The description of the tag.
     * @return TagBuilder The current instance of TagBuilder.
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
     * @param int|TagType $arg The type ID as an integer or a TagType object.
     * @return TagBuilder The current instance of TagBuilder.
     */
    public function withTypeId(int|TagType $arg): TagBuilder
    {
        // Check if the argument is an integer
        if (is_int($arg)) {
            // Set the type ID
            $this->obj->setTypeId($arg);
        }
        // Check if the argument is a TagType object
        else if ($arg instanceof TagType) {
            // Set the type ID from the TagType object
            $this->obj->setTypeId($arg->getId());
        }
        return $this;
    }

    /**
     * Sets the type for the Tag object.
     *
     * @param TagType $type The TagType object.
     * @return TagBuilder The current instance of TagBuilder.
     */
    public function withType(TagType $type): TagBuilder
    {
        // Set the type of the tag
        $this->obj->type = $type;
        // Set the type ID from the TagType object
        return $this->withTypeId($type);
    }
}
