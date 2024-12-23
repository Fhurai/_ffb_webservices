<?php

if (file_exists("../exceptions/FfbTableException.php"))
    require_once "../exceptions/FfbTableException.php";
else if (file_exists("../src/exceptions/FfbTableException.php"))
    require_once "../src/exceptions/FfbTableException.php";

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
            $configFile = include "../config/config.php";

            try {

                // Creation of Php Database Object with provided data from config.
                $this->db = new PDO("mysql:host=" . $configFile["credentials"]["host"] . ";dbname=" . $configFile["db"][$typeConnection], $configFile["credentials"]["user"], $configFile["credentials"]["password"]);
            } catch (PDOException $e) {

                // Exception caught, throw new exception with previous exception message.
                throw new FfbTableException($e->getMessage());
            }
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

    protected function getTypeConnection(): string
    {
        return $this->typeConnection;
    }

    protected function getPropertiesColumns(): array
    {
        $propertiesColumns = [];

        switch ($this->table) {
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

    protected function setPropertiesColumns(): void
    {
        $propertiesColumns = $this->getPropertiesColumns();

        $this->setColumns($propertiesColumns);
    }
}