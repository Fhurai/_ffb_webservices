<?php

class SqlExceptionManager extends Exception {
    private $sqlState;
    private $errorCode;
    private $errorMessage;
    private $command;
    private $user;
    private $table;
    private $field;
    private $key;
    private $duplicateValue;
private $keyName;
private $sqlSnippet;
private $database;

    public static function fromPDOException(PDOException $e): self {
        $errorInfo = $e->errorInfo;
        $instance = new self(
            $errorInfo[2],  // Error message
            (int)$errorInfo[1], // Driver-specific error code
            $e
        );

        $instance->sqlState = $errorInfo[0] ?? '';
        $instance->errorCode = (int)$errorInfo[1];
        $instance->errorMessage = $errorInfo[2];
        $instance->parseErrorMessage();

        return $instance;
    }

    protected function parseErrorMessage(): void {
        // Parse command (commande)
        preg_match("/commande '([^']+)'/i", $this->errorMessage, $commandMatches);
        $this->command = $commandMatches[1] ?? null;

        // Parse user (utilisateur)
        preg_match("/utilisateur: '([^']+)'/i", $this->errorMessage, $userMatches);
        $this->user = $userMatches[1] ?? null;

        // Parse table
        preg_match("/table '([^']+)'/i", $this->errorMessage, $tableMatches);
        $this->table = $tableMatches[1] ?? null;

        // Parse field (champ)
        preg_match("/champ '([^']+)'/i", $this->errorMessage, $fieldMatches);
        $this->field = $fieldMatches[1] ?? null;

        // Parse key
        preg_match("/clef '([^']+)'/i", $this->errorMessage, $keyMatches);
        $this->key = $keyMatches[1] ?? null;
    }

    // Getters
    public function getSqlState(): string {
        return $this->sqlState;
    }

    public function getErrorCode(): int {
        return $this->errorCode;
    }

    public function getErrorMessage(): string {
        return $this->errorMessage;
    }

    public function getCommand(): ?string {
        return $this->command;
    }

    public function getUser(): ?string {
        return $this->user;
    }

    public function getTable(): ?string {
        return $this->table;
    }

    public function getFormattedMessage(): string {
        $message = "SQL Error [{$this->sqlState}][{$this->errorCode}]: ";

        if ($this->errorCode === 1142) {
            $message .= sprintf(
                "Permission denied. User cannot create on table '%s'",
                $this->table
            );
        } else if($this->errorCode === 1146) {
            $message .= sprintf(
                "Table '%s' doesn't exist.",
                $this->table
            );
        } else if ($this->errorCode === 1451) {
            $message .= sprintf(
                "Cannot delete or update a parent row: a foreign key constraint fails on table '%s'.",
                $this->table
            );
        } else if ($this->errorCode === 1452) {
            $message .= sprintf(
                "Cannot add or update a child row: a foreign key constraint fails on table '%s'.",
                $this->table
            );
        } else if ($this->errorCode === 1062) {
            $message .= sprintf(
                "Duplicate entry '%s' for key '%s'.",
                $this->field,
                $this->key
            );
        } else if ($this->errorCode === 1044) {
            $message .= sprintf(
                "Access denied for user '%s'.",
                $this->user
            );
        } else if ($this->errorCode === 1046) {
            $message .= "No database selected.";
        } else if ($this->errorCode === 1049) {
            $message .= sprintf(
                "Unknown database '%s'.",
                $this->table
            );
        } else if ($this->errorCode === 1064) {
            $message .= sprintf(
                "Syntax error in SQL command: '%s'",
                $this->command
            );
        } else if ($this->errorCode === 1045) {
            $message .= sprintf(
                "Access denied for user '%s'.",
                $this->user
            );
        } else if ($this->errorCode === 1049) {
            $message .= sprintf(
                "Unknown database '%s'.",
                $this->table
            );
        } else if ($this->errorCode === 2002) {
            $message .= "Connection refused.";
        } else if ($this->errorCode === 2003) {
            $message .= "Connection timed out.";
        } else if ($this->errorCode === 2005) {
            $message .= "Unknown MySQL server host.";
        } else if ($this->errorCode === 2013) {
            $message .= "Lost connection to MySQL server.";
        } else if ($this->errorCode === 2014) {
            $message .= "Commands out of sync.";
        } else {
            $message .= $this->errorMessage;
        }

        return $message;
    }
}
