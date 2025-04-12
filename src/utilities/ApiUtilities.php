<?php

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

require_once __DIR__ . '/../entity/Entity.php';
require_once __DIR__ . '/../../vendor/autoload.php'; // Autoload dependencies

/**
 * Utility class for handling HTTP responses.
 */
class ApiUtilities
{
    /**
     * Sends a 200 OK response with optional JSON-encoded data.
     *
     * @param string|array|null $values Data to include in the response body.
     */
    public static function HttpOk(object|string|array|null $values){
        http_response_code(200); // Set HTTP status code to 200 (OK).
        if($values !== ""){ // Check if values are not empty.
            echo json_encode($values); // Encode and output the values as JSON.
        }else{
            exit; // Terminate the script if no values are provided.
        }
    }

    /**
     * Sends a 201 Created response with a JSON-encoded entity.
     *
     * @param Entity $entity The entity to include in the response body.
     */
    public static function HttpCreated(Entity $entity){
        http_response_code(201); // Set HTTP status code to 201 (Created).
        echo json_encode($entity); // Encode and output the entity as JSON.
        exit; // Terminate the script after sending the response.
    }

    /**
     * Sends a 204 No Content response and terminates the script.
     */
    public static function HttpNoContent(){
        http_response_code(204); // Set HTTP status code to 204 (No Content).
        exit; // Terminate the script as no content is returned.
    }

    /**
     * Sends a 400 Bad Request response with an error message.
     *
     * @param string $message The error message to include in the response body.
     */
    public static function HttpBadRequest(string $message){
        http_response_code(400); // Set HTTP status code to 400 (Bad Request).
        echo json_encode(['error' => $message]); // Encode and output the error message as JSON.
        exit; // Terminate the script after sending the response.
    }

    /**
     * Sends a 401 Unauthorized response with an error message.
     *
     * @param string $message The error message to include in the response body.
     */
    public static function HttpUnauthorized(string $message){
        http_response_code(401); // Set HTTP status code to 401 (Unauthorized).
        echo json_encode(['error' => $message]); // Encode and output the error message as JSON.
        exit; // Terminate the script after sending the response.
    }

    /**
     * Sends a 403 Forbidden response with an error message.
     *
     * @param string $message The error message to include in the response body.
     */
    public static function HttpForbidden(string $message){
        http_response_code(403); // Set HTTP status code to 403 (Forbidden).
        echo json_encode(['error' => $message]); // Encode and output the error message as JSON.
        exit; // Terminate the script after sending the response.
    }

    /**
     * Sends a 404 Not Found response with an error message.
     *
     * @param string $message The error message to include in the response body.
     */
    public static function HttpNotFound(string $message){
        http_response_code(404); // Set HTTP status code to 404 (Not Found).
        echo json_encode(['error' => $message]); // Encode and output the error message as JSON.
        exit; // Terminate the script after sending the response.
    }

    /**
     * Sends a 405 Method Not Allowed response with an error message.
     *
     * @param string $message The error message to include in the response body.
     */
    public static function HttpMethodNotAllowed(string $message){
        http_response_code(405); // Set HTTP status code to 405 (Method Not Allowed).
        echo json_encode(['error' => $message]); // Encode and output the error message as JSON.
        exit; // Terminate the script after sending the response.
    }

    /**
     * Sends a 500 Internal Server Error response with an error message.
     *
     * @param string $message The error message to include in the response body.
     */
    public static function HttpInternalServerError(string $message){
        http_response_code(500); // Set HTTP status code to 500 (Internal Server Error).
        echo json_encode(['error' => $message]); // Encode and output the error message as JSON.
        exit; // Terminate the script after sending the response.
    }

    /**
     * Sends a 503 Service Unavailable response with an error message.
     *
     * @param string $message The error message to include in the response body.
     */
    public static function HttpServiceUnavailable(string $message){
        http_response_code(503); // Set HTTP status code to 503 (Service Unavailable).
        echo json_encode(['error' => $message]); // Encode and output the error message as JSON.
        exit; // Terminate the script after sending the response.
    }

    /**
     * Decodes a JWT token from the Authorization header.
     *
     * @return mixed The decoded JWT payload or null if not found.
     */
    public static function decodeJWT(): mixed {
        // Middleware to validate JWT
        $token = static::getBearerToken(); // Function to extract token from headers
        $configFile = include __DIR__ . "/../../config/config.php";

        try {
            if ($token === null) {
                http_response_code(401);
                echo json_encode(["message" => "Unauthorized: No token provided"]);
                exit;
            }
            $decoded = JWT::decode($token, new Key($configFile['token']['ffb_secret'], $configFile['token']['ffb_algorithm'])); // Decode the token using the secret key and algorithm
            return $decoded; // Return the decoded token
        } catch (Exception $e) {
            http_response_code(401);
            echo json_encode(["message" => "Unauthorized"]);
            exit;
        }
    }

    /**
     * Extracts the Bearer token from the Authorization header.
     *
     * @return string|null The Bearer token or null if not found.
     */
    public static function getBearerToken() {
        $headers = null;

        // Check for the Authorization header in different server environments
        if (isset($_SERVER['Authorization'])) {
            $headers = trim($_SERVER['Authorization']);
        } elseif (isset($_SERVER['HTTP_AUTHORIZATION'])) {
            $headers = trim($_SERVER['HTTP_AUTHORIZATION']);
        }

        // Extract the Bearer token from the header
        if (!empty($headers)) {
            if (preg_match('/Bearer\s(\S+)/', $headers, $matches)) {
                return $matches[1];
            }
        }

        return null; // Return null if no token is found
    }
}
