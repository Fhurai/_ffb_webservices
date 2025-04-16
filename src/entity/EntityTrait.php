<?php

trait EntityTrait {

    /**
     * Creates a new instance of the class.
     * @return static
     */
    public static function getNewObject(): static {
        return new static();
    }

    /**
     * Helper method to parse date values.
     * @param mixed $value Date value to parse.
     * @return DateTime|null
     */
    protected static function parseDate(mixed $value): ?DateTime {
        if (is_string($value) && !empty($value)) {
            return DateTime::createFromFormat("Y-m-d H:i:s", $value, new DateTimeZone("Europe/Paris"));
        }
        if (is_array($value) && !empty($value)) {
            return DateTime::createFromFormat("Y-m-d H:i:s.u", $value["date"], new DateTimeZone("Europe/Paris"));
        }
        return null;
    }

    /**
     * Gets all properties of the class (including parents).
     * @return array
     */
    public static function getProperties(): array {
        $reflect = new ReflectionClass(static::class);
        $properties = [];

        do {
            foreach ($reflect->getProperties() as $property) {
                $properties[] = $property->getName();
            }
        } while ($reflect = $reflect->getParentClass());

        return $properties;
    }
}
