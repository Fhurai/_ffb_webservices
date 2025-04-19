<?php

class SqlExceptionManager extends Exception
{
    private $sqlState;
    private $errorCode;
    private $errorMessage;
    private $command;
    private $user;
    private $table;
    private $field;
    private $key;
    private $constraint;

    public static function fromPDOException(PDOException $e): self
    {
        $errorInfo = $e->errorInfo;
        $instance = new self(
            $errorInfo[2],  // Error message
            (int) $errorInfo[1], // Driver-specific error code
            $e
        );

        $instance->sqlState = $errorInfo[0] ?? '';
        $instance->errorCode = (int) $errorInfo[1];
        $instance->errorMessage = $errorInfo[2];
        $instance->parseErrorMessage();

        return $instance;
    }

    protected function parseErrorMessage(): void
    {
        preg_match("/commande '([^']+)'/i", $this->errorMessage, $commandMatches);
        $this->command = $commandMatches[1] ?? null;

        preg_match("/utilisateur: '([^']+)'/i", $this->errorMessage, $userMatches);
        $this->user = $userMatches[1] ?? null;

        preg_match("/table '([^']+)'/i", $this->errorMessage, $tableMatches);
        $this->table = $tableMatches[1] ?? null;

        preg_match("/champ '([^']+)'/i", $this->errorMessage, $fieldMatches);
        $this->field = $fieldMatches[1] ?? null;

        preg_match("/clef '([^']+)'/i", $this->errorMessage, $keyMatches);
        $this->key = $keyMatches[1] ?? null;

        preg_match("/constraint '([^']+)'/i", $this->errorMessage, $constraintMatches);
        $this->constraint = $constraintMatches[1] ?? null;
    }

    protected function getTranslateConstraint(): string
    {
        switch($this->constraint){
            case 'CHK_languages_abbreviation':
                return 'Language abbreviation is not exactly 2 characters.';
            default:
                return '';
        }
    }

    public function getSqlState(): string
    {
        return $this->sqlState;
    }

    public function getErrorCode(): int
    {
        return $this->errorCode;
    }

    public function getErrorMessage(): string
    {
        return $this->errorMessage;
    }

    public function getCommand(): ?string
    {
        return $this->command;
    }

    public function getUser(): ?string
    {
        return $this->user;
    }

    public function getTable(): ?string
    {
        return $this->table;
    }

    public function getFormattedMessage(): string
    {
        $message = "SQL Error [{$this->sqlState}][{$this->errorCode}]: ";

        $errorMessages = [
            1142 => fn() => sprintf("Permission denied. User cannot create on table '%s'", $this->table),
            1146 => fn() => sprintf("Table '%s' doesn't exist.", $this->table),
            1451 => fn() => sprintf("Cannot delete or update a parent row: a foreign key constraint fails on table '%s'.", $this->table),
            1452 => fn() => sprintf("Cannot add or update a child row: a foreign key constraint fails on table '%s'.", $this->table),
            1062 => fn() => sprintf("Duplicate entry '%s' for key '%s'.", $this->field, $this->key),
            1044 => fn() => sprintf("Access denied for user '%s'.", $this->user),
            1045 => fn() => sprintf("Access denied for user '%s'.", $this->user),
            1046 => fn() => "No database selected.",
            1049 => fn() => sprintf("Unknown database '%s'.", $this->table),
            1064 => fn() => sprintf("Syntax error in SQL command: '%s'", $this->command),
            2002 => fn() => "Connection refused.",
            2003 => fn() => "Connection timed out.",
            2005 => fn() => "Unknown MySQL server host.",
            2013 => fn() => "Lost connection to MySQL server.",
            2014 => fn() => "Commands out of sync.",
            3819 => fn() => sprintf("Constraint not respected: %s", $this->getTranslateConstraint()),
        ];

        // Safely invoke the closure if the error code is in the array
        if (isset($errorMessages[$this->errorCode])) {
            $message .= $errorMessages[$this->errorCode]();
        } else {
            $message .= $this->errorMessage;
        }

        return $message;
    }
}
