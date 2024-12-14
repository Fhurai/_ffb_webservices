<?php

require_once "../src/entity/Parameters.php";

readonly class Action extends Parameters
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
     * @return Action
     */
    public static function jsonUnserialize($json): Action
    {
        $parameters = new Action();
        foreach (json_decode($json, true) as $key => $data) {
            $function = "set" . ucfirst($key);
            $parameters->$function($data);
        }
        return $parameters;
    }
}