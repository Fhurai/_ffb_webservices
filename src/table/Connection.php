<?php

if (file_exists("../exceptions/FfbTableException.php"))
    require_once "../exceptions/FfbTableException.php";
else if (file_exists("../src/exceptions/FfbTableException.php"))
    require_once "../src/exceptions/FfbTableException.php";

class Connection
{

    private PDO $db;

    
    protected $table;
    protected $columns;

    public function __construct(string $typeConnection)
    {
        if (in_array($typeConnection, ["main", "stats", "tests"])) {
            $configFile = include "../config/config.php";

            try {
                $this->db = new PDO("mysql:host=" . $configFile["credentials"]["host"] . ";dbname=" . $configFile["db"][$typeConnection], $configFile["credentials"]["user"], $configFile["credentials"]["password"]);
            } catch (PDOException $e) {
                throw new FfbTableException($e->getMessage());
            }
        } else {
            throw new FfbTableException("Unknown connection!");
        }
    }

    protected function getDatabase(): PDO
    {
        return $this->db;
    }

    
    protected function getTable(): string {
        return $this->table;
    }
    
    protected function setTable(string $table): void{
        $this->table = $table;
    }

    protected function getColumns(): array{
        return $this->columns;
    }

    protected function getColumnsSelect(): string
    {
        return implode(", ", $this->getColumns());
    }

    protected function setColumns(array $columns): void{
        $this->columns = $columns;
    }
}