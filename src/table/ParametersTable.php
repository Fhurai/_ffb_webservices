<?php

if (file_exists("../table/Connection.php")) {
    require_once "../table/Connection.php";
} else if (file_exists("../src/table/Connection.php")) {
    require_once "../src/table/Connection.php";
}

if (file_exists("../entity/Rating.php")) {
    require_once "../entity/Rating.php";
} else if (file_exists("../src/entity/Rating.php")) {
    require_once "../src/entity/Rating.php";
}

if (file_exists("../entity/Score.php")) {
    require_once "../entity/Score.php";
} else if (file_exists("../src/entity/Score.php")) {
    require_once "../src/entity/Score.php";
}

if (file_exists("../entity/Action.php")) {
    require_once "../entity/Action.php";
} else if (file_exists("../src/entity/Action.php")) {
    require_once "../src/entity/Action.php";
}

if (file_exists("../entity/TagType.php")) {
    require_once "../entity/TagType.php";
} else if (file_exists("../src/entity/TagType.php")) {
    require_once "../src/entity/TagType.php";
}

/**
 * Abstract table Parameters.
 */
abstract class ParametersTable extends Connection
{

    /**
     * Constructor.
     * @param string $typeConnection Connection to use [main/stats/tests].
     */
    public function __construct(string $typeConnection)
    {
        // Parent overloading.
        parent::__construct($typeConnection);
    }

    /**
     * Method to parse data into object.
     * @param array $parameters Data array from db.
     * @return mixed Object created from data, or false.
     */
    private function parseDataParameters(array $parameters): mixed
    {
        switch ($this->getTable()) {
            // JsonUnserialize en fonction de la table utilisée.
            case "ratings":
                return Rating::jsonUnserialize(json_encode($parameters));
            case "scores":
                return Score::jsonUnserialize(json_encode($parameters));
            case "actions":
                return Action::jsonUnserialize(json_encode($parameters));
            case "tag_types":
                return TagType::jsonUnserialize(json_encode($parameters));
        }

        // Table not found, return false.
        return false;
    }

    /**
     * Method to get one occurence of data.
     * @param int $id Object identifier.
     * @throws \FfbTableException Exception when no data found for id.
     * @return mixed Object created from data.
     */
    public function get(int $id): mixed
    {
        // Preparation of the query.
        $sth = $this->getDatabase()->prepare("SELECT " . $this->getColumnsSelect() . " FROM `" . $this->getTable() . "` WHERE `id`=:id");

        // Execution of the query with the id parameter.
        $sth->execute([
            ":id" => $id
        ]);

        // Fetch the result of the query.
        $rows = $sth->fetch(PDO::FETCH_ASSOC);

        if (!$rows) {

            // No data found, throw FfbTableException
            throw new FfbTableException(message: "No data for " . $this->table . " n°" . $id);
        } else {

            // Data found, return the object with that data.
            return $this->parseDataParameters($rows);
        }
    }

    /**
     * Method to search occurence of data.
     * @param mixed $args Array of arguments.
     * @throws \FfbTableException Exception when no data found.
     * @return mixed Array of objects created from data.
     */
    public function search(?array $args = null): mixed
    {
        // Querystring initialization.
        $query = "SELECT " . $this->getColumnsSelect() . " FROM `" . $this->getTable() . "` ";

        if ($args !== null) {
            // If arguments exists

            if (array_key_exists("conditions", $args)) {
                // If conditions option exists

                // Initialization Countdown for number of conditions.
                $count = 0;

                foreach ($args["conditions"] as $key => $value) {
                    // Going through conditions to add them to querystring.

                    // if first condition, that's a WHERE, otherwise that's a AND.
                    $query .= ($count === 0) ? " WHERE $key " : " AND $key ";

                    if ((strpos($value, "<") !== false) || (strpos($value, ">") !== false) || (strpos($value, "!") !== false) || (strpos($value, "%"))) {
                        // If special character in value, value is used without addon.
                        $query .= $value;
                    } else {
                        // If no special character in value, add " = " as addon.
                        $query .= " = " . $value;
                    }

                    // Increment countdown.
                    $count++;
                }
            }

            if (array_key_exists("order", $args) && is_array($args["order"]) 
                && array_key_exists("property", $args["order"]) && array_key_exists("direction", $args["order"])) {
                // If order option exists with its two options, property & direction, addition to querystring.
                $query .= " ORDER BY " . $args["order"]["property"] . " " . $args["order"]["direction"];
            }

            if (array_key_exists("filter", $args) && is_array($args["filter"]) 
                && array_key_exists("limit", $args["filter"]) && array_key_exists("offset", $args["filter"])) {
                // If filter option exists with its two options, limit & offset, addition to querystring.
                $query .= " LIMIT " . $args["filter"]["limit"] . ", " . $args["filter"]["offset"];
            }
        }

        // Preparation of the query.
        $sth = $this->getDatabase()->prepare($query);

        // Execution of the query with the id parameter.
        $sth->execute();

        // Fetch the result of the query.
        $rows = $sth->fetchAll(PDO::FETCH_ASSOC);

        if (!$rows) {

            // No data found, throw FfbTableException
            throw new FfbTableException(message: "No data for " . $this->table);
        } else {

            // Data found, return array of objects with that data.
            $result = [];
            foreach ($rows as $row) {
                $result[] = $this->parseDataParameters($row);
            }
            return $result;
        }
    }
}