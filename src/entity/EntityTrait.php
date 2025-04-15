<?php

trait EntityTrait {
    /**
     * Creates a new instance of the class.
     * @return static
     */
    public static function getNewObject(): static {
        return new static();
    }
}
