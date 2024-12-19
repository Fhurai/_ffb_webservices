<?php

/**
 * Abstract class Tests
 */
abstract class Tests
{

    /**
     * Array of tests done.
     * @var array
     */
    private array $checks;

    /**
     * Implied constructor.
     */
    public function __construct()
    {
        $this->checks = [];
    }

    /**
     * Method to stock result of one equals test.
     * @param string $subject Subject of test.
     * @param string $expected Expected result.
     * @param string $actual Actual result.
     * @return void
     */
    public function addEqualsCheck(string $subject, mixed $expected, mixed $actual): void
    {
        $this->checks[$subject] = $actual === $expected;
    }

    /**
     * Method to stock result of one notEquals test.
     * @param string $subject Subject of test.
     * @param string $expected Expected result.
     * @param string $actual Actual result.
     * @return void
     */
    public function addNotEqualsCheck(string $subject, mixed $expected, mixed $actual): void
    {
        $this->checks[$subject] = $actual !== $expected;
    }

    /**
     * Getter Checks as array
     * @return array Checks Array.
     */
    public function getChecksArray(): array
    {
        return $this->checks;
    }

    /**
     * Getter Checks as string.
     * @return string
     */
    public function getChecksString(): string
    {
        return json_encode($this->checks);
    }

    /**
     * Method to get indication if test suite is verified or not.
     * @return bool Indication if test suite is verified or not.
     */
    public function testCheck(): bool
    {
        foreach ($this->checks as $actual) {
            if (!$actual)
                return false;
        }
        return true;
    }
}