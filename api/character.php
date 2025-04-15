<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/CharactersTable.php';
require_once __DIR__ . '/../src/builder/CharacterBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::HttpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $Character = $table->get(SrcUtilities::getQueryParameter('id'));
            $Character ? ApiUtilities::HttpOk($Character)
                    : ApiUtilities::HttpNotFound("Character not found");
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $data = json_decode(file_get_contents("php://input"));
            $Character = (new CharacterBuilder())
                ->withName($data->name ?? null)
                ->withFandomId($data->fandom_id ?? null)
                ->build();

            $createdCharacter = $table->create($Character);
            $createdCharacter ? ApiUtilities::HttpCreated($createdCharacter)
                           : ApiUtilities::HttpBadRequest("Failed to create Character");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents("php://input"));

            $character = $table->get($id);
            if (!$character) ApiUtilities::HttpNotFound("Character not found");

            $character->setName($data->name ?? $character->getName());
            $character->setFandomId($data->fandom_id ?? $character->getFandomId());

            $updatedCharacter = $table->update($character);
            ApiUtilities::HttpOk($updatedCharacter);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::HttpNoContent()
                    : ApiUtilities::HttpNotFound("Character not found");
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $data = json_decode(file_get_contents("php://input"));
            $id = SrcUtilities::getQueryParameter('id');

            $success = $data->deleted ? $table->delete($id) : $table->restore($id);
            $success ? ApiUtilities::HttpOk(["message" => "Operation successful"])
                    : ApiUtilities::HttpNotFound("Operation failed");
            break;

        default:
            ApiUtilities::HttpMethodNotAllowed("Method not allowed");
    }
} catch (FfbTableException | InvalidArgumentException $e) {
    error_log("General Exception: " . $e->getMessage() . "\nStack Trace: " . $e->getTraceAsString());
    ApiUtilities::HttpInternalServerError($e->getMessage());
} catch (Exception $e) {
    error_log("General Exception: " . $e->getMessage() . "\nStack Trace: " . $e->getTraceAsString());
    ApiUtilities::HttpUnauthorized("Invalid token");
} catch (Error $e) {
    error_log("General Exception: " . $e->getMessage() . "\nStack Trace: " . $e->getTraceAsString());
    ApiUtilities::HttpInternalServerError("An error occurred with given data.");
    ApiUtilities::HttpBadRequest($e->getMessage());
} catch (Throwable $e) {
    error_log("General Exception: " . $e->getMessage() . "\nStack Trace: " . $e->getTraceAsString());
    ApiUtilities::HttpInternalServerError("An unexpected error occurred: " . $e->getMessage());
}
