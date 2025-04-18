<?php

require_once __DIR__ . '/../endpoints/DefaultEndpoint.php';
require_once __DIR__ . '/../../vendor/autoload.php';
require_once __DIR__ . '/../../src/entity/User.php';
require_once __DIR__ . '/../../src/table/LoginTable.php';
require_once __DIR__ . '/../../src/exception/FfbTableException.php';

use Firebase\JWT\JWT;

class LoginEndpoint extends DefaultEndpoint
{
    public function __construct()
    {
        $config = require __DIR__ . '/../../config/config.php';
        $allowedOrigins = $config['allowed_origins'];
        $origin = $_SERVER['HTTP_ORIGIN'] ?? '';

        if (in_array($origin, $allowedOrigins)) {
            // CORS and response headers
            header("Access-Control-Allow-Origin: *");
            header("Content-Type: application/json; charset=UTF-8");
            header("Access-Control-Allow-Methods: POST");
            header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
        }


    }

    public function post($request, ...$args)
    {
        $input = json_decode(file_get_contents("php://input"));

        $username = $input->username ?? '';
        $password = $input->password ?? '';
        $db = $input->db ?? '';

        if (empty($username) || empty($password) || empty($db)) {
            http_response_code(400);
            echo json_encode(["message" => "Username, password, and database are required"]);
            return;
        }

        try {
            $loginTable = new LoginTable();
            $usersRow = $loginTable->getUser($username)[0] ?? null;

            if (!$usersRow) {
                throw new InvalidArgumentException("User not found");
            }

            $user = new User();
            $user->setUsername($usersRow['username']);
            $user->setPassword($usersRow['password']);

            if (!password_verify($password, $user->getPassword())) {
                throw new InvalidArgumentException("Invalid credentials");
            }

            // Load JWT config
            $config = require __DIR__ . '/../../config/config.php';
            $secretKey = $config['token']['ffb_secret'];
            $algorithm = $config['token']['ffb_algorithm'];
            $expiration = $config['token']['ffb_expiration'];

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

            http_response_code(200);
            echo json_encode([
                "message" => "Login successful",
                "token" => $jwt
            ]);

        } catch (FfbTableException | InvalidArgumentException $e) {
            http_response_code(401);
            echo json_encode([
                "message" => "Login failed",
                "error" => $e->getMessage()
            ]);
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode([
                "message" => "Server error",
                "error" => $e->getMessage()
            ]);
        }
    }
}
