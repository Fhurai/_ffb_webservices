<?php

/**
 * Readonly abstract class Parameters
 */
abstract readonly class Parameters implements JsonSerializable
{

    /**
     * Identifier.
     * @var int
     */
    private int $id;
    /**
     * Name.
     * @var string
     */
    private string $name;


    /**
     * Implied constructor.
     */
    public function __construct()
    {
    }

    /**
     * Getter Identifier.
     * @return int Identifier.
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * Setter Identifier
     * @param int $id New identifier.
     * @return void
     */
    protected function setId(int $id): void
    {
        $this->id = $id;
    }

    /**
     * Getter Name.
     * @return string Name.
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * Setter Name.
     * @param string $name new Name.
     * @return void
     */
    protected function setName(string $name): void
    {
        $this->name = $name;
    }

    /**
     * Method to parse parameters into an array for JSON parsing.
     * @return array Array of parameters data.
     */
    public function jsonSerialize(): mixed
    {
        return [
            "id" => $this->getId(),
            "name" => $this->getName()
        ];
    }

    /**
     * Method to parse a JSON string into an parameters object.
     * @param string $json JSON string.
     * @return mixed Parsed object.
     */
    public static function jsonUnserialize($json): mixed
    {
        // Create parameters with the child class.
        $parameters = static::getNewObject();

        // JSON string is parsed as an array then browsed.
        foreach (json_decode($json, true) as $key => $data) {
            // For each property, the set method is generated then used on the provided data.
            $function = "set" . ucfirst($key);
            $parameters->$function($data);
        }

        // The new parameters is returned.
        return $parameters;
    }

    /**
     * Abstract method to create a new child object.
     * @return mixed The child object.
     */
    public abstract static function getNewObject(): mixed;
}