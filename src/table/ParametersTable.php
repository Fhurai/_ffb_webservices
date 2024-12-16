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
     * @param string $typeConnection
     */
    public function __construct(string $typeConnection)
    {
        parent::__construct($typeConnection);
    }

    /**
     * Summary of parseDataParameters
     * @param array $parameters
     * @return mixed
     */
    private function parseDataParameters(array $parameters): mixed
    {
        switch ($this->getTable()) {
            case "ratings":
                return Rating::jsonUnserialize(json_encode($parameters));
            case "scores":
                return Score::jsonUnserialize(json_encode($parameters));
            case "actions":
                return Action::jsonUnserialize(json_encode($parameters));
            case "tag_types":
                return TagType::jsonUnserialize(json_encode($parameters));
        }
        return false;
    }

    public function get(int $id): mixed
    {
        $sth = $this->getDatabase()->prepare("SELECT " . $this->getColumnsSelect() . " FROM `" . $this->getTable() . "` WHERE `id`=:id");
        $sth->execute([
            ":id" => $id
        ]);
        $rows = $sth->fetch(PDO::FETCH_ASSOC);

        if (!$rows) {
            throw new FfbTableException(message: "No data for " . $this->table . " n°" . $id);
        } else {
            return $this->parseDataParameters($rows);
        }
    }

    public function search(?array $args = null): mixed
    {
        $query = "SELECT " . $this->getColumnsSelect() . " FROM `" . $this->getTable() . "` ";

        if (!is_null($args)) {
            if (array_key_exists("conditions", $args)) {
                $count = 0;
                foreach ($args["conditions"] as $key => $value) {
                    
                    $query .= ($count === 0) ? " WHERE $key " : " AND $key ";
                    
                    if ((strpos($value, "<") !== false) || (strpos($value, ">") !== false) || (strpos($value, "!") !== false) || (strpos($value, "%"))) {
                        $query .= $value;
                    } else {
                        $query .= " = " . $value;
                    }
                    $count++;
                }
            }

            if (array_key_exists("order", $args)) {
                $query .= " ORDER BY " . $args["order"]["property"] . " " . $args["order"]["direction"];
            }

            if (array_key_exists("filter", $args)) {
                $query .= " LIMIT " . $args["filter"]["limit"] . ", " . $args["filter"]["offset"];
            }
        }

        $sth = $this->getDatabase()->prepare($query);
        $sth->execute();
        $rows = $sth->fetchAll(PDO::FETCH_ASSOC);

        if (!$rows) {
            throw new FfbTableException(message: "No data for " . $this->table);
        } else {
            $result = [];
            foreach ($rows as $row) {
                $result[] = $this->parseDataParameters($row);
            }
            return $result;
        }
    }
}