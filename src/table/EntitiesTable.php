<?php

require_once __DIR__ . "/../entity/Entity.php";

abstract class EntitiesTable
{
    private PDO $connection;

    public function __construct(string $typeConnection, string $user)
    {
        $this->connection = Connection::getDatabase($typeConnection, $user);
    }

    abstract public function get(int $id);

    abstract public function findSearchedBy(array $args, $execute = true): mixed;

    abstract public function findOrderedBy(array $args, $execute = true): mixed;

    abstract public function findLimitedBy(array $args, $execute = true): mixed;

    abstract public function findAll(array $args);

    abstract public function new();

    abstract public function create($entity): bool;

    abstract public function update($entity): bool;

    abstract public function save($entity): bool;

    abstract public function delete($entity): bool;

    abstract public function restore($entity): bool;

    abstract public function remove($entity): bool;

    abstract protected function parseEntity(array $row);

    protected function executeQuery(string $query, array $values){
        try {
            // Prepare and execute the query.
            $sth = $this->connection->prepare($query);
            $sth->execute($values);
            $rows = $sth->fetchAll(PDO::FETCH_ASSOC);

            if (!$rows) {
                // No data found, throw FfbTableException
                throw new FfbTableException("No data for arguments provided!", 404);
            } else {
                return $rows;
            }
        } catch (PDOException $e) {
            throw new FfbTableException($e->getMessage(), 500, $e);
        }
    }

    protected function parseEntities(array $rows): array
    {
        $entities = [];
        foreach ($rows as $row) {
            $entities[] = $this->parseEntity($row);
        }
        return $entities;
    }
}