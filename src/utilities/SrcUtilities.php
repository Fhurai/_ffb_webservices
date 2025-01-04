<?php

class SrcUtilities {

    /**
     * Method to generate getter function from property.
     * @param string $property Property to get.
     * @return string The getter function to call.
     */
    public static function gsFunction(string $prefix, string $property)
    {
        // Initialization of variable.
        $pos = -1;

        // If property begin with "is", this is a boolean who don't have getters beginning with "get".
        if (strpos($property, "is") !== false && strpos($property, "is") === 0 && $prefix === "get")
            $function = "";
        else
            $function = $prefix;

        // Property name is parsed as an array who is browsed.
        foreach (str_split($property) as $key => $character) {

            // If current character is "_" then this is not put into the return value.
            // The next character is converted to uppercase and put into the return value.
            // If current character is not "_", then current character is put into the return value.

            if ($character === "_") {
                $pos = $key;
            }

            if ($pos + 1 === $key) {
                $function .= strtoupper($character);
                $pos = -1;
            } else if ($pos === -1) {
                $function .= $character;
            }
        }

        // The generated getter function is returned.
        return $function;
    }

    /**
     * Method to generate table name from class
     * @param string $class Class from which the table is generated.
     * @return string Table name.
     */
    public static function getTableName(string $class, bool $singular = true){
        // Initialization of variables.
        $pos = -1;
        $tableName = "";

        foreach (str_split($class) as $key => $character) {

            // If current character is "_" then this is not put into the return value.
            // The next character is converted to uppercase and put into the return value.
            // If current character is not "_", then current character is put into the return value.

            if ($character === "_") {
                $pos = $key;
            }

            if ($pos + 1 === $key) {
                $tableName .= strtoupper($character);
                $pos = -1;
            } else if ($pos === -1) {
                $tableName .= $character;
            }
        }

        // The generated table name is returned.
        return $tableName .= ($singular ? "s" : "") . "Table";
    }
}