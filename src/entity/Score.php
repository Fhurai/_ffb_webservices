<?php

require_once "../src/entity/Parameters.php";

readonly class Score extends Parameters
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
     * @return Score
     */
    public static function jsonUnserialize($json): Score
    {
        $parameters = new Score();
        foreach (json_decode($json, true) as $key => $data) {
            $function = "set" . ucfirst($key);
            $parameters->$function($data);
        }
        return $parameters;
    }
}