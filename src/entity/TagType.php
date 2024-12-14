<?php

require_once "../src/entity/Parameters.php";

readonly class TagType extends Parameters
{

    /**
     * @param int $id
     * @param string name
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @param array $data
     * @return TagType
     */
    public static function jsonUnserialize($json): TagType
    {
        $parameters = new TagType();
        foreach (json_decode($json, true) as $key => $data) {
            $function = "set" . ucfirst($key);
            $parameters->$function($data);
        }
        return $parameters;
    }
}