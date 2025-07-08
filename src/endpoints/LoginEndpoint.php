<?php

// Include the base endpoint class and required dependencies
require_once __DIR__ . '/../endpoints/DefaultEndpoint.php';
require_once __DIR__ . '/../../vendor/autoload.php';
require_once __DIR__ . '/../../src/entity/User.php';
require_once __DIR__ . '/../../src/table/LoginTable.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';
require_once __DIR__ . '/../../src/utility/ApiUtilities.php';

use Firebase\JWT\JWT;

/**
 * Class LoginEndpoint
 * Handles API requests related to user login.
 * Extends the DefaultEndpoint class to provide login-specific functionality.
 */
class LoginEndpoint extends DefaultEndpoint
{
    private $testMode = false;
    /**
     * Constructor
     * Sets up CORS headers for allowed origins based on configuration.
     */
    public function __construct(bool $testMode = false)
    {
        $this->testMode = $testMode;
        $config = include __DIR__ . '/../../config/config.php';
        $allowedOrigins = $config['allowed_origins'];
        $origin = $_SERVER['HTTP_ORIGIN'] ?? '';

        if (in_array($origin, $allowedOrigins)) {
            // Set CORS and response headers
            header("Access-Control-Allow-Origin: $origin");
            header("Content-Type: application/json; charset=UTF-8");
            header("Access-Control-Allow-Methods: POST");
            header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
        }
    }

    /**
     * Handles GET requests.
     * This endpoint does not allow GET requests, so it responds with a "Method Not Allowed" error.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     *
     * @return void
     */
    public function get($request, ...$args)
    {
        $this->methodNotAllowed('GET');
    }

    /**
     * Handles POST requests for user login.
     * Validates the input, checks user credentials, and generates a JWT token upon successful login.
     *
     * @param string $request The HTTP request data.
     * @param mixed ...$args Additional arguments.
     *
     * @return void
     */
    public function post($request, ...$args)
    {
        // Parse JSON input from the request body
        $input = json_decode(file_get_contents("php://input"));

        // Extract username, password, and database from the input
        $username = $input->username ?? '';
        $password = $input->password ?? '';
        $db = $input->db ?? '';

        // Validate required fields
        if (empty($username) || empty($password) || empty($db)) {
            ApiUtilities::httpBadRequest("Username, password, and database are required");
            return;
        }

        try {
            // Fetch user data from the database
            $loginTable = new LoginTable($this->testMode);
            $usersRow = $loginTable->getUser($username)[0] ?? null;

            if (!$usersRow) {
                throw new InvalidArgumentException("User '{$username}' not found");
            }

            // Create a User object and set its properties
            $user = new User();
            $user->setUsername($usersRow['username']);
            $user->setPassword($usersRow['password']);

            // Verify the provided password against the stored hash
            if (!password_verify($password, $user->getPassword())) {
                throw new InvalidArgumentException("Invalid credentials");
            }

            // Load JWT configuration
            $config = include __DIR__ . '/../../config/config.php';
            $secretKey = $config['token']['ffb_secret'];
            $algorithm = $config['token']['ffb_algorithm'];
            $expiration = $config['token']['ffb_expiration'];

            // Generate JWT token
            $issuedAt = time();
            $expirationTime = $issuedAt + $expiration;

            $payload = [
                'iat' => $issuedAt,
                'exp' => $expirationTime,
                'data' => [
                    'username' => $user->getUsername(),
                    'isAdmin' => $user->isAdmin(),
                    'db' => $db,
                ]
            ];

            $jwt = JWT::encode($payload, $secretKey, $algorithm);

            // Respond with the generated token
            http_response_code(200);
            echo json_encode(
                [
                    "message" => "Login successful",
                    "token" => $jwt
                ]
            );

        } catch (FfbTableException | InvalidArgumentException $e) {
            // Handle login-related errors
            ApiUtilities::httpUnauthorized($e->getMessage());
        } catch (Exception $e) {
            // Handle server errors
            ApiUtilities::httpInternalServerError($e->getMessage());
        }
    }
}
