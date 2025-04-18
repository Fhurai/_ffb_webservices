<?php

/**
 * Connection class.
 * Manages the database connection.
 */
class Connection
{
    /**
     * Php Database Object.
     * @var PDO
     */
    private static ?PDO $db = null; // Declare static property

    protected static string $typeConnection = "";

    protected static string $user = "";

    /**
     * Get the database connection.
     * @param string $typeConnection The type of connection (main, stats, tests).
     * @param string $user The user of the connection (guest, user, admin).
     * @return PDO The PDO instance representing the database connection.
     * @throws FfbTableException If the connection type or user is invalid.
     */
    public static function getDatabase(string $typeConnection, string $user): PDO
    {
        // Check if the database connection is already established
        if (self::$db === null) {
            // Create a new database connection if not already established
            self::$db = self::createDbConnection($typeConnection, $user);
            self::$typeConnection = $typeConnection;
            self::$user = $user;
        }
        // Return the database connection
        return self::$db;
    }

    /**
     * Create the database connection.
     * @param string $typeConnection The type of connection (main, stats, tests).
     * @param string $user The user of the connection (guest, user, admin).
     * @return PDO The PDO instance representing the database connection.
     * @throws FfbTableException If the connection type or user is invalid, or if the connection fails.
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
        if ($user === "guest" && $typeConnection === "tests") {
            throw new FfbTableException("Acces unauthorized!");
        }

        // If connection type is known, then use config file.
        $configFile = require __DIR__ . "/../../config/config.php";

        try {
            // Creation of Php Database Object with provided data from config.
            return new PDO(
                "mysql:host=" . $configFile["credentials"][$user]["host"] .
                ";port=" . $configFile["credentials"][$user]["port"] .
                ";dbname=" . $configFile["db"][$typeConnection],
                $configFile["credentials"][$user]["user"],
                $configFile["credentials"][$user]["password"]
            );
        } catch (PDOException $e) {
            // Exception caught, throw new exception with previous exception message.
            throw new FfbTableException($e->getMessage());
        }
    }

    /**
     * Debug method to print data.
     * @param mixed $data The data to be printed.
     */
    public static function debug(mixed $data)
    {
        // Print a newline for better readability
        echo "\n";
        // Dump the data
        var_dump($data);
    }

    /**
     * Debug and die method to print data and stop execution.
     * @param mixed $data The data to be printed.
     */
    public static function dd(mixed $data): void
    {
        // Print a newline for better readability
        echo "\n";
        // Dump the data
        var_dump($data);
        // Stop the script execution
        die();
    }

    public static function getTypeConnect(): string
    {
        return self::$typeConnection;
    }

    public static function getUser(): string
    {
        return self::$user;
    }
}
