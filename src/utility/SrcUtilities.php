<?php

/**
 * Class SrcUtilities
 *
 * A utility class providing reusable methods for common application tasks, including:
 * - String/function name generation (e.g., getter/setter methods).
 * - Database table name derivation from class names.
 * - HTTP parameter extraction (query, form, JSON input).
 * - Input filtering and categorization (search, order, limit parameters).
 *
 * @package _ffb_webservices\src\utilities
 */
class SrcUtilities
{

    /**
     * Generates a camelCase method name by combining a prefix (e.g., "get"/"set") and a property.
     * Handles underscores in the property name by converting the next character to uppercase.
     * Skips the prefix for boolean properties starting with "is" (e.g., "isActive" → "isActive()").
     *
     * Example:
     *   gsFunction("get", "user_name") → "getUserName"
     *   gsFunction("get", "is_valid") → "isValid" (prefix omitted for "is" boolean properties)
     *
     * @param  string $prefix   Prefix for the method (e.g., "get", "set").
     * @param  string $property Property name to convert (may include underscores).
     * @return string Combined camelCase method name.
     */
    public static function gsFunction(string $prefix, string $property)
    {
        // Logic to handle boolean properties starting with "is"
        $pos = -1;
        if (str_starts_with($property, "is") && $prefix === "get") {
            $function = "";
        } else {
            $function = $prefix;
        }

        // Process each character to replace underscores and build camelCase
        foreach (str_split($property) as $key => $character) {
            if ($character === "_") {
                $pos = $key; // Mark position to capitalize the next character
            } elseif ($pos + 1 === $key) {
                $function .= strtoupper($character);
                $pos = -1;
            } else {
                $function .= $character;
            }
        }

        return $function;
    }

    /**
     * Generates a database table name from a class name.
     * Converts underscores to camelCase and appends "Table" (with optional pluralization).
     * Example:
     *   getTableName("UserModel", true) → "UserModelsTable"
     *   getTableName("Order_Item", false) → "OrderItemTable"
     *
     * @param  string $class    Class name (may include underscores).
     * @param  bool   $singular If true, appends "s" before "Table" (e.g., "UsersTable").
     * @return string Generated table name in camelCase with "Table" suffix.
     */
    public static function getTableName(string $class, bool $singular = true)
    {
        $pos = -1;
        $tableName = "";

        // Process each character to replace underscores and build camelCase
        foreach (str_split($class) as $key => $character) {
            if ($character === "_") {
                $pos = $key;
            } elseif ($pos + 1 === $key) {
                $tableName .= strtoupper($character);
                $pos = -1;
            } else {
                $tableName .= $character;
            }
        }

        // Append "s" (if singular=true) and "Table"
        return $tableName . ($singular ? "s" : "") . "Table";
    }

    /**
     * Retrieves a query parameter from the URL.
     * Returns false if the parameter does not exist.
     *
     * @param  string $arg Name of the query parameter (e.g., "id").
     * @return string|bool Parameter value or false if not found.
     */
    public static function getQueryParameter(string $arg): string|bool
    {
        return $_GET[$arg] ?? false;
    }

    /**
     * Extracts and categorizes filter parameters from an input array.
     * Splits parameters into three groups based on prefixes:
     * - "search_": Parameters for search conditions.
     * - "order_": Parameters for sorting (e.g., "order_by=name").
     * - "limit_": Parameters for pagination (e.g., "limit_offset=10").
     *
     * Example:
     *   Input: ["search_name" => "Alice", "order_by" => "id"]
     *   Output: ["search" => ["name" => "Alice"], "order" => ["by" => "id"], "limit" => []]
     *
     * @param  array $input Associative array of parameters (e.g., $_REQUEST).
     * @return array Structured array with "search", "order", and "limit" keys.
     */
    public static function extractFilterParams($input)
    {
        $searchParams = [];
        $orderParams = [];
        $limitParams = [];

        foreach ($input as $key => $value) {
            if (str_starts_with($key, 'search_')) {
                if($value === "true" || $value === "false"){
                    $searchParams[substr($key, 7)] = $value === "true";
                }else{
                    $searchParams[substr($key, 7)] = $value;
                }
            } elseif (str_starts_with($key, 'order_')) {
                $orderParams[substr($key, 6)] = $value;
            } elseif (str_starts_with($key, 'limit_')) {
                $limitParams[substr($key, 6)] = $value;
            }
        }

        return [
            'search' => $searchParams,
            'order' => $orderParams,
            'limit' => $limitParams
        ];
    }

    /**
     * Retrieves a form parameter from POST data or JSON input.
     * Checks both $_POST and the request body (decoded as JSON).
     *
     * @param  string $arg Name of the parameter (e.g., "email").
     * @return mixed Parameter value or false if not found.
     */
    public static function getFormParameter(string $arg): mixed
    {
        // Check POST data first
        if (isset($_POST[$arg])) {
            return $_POST[$arg];
        }

        // Fallback to JSON input
        $data = json_decode(file_get_contents('php://input'), true);
        return $data[$arg] ?? false;
    }
}
