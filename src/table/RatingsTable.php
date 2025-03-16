<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/ParametersTable.php";
require_once __DIR__ . "/../entity/Rating.php";

/**
 * Class RatingsTable
 * Handles operations related to the `ratings` table in the database.
 */
class RatingsTable extends ParametersTable
{
    private PDO $connection;

    /**
     * RatingsTable constructor.
     * @param string $typeConnection Type of database connection.
     * @param string $user Database user.
     */
    public function __construct(string $typeConnection, string $user)
    {
        $this->connection = Connection::getDatabase($typeConnection, $user);
    }

    /**
     * Get a rating by its ID.
     * @param int $id Rating ID.
     * @return Rating The rating object.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function get(int $id): Rating
    {
        try {
            // Prepare the SQL query to fetch the rating by ID.
            $query = "SELECT * FROM `ratings` WHERE `id` = :id";
            $sth = $this->connection->prepare($query);
            $sth->execute([":id" => $id]);

            // Fetch the result of the query.
            $rows = $sth->fetch(PDO::FETCH_ASSOC);

            if (!$rows) {
                // No data found, throw FfbTableException
                throw new FfbTableException("No data for rating n°" . $id, 404);
            } else {
                // Data found, return the object with that data.
                return $this->parseRating($rows);
            }
        } catch (PDOException $e) {
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }

    /**
     * Find ratings based on search criteria.
     * @param array $args Search arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findSearchedBy(array $args, $execute = true): mixed
    {
        try {
            $values = [];
            $first = true;
            $query = $execute ? "SELECT * FROM `ratings`" : "";

            // Build the query based on the provided arguments.
            foreach ($args as $key => $value) {
                if ($first) {
                    $query .= " WHERE ";
                    $first = false;
                } else {
                    $query .= " AND ";
                }

                // Handle different types of conditions.
                if ((strpos($value, "<") !== false) || (strpos($value, ">") !== false) || (strpos($value, "!") !== false) || (strpos($value, "%"))) {
                    $array = explode(' ', $value);
                    $query .= " " . $key . " " . $array[0] . " :" . $key;
                    $values[":" . $key] = str_replace("'", "", $array[1]);
                } else {
                    $query .= " " . $key . " = :" . $key;
                    $values[":" . $key] = $value;
                }
            }

            if (!$execute) {
                return $query;
            }

            // Prepare and execute the query.
            $sth = $this->connection->prepare($query);
            $sth->execute($values);
            $rows = $sth->fetchAll(PDO::FETCH_ASSOC);

            if (!$rows) {
                // No data found, throw FfbTableException
                throw new FfbTableException("No data for arguments provided!", 404);
            } else {
                // Data found, return the list of Rating objects.
                $ratings = [];
                foreach ($rows as $row) {
                    $ratings[] = $this->parseRating($row);
                }
                return $ratings;
            }
        } catch (PDOException $e) {
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }

    /**
     * Find ratings based on order criteria.
     * @param array $args Order arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findOrderedBy(array $args, $execute = true): mixed
    {
        try {
            $values = [];
            $first = true;
            $query = $execute ? "SELECT * FROM `ratings`" : "";

            // Build the ORDER BY clause based on the provided arguments.
            foreach ($args as $key => $value) {
                if ($first) {
                    $query .= " ORDER BY " . $key . " " . $value;
                } else {
                    $query .= "OFFSET " . $key . " " . $value;
                }
            }

            if (!$execute) {
                return $query;
            }

            // Prepare and execute the query.
            $sth = $this->connection->prepare($query);
            $sth->execute($values);
            $rows = $sth->fetchAll(PDO::FETCH_ASSOC);

            if (!$rows) {
                // No data found, throw FfbTableException
                throw new FfbTableException("No data for arguments provided!", 404);
            } else {
                // Data found, return the list of Rating objects.
                $ratings = [];
                foreach ($rows as $row) {
                    $ratings[] = $this->parseRating($row);
                }
                return $ratings;
            }
        } catch (PDOException $e) {
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }

    /**
     * Find ratings based on limit criteria.
     * @param array $args Limit arguments.
     * @param bool $execute Whether to execute the query or return it as a string.
     * @return mixed The query string or the result set.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findLimitedBy(array $args, $execute = true): mixed
    {
        try {
            $values = [];
            $query = $execute ? "SELECT * FROM `ratings`" : "";

            // Add the LIMIT clause to the query.
            if (!empty($args) && is_array($args) && array_key_exists("limit", $args)) {
                $query .= " LIMIT " . $args["limit"];
            } else {
                throw new FfbTableException("No limit provided!");
            }

            // Add the OFFSET clause to the query if provided.
            if (!empty($args) && is_array($args) && array_key_exists("offset", $args)) {
                $query .= ", " . $args["offset"];
            }

            if (!$execute) {
                return $query;
            }

            // Prepare and execute the query.
            $sth = $this->connection->prepare($query);
            $sth->execute($values);
            $rows = $sth->fetchAll(PDO::FETCH_ASSOC);

            if (!$rows) {
                // No data found, throw FfbTableException
                throw new FfbTableException("No data for arguments provided!", 404);
            } else {
                // Data found, return the list of Rating objects.
                $ratings = [];
                foreach ($rows as $row) {
                    $ratings[] = $this->parseRating($row);
                }
                return $ratings;
            }
        } catch (PDOException $e) {
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }

    /**
     * Find all ratings based on specified arguments.
     * @param array $args Search, order, and limit arguments.
     * @return array Array of Rating objects.
     * @throws FfbTableException If no data is found or a PDO exception occurs.
     */
    public function findAll(array $args): array
    {
        try {
            $values = [];
            $query = "SELECT * FROM `ratings`";

            // Append the conditions, order, and limit clauses to the query.
            if (array_key_exists("search", $args)) {
                $query .= $this->findSearchedBy($args["search"], false);
                foreach(array_keys($args["search"]) as $key){
                    $array = explode(' ', $args["search"][$key]);
                    $values[":" . $key] = str_replace("'", "", $array[1]);
                }
            }

            if (array_key_exists("order", $args)) {
                $query .= $this->findOrderedBy($args["order"], false);
            }

            if (array_key_exists("limit", $args)) {
                $query .= $this->findLimitedBy($args["limit"], false);
            }

            // Prepare and execute the query.
            $sth = $this->connection->prepare($query);
            $sth->execute($values);
            $rows = $sth->fetchAll(PDO::FETCH_ASSOC);

            if (!$rows) {
                // No data found, throw FfbTableException
                throw new FfbTableException("No data for arguments provided!", 404);
            } else {
                // Data found, return the list of Rating objects.
                $ratings = [];
                foreach ($rows as $row) {
                    $ratings[] = $this->parseRating($row);
                }
                return $ratings;
            }
        } catch (PDOException $e) {
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }

    private function parseRating(array $row){
        return new Rating($row["id"], $row["name"]);
    }
}
