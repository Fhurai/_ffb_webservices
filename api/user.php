<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/UsersTable.php';
require_once __DIR__ . '/../src/builder/UserBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];
$notFoundMessage = "User not found";
$phpInput = "php://input";

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::HttpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, UsersTable::class);
            $user = $table->get(SrcUtilities::getQueryParameter('id'));
            $user ? ApiUtilities::HttpOk($user)
                    : ApiUtilities::HttpNotFound($notFoundMessage);
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, UsersTable::class);
            $data = json_decode(file_get_contents($phpInput));
            $user = (new UserBuilder())
                ->withUsername($data->username ?? null)
                ->withPassword($data->password ?? null)
                ->withEmail($data->email ?? null)
                ->withBirthday($data->birthday ?? null)
                ->withIsAdmin(boolval($data->isAdmin) ?? null)
                ->withIsLocal(boolval($data->isLocal) ?? null)
                ->withIsNsfw(boolval($data->isNsfw) ?? null)
                ->build();

            $createdUser = $table->create($user);
            $createdUser ? ApiUtilities::HttpCreated($createdUser)
                           : ApiUtilities::HttpBadRequest("Failed to create user");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, UsersTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents($phpInput));

            $user = $table->get($id);
            if (!$user) {
                ApiUtilities::HttpNotFound($notFoundMessage);
            }

            $user->setUsername($data->username ?? $user->getUsername());
            $updateUser = $table->update($user);
            ApiUtilities::HttpOk($updateUser);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, UsersTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::HttpNoContent()
                    : ApiUtilities::HttpNotFound($notFoundMessage);
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, UsersTable::class);
            $data = json_decode(file_get_contents($phpInput));
            $id = SrcUtilities::getQueryParameter('id');

            $success = $data->deleted ? $table->delete($id) : $table->restore($id);
            $success ? ApiUtilities::HttpOk(["message" => "Operation successful"])
                    : ApiUtilities::HttpNotFound("Operation failed");
            break;

        default:
            ApiUtilities::HttpMethodNotAllowed("Method not allowed");
    }
} catch (FfbTableException | InvalidArgumentException $e) {
    ApiUtilities::HttpInternalServerError($e->getMessage());
} catch (Exception $e) {
    ApiUtilities::HttpUnauthorized("Invalid token");
} catch (Error $e) {
    ApiUtilities::HttpInternalServerError("An error occurred with given data.");
} catch (Throwable $e) {
    ApiUtilities::HttpInternalServerError("An unexpected error occurred: " . $e->getMessage());
}
