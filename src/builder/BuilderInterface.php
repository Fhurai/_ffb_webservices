<?php

/**
 * Interface BuilderInterface
 * 
 * Defines the methods required for a builder.
 */
interface BuilderInterface
{
    /**
     * Constructor for the builder.
     */
    public function __construct();

    /**
     * Resets the builder to its initial state.
     *
     * @return void
     */
    public function reset(): void;

    /**
     * Builds the product.
     *
     * @return mixed The built product.
     */
    public function build();

    /**
     * Adds a creation date to the product.
     *
     * @return self
     */
    public function withCreationDate(mixed $creationDate);

    /**
     * Adds an update date to the product.
     *
     * @return self
     */
    public function withUpdateDate(mixed $updateDate);

    /**
     * Adds a delete date to the product.
     *
     * @return self
     */
    public function withDeleteDate(mixed $deleteDate);
}