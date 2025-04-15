<?php

require_once __DIR__ . '/../vendor/autoload.php';
require_once __DIR__ . '/../src/entity/User.php';
require_once __DIR__ . '/../src/table/LoginTable.php';
require_once __DIR__ . '/../src/exceptions/FfbTableException.php';

use Firebase\JWT\JWT;

// Headers for CORS and JSON response
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// Get POST data
$data = json_decode(file_get_contents("php://input"));

$username = $data->username ?? '';
$password = $data->password ?? '';
$db = $data->db ?? '';

if (empty($username) || empty($password) || empty($db)) {
    http_response_code(400);
    echo json_encode(["message" => "Username, password, and database are required"]);
    exit;
}

try {

    $usersRow = (new LoginTable())->getUser($username)[0];
    $user = new User();
    $user->setUsername($usersRow['username']);
    $user->setPassword($usersRow['password']);

    // Verify password
    if (password_verify($password, $user->getPassword())) {
        $configFile = include __DIR__ . "/../config/config.php";
        // JWT Secret Key (store this securely in environment variables)
        $secretKey = $configFile['token']['ffb_secret']; // Use secret key from config
        $issuedAt = time();
        $expirationTime = $issuedAt + $configFile['token']['ffb_expiration']; // Token valid for config time

        // JWT Payload
        $payload = [
            'iat'  => $issuedAt,
            'exp'  => $expirationTime,
            'data' => [
                'username'  => $user->getUsername(),
                'isAdmin'   => $user->isAdmin(),
                'db'        => $db,
            ]
        ];

        // Generate JWT
        $jwt = JWT::encode($payload, $secretKey, $configFile['token']['ffb_algorithm']);

        http_response_code(200);
        echo json_encode([
            "message" => "Login successful",
            "token"   => $jwt
        ]);
    } else {
        throw new Exception("Invalid credentials");
    }
} catch (FfbTableException | InvalidArgumentException $e) {
    http_response_code(401);
    echo json_encode(["message" => "Login failed", "error" => $e->getMessage()]);
} catch (Exception $e) {
    http_response_code(401);
    echo json_encode(["message" => "Login failed", "error" => $e->getMessage()]);
}
