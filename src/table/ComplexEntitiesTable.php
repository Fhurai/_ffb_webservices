<?php

if (file_exists("../table/Connection.php")) {
    require_once "../table/Connection.php";
} else if (file_exists("../src/table/Connection.php")) {
    require_once "../src/table/Connection.php";
}

if (file_exists("../entity/Tag.php")) {
    require_once "../entity/Tag.php";
} else if (file_exists("../src/entity/Tag.php")) {
    require_once "../src/entity/Tag.php";
}

if (file_exists("../entity/Character.php")) {
    require_once "../entity/Character.php";
} else if (file_exists("../src/entity/Character.php")) {
    require_once "../src/entity/Character.php";
}

if (file_exists("../entity/Relation.php")) {
    require_once "../entity/Relation.php";
} else if (file_exists("../src/entity/Relation.php")) {
    require_once "../src/entity/Relation.php";
}

if (file_exists("../entity/Fanfiction.php")) {
    require_once "../entity/Fanfiction.php";
} else if (file_exists("../src/entity/Fanfiction.php")) {
    require_once "../src/entity/Fanfiction.php";
}

if (file_exists("../entity/Link.php")) {
    require_once "../entity/Link.php";
} else if (file_exists("../src/entity/Link.php")) {
    require_once "../src/entity/Link.php";
}

if (file_exists("../entity/Series.php")) {
    require_once "../entity/Series.php";
} else if (file_exists("../src/entity/Series.php")) {
    require_once "../src/entity/Series.php";
}

/**
 * Abstract table ComplexEntities.
 */
abstract class ComplexEntitiesTable extends Connection
{
    private array $associations;

    /**
     * Constructor.
     * @param string $typeConnection Connection to use [main/stats/tests].
     * @param string $user SQL user.
     */
    public function __construct(string $typeConnection, string $user)
    {
        // Parent overloading.
        parent::__construct($typeConnection, $user);

        $this->setAssociations($this->getNameAssociations());
    }

    /**
     * Getter Associations.
     * @return array Associations.
     */
    protected function getAssociations(): array
    {
        return $this->associations;
    }

    /**
     * Setter Associations.
     * @param array $associations New Associations.
     * @return void
     */
    protected function setAssociations(array $associations): void
    {
        $this->associations = $associations;
    }

    /**
     * Method to set associations in children classes.
     * @param array $associations Associations array.
     * @return void
     */
    abstract protected function getNameAssociations(): array;

    /**
     * Method to parse data into object.
     * @param array $parameters Data array from db.
     * @throws \FfbTableException No parsing done.
     * @return mixed Object created from data
     */
    private function parseDataParameters(array $parameters): mixed
    {
        switch ($this->getTable()) {
            // JsonUnserialize en fonction de la table utilisée.
            case "tags":
                return Tag::jsonUnserialize(json_encode($parameters));
            case "characters":
                return Character::jsonUnserialize(json_encode($parameters));
            case "relations":
                return Relation::jsonUnserialize(json_encode($parameters));
            case "fanfictions":
                return Fanfiction::jsonUnserialize(json_encode($parameters));
            case "links":
                return Link::jsonUnserialize(json_encode($parameters));
            case "series":
                return Series::jsonUnserialize(json_encode($parameters));
        }

        throw new FfbTableException("No parse for data !", 409);
    }

