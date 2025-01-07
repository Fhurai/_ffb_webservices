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
     * Table name.
     * @var 
     */
    private string $table;
    /**
     * Array of columns names.
     * @var 
     */
    private array $columns;
    /**
     * Label of connection type.
     * @var string
     */
    private string $typeConnection;

    /**
     * Constructor.
     * @param string $typeConnection Connection to use [main/stats/tests].
     */
    public function __construct(string $typeConnection)
    {
        if (in_array($typeConnection, ["main", "stats", "tests"])) {

            // Set the type of connection.
            $this->typeConnection = $typeConnection;

            // If connection type is known, then use config file.
            if (file_exists("../config/config.php"))
                $configFile = include "../config/config.php";
            else if (file_exists("../../config/config.php"))
                $configFile = include "../../config/config.php";

            try {

                // Creation of Php Database Object with provided data from config.
                $this->db = new PDO("mysql:host=" . $configFile["credentials"]["host"] . ";dbname=" . $configFile["db"][$typeConnection], $configFile["credentials"]["user"], $configFile["credentials"]["password"]);
            } catch (PDOException $e) {

                // Exception caught, throw new exception with previous exception message.
                throw new FfbTableException($e->getMessage());
            }

            // Auto set of name of table.
            $this->setTable($this->getNameTable());

            // Auto set columns of table.
            $this->setColumns($this->getPropertiesColumns());
        } else {

            // Unknown connection, throw exception.
            throw new FfbTableException("Unknown connection!");
        }
    }

    /**
     * Getter Database.
     * @return PDO Database.
     */
    protected function getDatabase(): PDO
    {
        return $this->db;
    }

    /**
     * Method to call in children class to set table name.
     * @return string Table name.
     */
    protected function getNameTable(): string
    {
        return "";
    }

    /**
     * Getter Table name.
     * @return string Table name.
     */
    protected function getTable(): string
    {
        return $this->table;
    }

    /**
     * Setter Table name.
     * @param string $table new Table name.
     * @return void
     */
    protected function setTable(string $table): void
    {
        $this->table = $table;
    }

    /**
     * Getter Columns names.
     * @return array Columns names.
     */
    protected function getColumns(): array
    {
        return $this->columns;
    }

    /**
     * Getter Columns names as string.
     * @return string Columns names.
     */
    protected function getColumnsSelect(): string
    {
        return implode(", ", $this->getColumns());
    }

    /**
     * Setter Columns names.
     * @param array $columns New array of Columns names.
     * @return void
     */
    protected function setColumns(array $columns): void
    {
        $this->columns = $columns;
    }

    /**
     * Getter TypeConnection.
     * @return string TypeConnection.
     */
    protected function getTypeConnection(): string
    {
        return $this->typeConnection;
    }

    /**
     * Getter PropertyColumns.
     * @return array PropertyColumns.
     */
    protected function getPropertiesColumns(): array
    {
        $propertiesColumns = [];

        switch ($this->table) {
            case "actions":
            case "ratings":
            case "tag_types":
            case "scores":
                $propertiesColumns = ["id", "name"];
                break;
            case "users":
                $propertiesColumns = User::getProperties();
                break;
            case "authors":
                $propertiesColumns = Author::getProperties();
                break;
            case "fandoms":
                $propertiesColumns = Fandom::getProperties();
                break;
            case "languages":
                $propertiesColumns = Language::getProperties();
                break;
            case "tags":
                $propertiesColumns = Tag::getProperties();
                break;
            case "characters":
                $propertiesColumns = Character::getProperties();
                break;
            case "relations":
                $propertiesColumns = Relation::getProperties();
                break;
            case "fanfictions":
                $propertiesColumns = Fanfiction::getProperties();
                break;
            case "links":
                $propertiesColumns = Link::getProperties();
                break;
            case "series":
                $propertiesColumns = Series::getProperties();
                break;
        }

        return $propertiesColumns;
    }
}