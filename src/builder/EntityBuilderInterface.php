<?php

/**
 * Interface EntityBuilderInterface
 * 
 * Defines the methods required for a builder.
 */
interface EntityBuilderInterface
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
     * @param DateTime|string $creationDate
     * @return self
     */
    public function withCreationDate(DateTime|string $creationDate);

    /**
     * Adds an update date to the product.
     *
     * @param DateTime|string $updateDate
     * @return self
     */
    public function withUpdateDate(DateTime|string $updateDate);

    /**
     * Adds a delete date to the product.
     *
     * @param DateTime|string $deleteDate
     * @return self
     */
    public function withDeleteDate(DateTime|string $deleteDate);
}