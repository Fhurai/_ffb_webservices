<?php

/**
 * Connection class.
 */
class Connection
{
    /**
     * Php Database Object.
     * @var PDO
     */
    private static ?PDO $db = null; // Declare static property

    /**
     * Label of connection type.
     * @var string
     */
    private string $typeConnection;

    /**
     * User of connection
     * @var  string
     */
    private $user;

    /**
     * Get the database connection.
     * @param string $typeConnection
     * @param string $user
     * @return PDO
     * @throws FfbTableException
     */
    public static function getDatabase(string $typeConnection, string $user): PDO
    {
        // Check if the database connection is already established
        if(self::$db === NULL){
            // Create a new database connection if not already established
            self::$db = self::createDbConnection($typeConnection, $user);
        }
        // Return the database connection
        return self::$db;
    }

    /**
     * Create the database connection.
     * @param string $typeConnection
     * @param string $user
     * @return PDO
     * @throws FfbTableException
     */
    private static function createDbConnection(string $typeConnection, string $user): PDO
    {
        // Validate the connection type
        if (!in_array($typeConnection, ["main", "stats", "tests"])) {
            throw new FfbTableException("Unknown connection!");
        }

        // Validate the user
        if (!in_array($user, ["guest", "user", "admin"])) {
            throw new FfbTableException("Unknown user!");
        }

        // Check for unauthorized access
        if($user === "guest" && $typeConnection === "tests"){
            throw new FfbTableException("Acces unauthorized!");
        }

        // If connection type is known, then use config file.
        $configFile = include __DIR__ . "/../../config/config.php";

        try {
            // Creation of Php Database Object with provided data from config.
            return new PDO("mysql:host=" . $configFile["credentials"][$user]["host"] . ";dbname=" . $configFile["db"][$typeConnection], $configFile["credentials"][$user]["user"], $configFile["credentials"][$user]["password"]);
        } catch (PDOException $e) {
            // Exception caught, throw new exception with previous exception message.
            throw new FfbTableException($e->getMessage());
        }
    }

    /**
     * Debug method to print data.
     * @param mixed $data
     */
    public static function debug(mixed $data){
        echo "\n";
        var_dump($data);
    }

    /**
     * Debug and die method to print data and stop execution.
     * @param mixed $data
     */
    public static function dd(mixed $data){
        echo "\n";
        var_dump($data);
        die();
    }
}