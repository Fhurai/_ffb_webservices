<?php

require_once __DIR__ . "/../entity/Parameters.php";

abstract class ParametersTable
{
    /**
     *
     * @var PDO
     */
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

    /** @var string The DB table (without backticks) */
    protected const TABLE_NAME = '';

    /** @var string The fully‑qualified entity class to hydrate */
    protected const ENTITY_CLASS = '';

    /** The PK column */
    protected const PRIMARY_KEY = 'id';

    /**
     * @return string
     */
    private function getBaseSelect(): string
    {
        return 'SELECT * FROM `' . static::TABLE_NAME . '`';
    }

    public function get(int $id): mixed
    {
        $sql   = $this->getBaseSelect() . ' WHERE `' . static::PRIMARY_KEY . '` = :id';
        $rows  = $this->executeQuery($sql, [':id' => $id]);
        return $this->parseEntity($rows[0]);
    }

    public function findAll(array $args): array
    {
        $sql    = $this->getBaseSelect();
        $values = [];

        if (!empty($args['search'])) {
            $sub = $this->findSearchedBy($args['search'], false);
            $sql .= ' WHERE ' . substr($sub, strpos($sub, 'WHERE') + 6);
            foreach ($args['search'] as $k => $v) {
                $values[":{$k}"] = str_replace("'", '', explode(' ', $v)[0]);
            }
        }

        if (!empty($args['order'])) {
            $sub = $this->findOrderedBy($args['order'], false);
            $sql .= ' ' . substr($sub, strpos($sub, 'ORDER BY'));
        }

        if (!empty($args['limit'])) {
            $sub = $this->findLimitedBy($args['limit'], false);
            $sql .= ' ' . substr($sub, strpos($sub, 'LIMIT'));
        }

        $rows = $this->executeQuery($sql, $values);
        if (empty($rows)) {
            throw new FfbTableException(
                'No ' . static::TABLE_NAME . ' found matching the specified criteria.'
            );
        }
        return $this->parseEntities($rows);
    }

    public function findSearchedBy(array $args, bool $execute = true): mixed
    {
        if (empty($args)) {
            throw new FfbTableException('No search arguments provided!');
        }
        $sql    = $execute ? $this->getBaseSelect() : '';
        $values = [];

        $cols = $this->getTableColumns(static::TABLE_NAME);
        foreach ($args as $col => $_) {
            if (!in_array($col, $cols, true)) {
                throw new FfbTableException("Invalid column name: '$col'");
            }
        }

        $conds = [];
        foreach ($args as $col => $val) {
            if (str_contains($val, '%')) {
                $conds[]         = "$col LIKE :$col";
                $values[":$col"] = $val;
            } elseif (preg_match('/[<>=!]/', $val, $m)) {
                [$op, $v]        = explode(' ', $val, 2);
                $conds[]         = "$col $op :$col";
                $values[":$col"] = str_replace("'", '', $v);
            } else {
                $conds[]         = "$col = :$col";
                $values[":$col"] = $val;
            }
        }

        if ($conds) {
            $sql .= ' WHERE ' . implode(' AND ', $conds);
        }

        if (!$execute) {
            return $sql;
        }

        $rows = $this->executeQuery($sql, $values);
        if (empty($rows)) {
            throw new FfbTableException(
                'No ' . static::TABLE_NAME . ' found matching the search criteria.'
            );
        }
        return $this->parseEntities($rows);
    }

    public function findOrderedBy(array $args, bool $execute = true): mixed
    {
        if (empty($args)) {
            throw new FfbTableException('No order arguments provided!');
        }
        $sql   = $execute ? $this->getBaseSelect() : '';
        $clauses = [];
        $cols    = $this->getTableColumns(static::TABLE_NAME);

        foreach ($args as $col => $dir) {
            if (!in_array($col, $cols, true)) {
                throw new FfbTableException("Invalid column name: '$col'");
            }
            if (!in_array(strtoupper($dir), ['ASC', 'DESC'], true)) {
                throw new FfbTableException("Invalid order direction: '$dir'");
            }
            $clauses[] = "$col $dir";
        }

        $sql .= ' ORDER BY ' . implode(', ', $clauses);

        if (!$execute) {
            return $sql;
        }

        $rows = $this->executeQuery($sql);
        if (empty($rows)) {
            throw new FfbTableException(
                'No ' . static::TABLE_NAME . ' found matching the order criteria.'
            );
        }
        return $this->parseEntities($rows);
    }

    public function findLimitedBy(array $args, bool $execute = true): mixed
    {
        if (!isset($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException('Invalid or missing limit value!');
        }
        $limit  = (int)$args['limit'];
        $sql    = $execute
                ? $this->getBaseSelect() . " LIMIT $limit"
                : "LIMIT $limit";

        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException('Invalid offset value!');
            }
            $sql .= ' OFFSET ' . (int)$args['offset'];
        }

        if (!$execute) {
            return $sql;
        }

        $rows = $this->executeQuery($sql);
        if (empty($rows)) {
            throw new FfbTableException(
                'No ' . static::TABLE_NAME . ' found matching the limit criteria.'
            );
        }
        return $this->parseEntities($rows);
    }

    /**
     * Convert a database row into a corresponding entity object.
     * @param array $row An associative array representing a database row.
     * @return mixed The entity object corresponding to the row.
     */
    abstract protected function parseEntity(array $row);

    /**
     * Execute a query with the provided values.
     * @param string $query The SQL query to execute.
     * @param array $values The values to bind to the query.
     * @return array The query results.
     * @throws FfbTableException If no data is found or a PDOException occurs.
     */
    protected function executeQuery(string $query, array $values = []): array
    {
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

    /**
     * Parse multiple database rows into an array of entity objects.
     * @param array $rows The database rows.
     * @return array Array of entity objects.
     */
    protected function parseEntities(array $rows): array
    {
        return array_map([$this, 'parseEntity'], $rows);
    }

    /**
     * Get valid column names for the specified table.
     * @param string $tableName The table name.
     * @return array List of valid column names.
     * @throws FfbTableException If the query fails.
     */
    protected function getTableColumns(string $tableName): array
    {
        try {
            $stmt = $this->connection->prepare("
            SELECT COLUMN_NAME
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_SCHEMA = DATABASE()
              AND TABLE_NAME = :table
        ");
            $stmt->execute([':table' => $tableName]);
            return $stmt->fetchAll(PDO::FETCH_COLUMN);
        } catch (PDOException $e) {
            throw new FfbTableException("Failed to fetch table columns: " . $e->getMessage());
        }
    }
}