    /**
     * Method to get one occurence of data.
     * @param int $id Object identifier.
     * @param bool $loadAssociations Indication if associations are loaded.
     * @throws \FfbTableException Exception when no data found for id.
     * @return mixed Object created from data.
     */
    public function get(int $id, bool $loadAssociations = false): mixed
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
            throw new FfbTableException("No data for " . $this->getTable() . " n°" . $id, 404);
        } else {
            if ($loadAssociations)
                $data = $this->loadAssociations($rows);
            else
                $data = $rows;

            // Data found, return the object with that data.
            return $this->parseDataParameters($data);
        }
    }

    /**
     * Method to search occurence of data.
     * @param mixed $args Array of arguments.
     * @param bool $loadAssociations Indication if associations are loaded.
     * @throws \FfbTableException Exception when no data found.
     * @return mixed Array of objects created from data.
     */
    public function search(?array $args = null, bool $loadAssociations = false): mixed
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
                        if (strpos($key, "IN") !== false) {
                            $query .= "(" . implode(", ", json_decode($value)) . ")";
                        } else {
                            // If no special character in value, add " = " as addon.
                            $query .= " = " . $value;
                        }
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
            throw new FfbTableException(message: "No data for " . $this->getTable());
        } else {

            // Data found, return array of objects with that data.
            $result = [];
            foreach ($rows as $row) {
                if ($loadAssociations) {
                    $row = $this->loadAssociations($row);
                }
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
                throw new FfbTableException("New entity has an id already !", 409);
            }

            // Get columns without id & delete_date for creation.
            $filteredColumns = array_filter($this->getColumns(), fn($column) => !in_array($column, ["id", "delete_date"]));

            // Get data array for execution.
            $data = [];
            foreach ($filteredColumns as $column) {
                $getFunction = SrcUtilities::gsFunction("get", $column);
                switch (gettype($entity->$getFunction())) {
                    case "integer":
                    case "string":
                        $data[":" . $column] = $entity->$getFunction();
                        break;
                    case "boolean":
                        $data[":" . $column] = $entity->$getFunction() ? 1 : 0;
                        break;
                    case "object"://Datetime
                        $data[":" . $column] = $entity->$getFunction()->format("Y-m-d H:i:s");
                }
            }

            // Execution of the query with the id parameter.
            $sth->execute($data);

            // Set the new id of the inserted entity.
            $entity->setId($this->getDatabase()->lastInsertId());

            // Insert association(s).
            $this->insertAssociations($entity);

            // Commit the insertion.
            $this->getDatabase()->commit();

            // Load associations from new entity
            $data = $this->loadAssociations(json_decode(json_encode($entity), true));

            // Return newly inserted entity.
            return $this->parseDataParameters($data);
        } catch (\PDOException $e) {

            // Exception caught, rollback changes.
            if ($this->getDatabase()->inTransaction()) {
                $this->getDatabase()->rollBack();
            }

            // Throw new Exception with previous exception message.
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }


    /**
     * Method to physically delete data.
     * @param string $json Object as a json string
     * @throws \FfbTableException Exception if remove met an exception.
     * @return bool Indication if data was removed.
     */
    public function remove(string $json): bool
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
                throw new FfbTableException("Entity being removed has no id !", 409);
            }

            if ($entity->getDeleteDate() === null) {
                // Entity has no delete_date.

                // Rollback the transaction.
                $this->getDatabase()->rollBack();

                // Throw exception to notify the user.
                throw new FfbTableException("Entity being removed has no delete date !", 409);
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

    /**
     * Method to update data.
     * @param string $json Object as a json string
     * @param bool $update Indication if method is called as pure update or as delete/restore.
     * @throws \FfbTableException Exception if update met an exception.
     * @return mixed Updated object with new data.
     */
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
                throw new FfbTableException("Entity being updated has no id !", 409);
            }

            if ($entity->getDeleteDate() !== null && $update) {
                // Entity has no delete_date.

                // Rollback the transaction.
                $this->getDatabase()->rollBack();

                // Throw exception to notify the user.
                throw new FfbTableException("Entity being updated has delete date !", 409);
            }

            // Get data array for execution.
            $data = [];
            foreach ($this->getColumns() as $column) {
                $getFunction = SrcUtilities::gsFunction("get", $column);
                switch (gettype(value: $entity->$getFunction())) {
                    case "integer":
                    case "string":
                        $data[":" . $column] = $entity->$getFunction();
                        break;
                    case "boolean":
                        $data[":" . $column] = $entity->$getFunction() ? 1 : 0;
                        break;
                    case "object": //Datetime
                        $data[":" . $column] = $entity->$getFunction()->format("Y-m-d H:i:s");
                        break;
                    case "NULL": //null
                        $data[":" . $column] = NULL;

                }
            }

            $assoc = false;
            switch ($this->getTable()) {
                case "tags":
                    $assoc = property_exists($entity, "tag_type");
                    break;
                case "characters":
                    $assoc = property_exists($entity, "fandom");
                    break;
                case "relations":
                    $assoc = property_exists($entity, "characters");
                    break;
                case "fanfictions":
                    $assoc = property_exists($entity, "author") || property_exists($entity, "rating") || property_exists($entity, "language") || property_exists($entity, "score") || property_exists($entity, "fandoms") || property_exists($entity, "relations") || property_exists($entity, "characters") || property_exists($entity, "tags");
                    break;
                case "series":
                    $assoc = property_exists($entity, "fanfictions");
                    break;
            }

            // Update of the date of last modification of the entity.
            $data[":update_date"] = (new DateTime("now", new DateTimeZone("Europe/Paris")))->format("Y-m-d H:i:s");

            // Execution of the query with the id parameter.
            $sth->execute($data);

            // Update associations
            if($update) $this->updateAssociations($entity);

            // Commit the insertion.
            $this->getDatabase()->commit();
            
            // Return newly inserted entity.
            return $this->get($entity->getId(), $assoc);
        } catch (\PDOException $e) {
            // Exception caught, rollback changes.
            $this->getDatabase()->rollBack();

            // Throw new Exception with previous exception message.
            throw new FfbTableException($e->getMessage());
        }
    }

    /**
     * Method to logically delete data.
     * @param int $id Identifier of objet to delete.
     * @param bool $loadAssociations Indication if entity should load associations.
     * @return mixed Object logically deleted.
     */
    public function delete(int $id, bool $loadAssociations = false): mixed
    {
        $entity = $this->get($id, $loadAssociations);
        $entity->setDeleteDate(new DateTime("now", new DateTimeZone("Europe/Paris")));
        return $this->update(json_encode($entity), false);
    }

    /**
     * Method to restore deleted data
     * @param int $id Identifier of objet to delete.
     * @param bool $loadAssociations Indication if entity should load associations.
     * @return mixed Object restored.
     */
    public function restore(int $id, bool $loadAssociations = false): mixed
    {
        $entity = $this->get($id, $loadAssociations);
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

    /**
     * Method to load all associations for the class.
     * @param array $data Data from database.
     * @return array Data with associations data.
     */
    protected function loadAssociations(array $data): array
    {

        foreach ($this->getAssociations() as $association => $multiple) {
            $key = strpos($association, "_") === false ? $association : explode("_", $association)[1];
            $identifier = ($multiple ? $data["id"] : $data["{$key}_id"]);
            if (!is_null($identifier))
                $data[$association] = $this->loadAssociationData($association, $identifier, $multiple);
        }

        return $data;
    }

    /**
     * Method to load all data for association.
     * @param string $association Association to get.
     * @param int $identifier Identifier of the association.
     * @param bool $multiple Indication if multiple association or not.
     * @return mixed
     */
    private function loadAssociationData(string $association, int $identifier, bool $multiple)
    {
        if (!$multiple) {
            // Association is not multiple.

            // Get table of association.
            $tableName = SrcUtilities::getTableName($association);
            $table = new $tableName($this->getTypeConnection(), $this->getUser());

            // Get data from table with identifier.
            return $table->get($identifier);
        } else {
            // Association is multiple.

            // Variables initialization.
            $tableSuffix = $this->getTable() !== "series" ? substr($this->getTable(), 0, -1) : "series";
            $associationSuffix = substr($association, 0, -1);

            // Retrieve association links.
            $sth = $this->getDatabase()->prepare("SELECT * FROM `{$this->getTable()}_{$association}` WHERE `{$tableSuffix}_id` = :id");
            $sth->execute([
                ":id" => $identifier,
            ]);
            $assocData = $sth->fetchAll(PDO::FETCH_ASSOC);

            // Array of all association identifiers.
            $ids = array_map(function ($e) use ($associationSuffix) {
                return $e["{$associationSuffix}_id"];
            }, $assocData);

            // Array of association objects.
            $objects = [];

            if (!empty($ids)) {
                // Array of identifiers is not empty.

                // Get table of association.
                $tableName = SrcUtilities::getTableName($association, false);
                $table = new $tableName($this->getTypeConnection(), $this->getUser());

                // Search association objects with identifiers array.
                $objects = $table->search(["conditions" => ["id IN" => json_encode($ids)]], true);

                // For each association object, the association link data is put into the object.
                foreach ($objects as $object) {
                    $object->_assoc_data = array_merge(...array_filter($assocData, function ($data) use ($object, $associationSuffix) {
                        return $data["{$associationSuffix}_id"] === $object->getId();
                    }));
                }
            }

            return $objects;
        }
    }

    /**
     * Method to insert all associations for the class.
     * @param ComplexEntity $entity Entity from which insert associations.
     * @return void
     */
    protected function insertAssociations(ComplexEntity $entity): void
    {
        foreach ($this->getAssociations() as $association => $multiple) {
            if ($multiple)
                $this->insertAssociationsData($association, $entity);
        }
    }

    /**
     * Method to insert one association for the class.
     * @param string $association Association to insert.
     * @param ComplexEntity $entity Entity to link association into.
     * @return void
     */
    private function insertAssociationsData(string $association, ComplexEntity $entity): void
    {
        // Variables initialization.
        $tableSuffix = $this->getTable() !== "series" ? substr($this->getTable(), 0, -1) : "series";
        $associationSuffix = substr($association, 0, -1);

        // Query.
        $query = "INSERT INTO `{$this->getTable()}_{$association}`(`{$tableSuffix}_id`,`{$associationSuffix}_id`) VALUES (:{$tableSuffix}_id, :{$associationSuffix}_id)";

        // Prepare query.
        $sth = $this->getDatabase()->prepare($query);

        // Execute query.
        if(property_exists($entity, $association)){
            foreach($entity->$association as $object){
                $sth->execute([
                    ":{$tableSuffix}_id" => $entity->getId(),
                    ":{$associationSuffix}_id" => $object->getId(),
                ]);
            }
        }
    }

    /**
     * Methode to delete all association data from entity.
     * @param string $association Association name to delete.
     * @param ComplexEntity $entity Entity from which the association data should be delete from.
     * @return void
     */
    private function deleteAssociationsData(string $association, ComplexEntity $entity): void
    {
        // Variables initialization.
        $tableSuffix = $this->getTable() !== "series" ? substr($this->getTable(), 0, -1) : "series";

        // Query.
        $query = "DELETE FROM `{$this->getTable()}_{$association}` WHERE `{$tableSuffix}_id` = :{$tableSuffix}_id";

        // Prepare query.
        $sth = $this->getDatabase()->prepare($query);

        // Execute query.
        $sth->execute([
            ":{$tableSuffix}_id" => $entity->getId()
        ]);
    }

    /**
     * Method to update all association for the class.
     * @param ComplexEntity $entity Entity from which the associations are updated.
     * @return void
     */
    private function updateAssociations(ComplexEntity $entity): void
    {
        foreach ($this->getAssociations() as $association => $multiple) {
            if ($multiple)
                $this->updateAssociationsData($association, $entity);
        }
    }

    /**
     * Method to update a specific assocation.
     * @param string $association Association to update.
     * @param ComplexEntity $entity Entity to update association.
     * @return void
     */
    private function updateAssociationsData(string $association, ComplexEntity $entity): void
    {
        $this->deleteAssociationsData($association, $entity);
        $this->insertAssociationsData($association, $entity);
    }
}