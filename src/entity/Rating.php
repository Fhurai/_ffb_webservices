<?php

require_once "../src/entity/Parameters.php";

readonly class Rating extends Parameters
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
     * @param string $json
     * @return Rating
     */
    public static function jsonUnserialize($json): Rating
    {
        $parameters = new Rating();
        foreach (json_decode($json, true) as $key => $data) {
            $function = "set" . ucfirst($key);
            $parameters->$function($data);
        }
        return $parameters;
    }
}