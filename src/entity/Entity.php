<?php

abstract class Entity implements JsonSerializable
{

    private int $id;
    private DateTime $creation_date;
    private DateTime $update_date;
    private ?DateTime $delete_date;


    /**
     * @param int $id
     * @param string name
     */
    public function __construct()
    {
        $this->setId(0);
        $this->setCreationDate(new DateTime());
        $this->setUpdateDate(new DateTime());
        $this->setDeleteDate(new DateTime());
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
    public function setId(int $id)
    {
        $this->id = $id;
    }

    /**
     * 
     * @return DateTime
     */
    public function getCreationDate(): DateTime
    {
        return $this->creation_date;
    }

    /**
     * 
     * @param DateTime $creation_date
     * @return void
     */
    public function setCreationDate(DateTime $creation_date)
    {
        $this->creation_date = $creation_date;
    }

    /**
     * 
     * @return DateTime
     */
    public function getUpdateDate(): DateTime{
        return $this->update_date;
    }

    /**
     * 
     * @param DateTime $update_date
     * @return void
     */
    public function setUpdateDate(DateTime $update_date){
        $this->update_date = $update_date;
    }

    /**
     * 
     * @return DateTime
     */
    public function getDeleteDate(): ?DateTime
    {
        return $this->delete_date;
    }

    /**
     * 
     * @param DateTime $delete_date
     * @return void
     */
    public function setDeleteDate(?DateTime $delete_date = null){
        $this->delete_date = $delete_date;
    }

    /**
     * @return array
     */
    public function jsonSerialize(): mixed
    {
        return [
            "id" => $this->getId(),
            "creation_date"=> $this->getCreationDate(),
            "update_date"=> $this->getUpdateDate(),
            "delete_date"=> $this->getDeleteDate(),
        ];
    }

    /**
     * @param array $data
     * @return Parameters
     */
    abstract static public function jsonUnserialize($json): Entity;

    /**
     * 
     * @param string $property
     * @return string
     */
    protected static function getterFunction(string $property){

        $getterFunction = "get";
        $pos = -1;

        
        if(strpos($property, "is") !== false && strpos($property, "is") === 0){
            $getterFunction = "";
        }

        foreach(str_split($property) as $key => $character){
            if($character === "_"){
                $pos = $key;
            }

            if($pos + 1 === $key){
                $getterFunction .= strtoupper($character);
                $pos = -1;
            }else if($pos === -1){
                $getterFunction .= $character;
            }
        }

        return $getterFunction;
    }

    /**
     * 
     * @param string $property
     * @return string
     */
    protected static function setterFunction(string $property){
        $setterFunction = "set";
        $pos = -1;

        foreach(str_split($property) as $key => $character){
            if($character === "_"){
                $pos = $key;
            }

            if($pos + 1 === $key){
                $setterFunction .= strtoupper($character);
                $pos = -1;
            }else if($pos === -1){
                $setterFunction .= $character;
            }
        }

        return $setterFunction;
    }
}