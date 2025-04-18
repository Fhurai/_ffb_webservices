<?php

/**
 * Class FfbException
 *
 * Base exception for all FFB-related errors.
 *
 * @package Exceptions
 */
class FfbException extends Exception
{
    /**
     * FfbException constructor.
     *
     * @param string         $message  Error message
     * @param int            $code     HTTP status or error code (default 500)
     * @param Throwable|null $previous Previous exception for chaining
     */
    public function __construct(string $message = "", int $code = 500, Throwable $previous = null)
    {
        parent::__construct($message, $code, $previous);
    }
}
