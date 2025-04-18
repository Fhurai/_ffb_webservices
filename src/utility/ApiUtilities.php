<?php

require_once __DIR__ . '/../../vendor/autoload.php';

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

/**
 * Class ApiUtilities
 *
 * A utility class for handling HTTP responses, CORS headers, and JWT operations in APIs.
 * Provides methods to:
 * - Send standardized HTTP status codes with JSON payloads.
 * - Manage Cross-Origin Resource Sharing (CORS) headers.
 * - Decode JWT tokens and extract user/database authorization details.
 *
 * @package _ffb_webservices\src\utilities
 */
class ApiUtilities
{
    /**
     * Sends a 200 OK response with optional JSON data.
     * - If $values is empty, terminates the script without output.
     *
     * @param object|string|array|null $values Data to encode as JSON (e.g., an array or object).
     */
    public static function httpOk(object|string|array|null $values)
    {
        http_response_code(200);
        if ($values !== "") {
            echo json_encode($values);
        } else {
            exit;
        }
    }

    /**
     * Sends a 201 Created response with a JSON-encoded entity (e.g., after resource creation).
     * Terminates the script after sending the response.
     *
     * @param Entity $entity The entity to include in the response (e.g., a newly created record).
     */
    public static function httpCreated(Entity $entity)
    {
        http_response_code(201);
        echo json_encode($entity);
        exit;
    }

    /**
     * Sends a 204 No Content response (successful operation with no return data).
     * Terminates the script immediately.
     */
    public static function httpNoContent()
    {
        http_response_code(204);
        exit;
    }

    /**
     * Sends a 400 Bad Request response with an error message.
     * Used for client-side input validation failures.
     *
     * @param string $message Descriptive error message (e.g., "Invalid input format").
     */
    public static function httpBadRequest(string $message)
    {
        http_response_code(400);
        echo json_encode(['error' => $message]);
        exit;
    }

    /**
     * Sends a 401 Unauthorized response (missing or invalid authentication credentials).
     *
     * @param string $message Error message (e.g., "Authentication required").
     */
    public static function httpUnauthorized(string $message)
    {
        http_response_code(401);
        echo json_encode(['error' => $message]);
        exit;
    }

    /**
     * Sends a 403 Forbidden response (valid credentials but insufficient permissions).
     *
     * @param string $message Error message (e.g., "Access denied").
     */
    public static function httpForbidden(string $message)
    {
        http_response_code(403);
        echo json_encode(['error' => $message]);
        exit;
    }

    /**
     * Sends a 404 Not Found response (requested resource does not exist).
     *
     * @param string $message Error message (e.g., "User not found").
     */
    public static function httpNotFound(string $message)
    {
        http_response_code(404);
        echo json_encode(['error' => $message]);
        exit;
    }

    /**
     * Sends a 405 Method Not Allowed response (unsupported HTTP method).
     *
     * @param string $message Error message (e.g., "GET method not supported").
     */
    public static function httpMethodNotAllowed(string $message)
    {
        http_response_code(405);
        echo json_encode(['error' => $message]);
        exit;
    }

    /**
     * Sends a 500 Internal Server Error response (unexpected server-side error).
     *
     * @param string $message Error message (e.g., "Database connection failed").
     */
    public static function httpInternalServerError(string $message)
    {
        http_response_code(500);
        echo json_encode(['error' => $message]);
        exit;
    }

    /**
     * Sends a 503 Service Unavailable response (temporary server maintenance or overload).
     *
     * @param string $message Error message (e.g., "Service temporarily unavailable").
     */
    public static function httpServiceUnavailable(string $message)
    {
        http_response_code(503);
        echo json_encode(['error' => $message]);
        exit;
    }

    /**
     * Extracts the database name from a decoded JWT claim.
     * - If the database name starts with "ffb_", returns the substring after the prefix.
     * - Example: "ffb_customers" → "customers".
     *
     * @param object $decodedJwt Decoded JWT payload (from decodeJWT()).
     * @return string Database name.
     */
    public static function getDatabaseName(object $decodedJwt): string
    {
        $db = $decodedJwt->data->db;
        return (strpos($db, "ffb_") !== false) ? explode('_', $db)[1] : $db;
    }

    /**
     * Determines the user's role from a decoded JWT claim.
     * - Checks the `isAdmin` boolean flag in the JWT.
     *
     * @param object $decodedJwt Decoded JWT payload.
     * @return string "admin" or "user".
     */
    public static function getUserRole(object $decodedJwt): string
    {
        return $decodedJwt->data->isAdmin ? "admin" : "user";
    }

    /**
     * Creates an authorized database handler instance based on JWT claims.
     * - Combines the database name and user role to instantiate a table class.
     *
     * @param object $decodedJwt Decoded JWT payload.
     * @param string $tableClass Name of the table class to instantiate (e.g., UserTable::class).
     * @return object Instance of the specified table class.
     */
    public static function getAuthorizedTable(object $decodedJwt, string $tableClass)
    {
        $db = self::getDatabaseName($decodedJwt);
        $role = self::getUserRole($decodedJwt);
        return new $tableClass($db, $role);
    }

    /**
     * Decodes a JWT token from the Authorization header.
     * - Validates the token using a secret key and algorithm from the config file.
     * - Sends a 401 Unauthorized response on failure (e.g., invalid token).
     *
     * @return mixed Decoded JWT payload or terminates script with an error.
     */
    public static function decodeJWT(): mixed
    {
        $token = self::getBearerToken();
        $config = require __DIR__ . "/../../config/config.php";

        try {
            if (!$token) {
                self::httpUnauthorized("Unauthorized: No token provided");
            }
            return JWT::decode(
                $token,
                new Key($config['token']['ffb_secret'], $config['token']['ffb_algorithm'])
            );
        } catch (Exception $e) {
            self::httpUnauthorized("Unauthorized: Invalid token");
        }
        return null;
    }

    /**
     * Extracts the Bearer token from the HTTP Authorization header.
     * - Supports Apache and Nginx server environments.
     *
     * @return string|null Token string or null if not found.
     */
    public static function getBearerToken(): ?string
    {
        $headers = null;
        if (isset($_SERVER['Authorization'])) {
            $headers = trim($_SERVER['Authorization']);
        } elseif (isset($_SERVER['HTTP_AUTHORIZATION'])) {
            $headers = trim($_SERVER['HTTP_AUTHORIZATION']);
        }

        if ($headers && preg_match('/Bearer\s(\S+)/', $headers, $matches)) {
            return $matches[1];
        }
        return null;
    }
}
