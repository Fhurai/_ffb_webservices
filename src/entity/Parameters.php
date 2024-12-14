<?php

readonly class Parameters implements JsonSerializable
{

    private int $id;
    private string $name;


    /**
     * @param int $id
     * @param string name
     */
    public function __construct()
    {
    }

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    protected function setId(int $id)
    {
        $this->id = $id;
    }

    /**
     * @return string 
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @param string $name
     */
    protected function setName(string $name)
    {
        $this->name = $name;
    }

    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        return [
            "id" => $this->getId(),
            "name" => $this->getName()
        ];
    }

    /**
     * @param array $data
     * @return Parameters
     */
    public static function jsonUnserialize($json): Parameters
    {
        $parameters = new Parameters();
        foreach (json_decode($json, true) as $key => $data) {
            $parameters->$key = $data;
        }
        return $parameters;
    }
}