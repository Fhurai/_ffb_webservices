<?php

/**
 * Abstract class Parameters implementing JsonSerializable.
 */
abstract readonly class Parameters implements JsonSerializable
{
    private int $id;
    private string $name;

    /**
     * Constructor initializes the properties.
     * @param int $id The identifier.
     * @param string $name The name.
     */
    public function __construct(int $id, string $name)
    {
        $this->id = $id;
        $this->name = $name;
    }

    /**
     * Getter for Identifier.
     * @return int The identifier.
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * Getter for Name.
     * @return string The name.
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * Serializes the object to an array.
     * @return array The serialized data.
     */
    public function jsonSerialize(): array
    {
        return [
            "id" => $this->id,
            "name" => $this->name
        ];
    }

    /**
     * Unserializes a JSON string into an object.
     * @param string $json The JSON string.
     * @return static The unserialized object.
     */
    public static function jsonUnserialize(string $json): static
    {
        $data = json_decode($json, true);
        return static::getNewObject($data['id'], $data['name']);
    }

    /**
     * Abstract method to create a new instance.
     * @param int $id The identifier.
     * @param string $name The name.
     * @return static The new instance.
     */
    abstract public static function getNewObject(int $id, string $name): static;
}
