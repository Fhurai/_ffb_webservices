<?php

if (file_exists("../exceptions/FfbTableException.php"))
    require_once "../exceptions/FfbTableException.php";
else if (file_exists("../src/exceptions/FfbTableException.php"))
    require_once "../src/exceptions/FfbTableException.php";

if (file_exists("../../src/entity/User.php"))
    require_once "../../src/entity/User.php";

if (file_exists("../../src/entity/Author.php"))
    require_once "../../src/entity/Author.php";

if (file_exists("../../src/entity/Fandom.php"))
    require_once "../../src/entity/Fandom.php";

if (file_exists("../../src/entity/Language.php"))
    require_once "../../src/entity/Language.php";

if (file_exists("../../src/entity/Tag.php"))
    require_once "../../src/entity/Tag.php";

if (file_exists("../../src/entity/Character.php"))
    require_once "../../src/entity/Character.php";

if (file_exists("../../src/entity/Relation.php"))
    require_once "../../src/entity/Relation.php";

if (file_exists("../../src/entity/Fanfiction.php"))
    require_once "../../src/entity/Fanfiction.php";

if (file_exists("../../src/entity/Link.php"))
    require_once "../../src/entity/Link.php";

if (file_exists("../../src/entity/Series.php"))
    require_once "../../src/entity/Series.php";

/**
 * Connection class.
 */
class Connection
{

    /**
     * Php Database Object.
     * @var PDO
     */
    private PDO $db;
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
        static $dbInstances = [];

        $key = $typeConnection . '_' . $user;

        if (!isset($dbInstances[$key])) {
            $dbInstances[$key] = self::createDbConnection($typeConnection, $user);
        }

        return $dbInstances[$key];
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
        if (!in_array($typeConnection, ["main", "stats", "tests"])) {
            throw new FfbTableException("Unknown connection!");
        }

        if (!in_array($user, ["guest", "user", "admin"])) {
            throw new FfbTableException("Unknown user!");
        }

        // If connection type is known, then use config file.
        if (file_exists("../config/config.php"))
            $configFile = include "../config/config.php";
        else if (file_exists("../../config/config.php"))
            $configFile = include "../../config/config.php";

        try {
            // Creation of Php Database Object with provided data from config.
            return new PDO("mysql:host=" . $configFile["credentials"][$user]["host"] . ";dbname=" . $configFile["db"][$typeConnection], $configFile["credentials"][$user]["user"], $configFile["credentials"][$user]["password"]);
        } catch (PDOException $e) {
            // Exception caught, throw new exception with previous exception message.
            throw new FfbTableException($e->getMessage());
        }
    }
}