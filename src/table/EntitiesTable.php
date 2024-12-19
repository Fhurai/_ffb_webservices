<?php

if (file_exists("../table/Connection.php")) {
    require_once "../table/Connection.php";
} else if (file_exists("../src/table/Connection.php")) {
    require_once "../src/table/Connection.php";
}

if (file_exists("../entity/Author.php")) {
    require_once "../entity/Author.php";
} else if (file_exists("../src/entity/Author.php")) {
    require_once "../src/entity/Author.php";
}

if (file_exists("../entity/Fandom.php")) {
    require_once "../entity/Fandom.php";
} else if (file_exists("../src/entity/Fandom.php")) {
    require_once "../src/entity/Fandom.php";
}

if (file_exists("../entity/Language.php")) {
    require_once "../entity/Language.php";
} else if (file_exists("../src/entity/Language.php")) {
    require_once "../src/entity/Language.php";
}

/**
 * Abstract table Entities.
 */
abstract class EntitiesTable extends Connection
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
            case "authors":
                return Author::jsonUnserialize(json_encode($parameters));
            case "fandoms":
                return Fandom::jsonUnserialize(json_encode($parameters));
            case "languages":
                return Language::jsonUnserialize(json_encode($parameters));
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

            if (
                array_key_exists("order", $args) && is_array($args["order"])
                && array_key_exists("property", $args["order"]) && array_key_exists("direction", $args["order"])
            ) {
                // If order option exists with its two options, property & direction, addition to querystring.
                $query .= " ORDER BY " . $args["order"]["property"] . " " . $args["order"]["direction"];
            }

            if (
                array_key_exists("filter", $args) && is_array($args["filter"])
                && array_key_exists("limit", $args["filter"]) && array_key_exists("offset", $args["filter"])
            ) {
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

    /**
     * Method to create occurence of data.
     * @return mixed New Object created.
     */
    public function new(): mixed
    {
        return $this->parseDataParameters([]);
    }

    /**
     * Method to create occurence of data
     * @param string $json Object as a json string
     * @throws \FfbTableException Exception if creation met an exception.
     * @return mixed Created object with new id.
     */
    public function create(string $json): mixed
    {
        // Begin transaction.
        $this->getDatabase()->beginTransaction();

        try {
            // Preparation of the query.
            $sth = $this->getDatabase()->prepare($this->getCurQueryString("CREATE"));

            // Get object in the correct class.
            $entity = $this->parseDataParameters(json_decode($json, true));

            if ($entity->getId() !== 0) {
                // Entity has an id, it cannot be created in DB.

                // Rollback the transaction.
                $this->getDatabase()->rollBack();

                // Throw exception to notify user.
                throw new FfbTableException("New entity has an id already !");
            }

            // Get columns without id & delete_date for creation.
            $filteredColumns = array_filter($this->getColumns(), fn($column) => !in_array($column, ["id", "delete_date"]));

            // Get data array for execution.
            $data = [];
            foreach ($filteredColumns as $column) {
                $getFunction = SrcUtilities::gsFunction("get", $column);
                $data[":" . $column] = is_scalar($entity->$getFunction()) ? $entity->$getFunction() : $entity->$getFunction()->format("Y-m-d H:i:s");
            }

            // Execution of the query with the id parameter.
            $sth->execute($data);

            // Set the new id of the inserted entity.
            $entity->setId($this->getDatabase()->lastInsertId());

            // Commit the insertion.
            $this->getDatabase()->commit();

            // Return newly inserted entity.
            return $entity;
        } catch (\PDOException $e) {
            // Exception caught, rollback changes.
            $this->getDatabase()->rollBack();

            // Throw new Exception with previous exception message.
            throw new FfbTableException($e->getMessage());
        }
    }

    public function remove(string $json): mixed
    {
        // Begin transaction.
        $this->getDatabase()->beginTransaction();

        try {

            // Preparation of the query.
            // $query = $this->getCurQueryString("REMOVE");
            $sth = $this->getDatabase()->prepare($this->getCurQueryString("REMOVE"));

            // Get object in the correct class.
            $entity = $this->parseDataParameters(json_decode($json, true));

            if ($entity->getId() === 0) {
                // Entity has no id.

                // Rollback the transaction.
                $this->getDatabase()->rollBack();

                // Throw exception to notify the user.
                throw new FfbTableException("Entity being removed has no id !");
            }

            if ($entity->getDeleteDate() === null) {
                // Entity has no delete_date.

                // Rollback the transaction.
                $this->getDatabase()->rollBack();

                // Throw exception to notify the user.
                throw new FfbTableException("Entity being removed has no delete date !");
            }

            // Get data array for execution.
            $data[":id"] = $entity->getId();

            // Execution of the query with the id parameter.
            $result = $sth->execute($data);

            // Commit the deletion.
            $this->getDatabase()->commit();

            // Return the result of the deletion.
            return $result;
        } catch (\PDOException $e) {
            // Exception caught, rollback changes.
            $this->getDatabase()->rollBack();

            // Throw new Exception with previous exception message.
            throw new FfbTableException($e->getMessage());
        }
    }

    public function update(string $json, bool $update = true): mixed
    {
        // Begin transaction.
        $this->getDatabase()->beginTransaction();

        try {
            // Preparation of the query.
            $sth = $this->getDatabase()->prepare($this->getCurQueryString("UPDATE"));

            // Get object in the correct class.
            $entity = $this->parseDataParameters(json_decode($json, true));

            if ($entity->getId() === 0) {
                // Entity to update has no id.

                // Rollback the transaction.
                $this->getDatabase()->rollBack();

                // Throw exception to notify user.
                throw new FfbTableException("Entity being updated has no id !");
            }

            if ($entity->getDeleteDate() !== null && $update) {
                // Entity has no delete_date.

                // Rollback the transaction.
                $this->getDatabase()->rollBack();

                // Throw exception to notify the user.
                throw new FfbTableException("Entity being updated has delete date !");
            }

            // Get data array for execution.
            $data = [];
            foreach ($this->getColumns() as $column) {
                $getFunction = SrcUtilities::gsFunction("get", $column);

                if (is_scalar($entity->$getFunction())) {

                    // Value is scalar, so normal getFunction works.
                    $data[":" . $column] = $entity->$getFunction();
                } else {

                    // Value is not scalar, so need to pass through format function
                    $data[":" . $column] = is_null($entity->$getFunction()) ? $entity->$getFunction() : $entity->$getFunction()->format("Y-m-d H:i:s");
                }
            }

            // Execution of the query with the id parameter.
            $sth->execute($data);

            // Commit the insertion.
            $this->getDatabase()->commit();

            // Return newly inserted entity.
            return $this->get($entity->getId());
        } catch (\PDOException $e) {
            // Exception caught, rollback changes.
            $this->getDatabase()->rollBack();

            // Throw new Exception with previous exception message.
            throw new FfbTableException($e->getMessage());
        }
    }

    public function delete(int $id): mixed
    {
        $entity = $this->get($id);
        $entity->setDeleteDate(new \DateTime());
        return $this->update(json_encode($entity), false);
    }

    public function restore(int $id): mixed
    {
        $entity = $this->get($id);
        $entity->setDeleteDate(null);
        return $this->update(json_encode($entity), false);
    }

    /**
     * Method to generate CREATE, UPDATE or DELETE querystring.
     * @param string $action Action whom the querystring is created.
     * @return string The SQL statement to prepare.
     */
    private function getCurQueryString(string $action): string
    {

        if ($action === "CREATE") {
            // The action is creation of entity.

            // Get columns without id & delete_date for creation.
            $filteredColumns = array_filter($this->getColumns(), fn($column) => !in_array($column, ["id", "delete_date"]));

            // Beginning SQL statement.
            $query = "INSERT INTO `" . $this->getTable() . "`(";

            // Field names part for SQL statement.
            $query .= implode(", ", array_map(function ($e) {
                return "`$e`";
            }, $filteredColumns));

            // Fields values part for SQL statement.
            $query .= ") VALUES (";
            $query .= implode(", ", array_map(function ($e) {
                return ":$e";
            }, $filteredColumns));

            // Return SQL statement + end SQL statement.
            return $query . ")";
        } else if ($action === "UPDATE") {
            // The action is update of entity.

            // Get columns without id & delete_date for creation.
            $filteredColumns = array_filter($this->getColumns(), fn($column) => !in_array($column, ["id"]));

            $query = "UPDATE `" . $this->getTable() . "` SET ";

            $query .= implode(", ", array_map(function ($e) {
                return "`$e` = :$e";
            }, $filteredColumns));

            $query .= " WHERE id = :id";

            return $query;
        } else if ($action === "REMOVE") {
            // The action is physical deletion of entity.

            // Return SQL statement.
            return "DELETE FROM `" . $this->getTable() . "` WHERE `id` = :id AND `delete_date` IS NOT NULL";
        }

        throw new FfbTableException("Unknown action.");
    }
}