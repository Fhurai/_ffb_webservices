<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/CharactersTable.php';
require_once __DIR__ . '/../src/builder/CharacterBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];
$notFoundMessage = "Character not found";
$phpInput = "php://input";

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::httpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $Character = $table->get(SrcUtilities::getQueryParameter('id'));
            $Character ? ApiUtilities::httpOk($Character)
                    : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $data = json_decode(file_get_contents($phpInput));
            $Character = (new CharacterBuilder())
                ->withName($data->name ?? null)
                ->withFandomId($data->fandom_id ?? null)
                ->build();

            $createdCharacter = $table->create($Character);
            $createdCharacter ? ApiUtilities::httpCreated($createdCharacter)
                           : ApiUtilities::httpBadRequest("Failed to create Character");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents($phpInput));

            $character = $table->get($id);
            if (!$character) {
                ApiUtilities::httpNotFound($notFoundMessage);
            }

            $character->setName($data->name ?? $character->getName());
            $character->setFandomId($data->fandom_id ?? $character->getFandomId());

            $updatedCharacter = $table->update($character);
            ApiUtilities::httpOk($updatedCharacter);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::httpNoContent()
                    : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
            $data = json_decode(file_get_contents($phpInput));
            $id = SrcUtilities::getQueryParameter('id');

            $success = $data->deleted ? $table->delete($id) : $table->restore($id);
            $success ? ApiUtilities::httpOk(["message" => "Operation successful"])
                    : ApiUtilities::httpNotFound("Operation failed");
            break;

        default:
            ApiUtilities::httpMethodNotAllowed("Method not allowed");
    }
} catch (FfbTableException | InvalidArgumentException $e) {
    ApiUtilities::httpInternalServerError($e->getMessage());
} catch (Exception $e) {
    ApiUtilities::httpUnauthorized("Invalid token");
} catch (Error $e) {
    ApiUtilities::httpInternalServerError("An error occurred with given data.");
} catch (Throwable $e) {
    ApiUtilities::httpInternalServerError("An unexpected error occurred: " . $e->getMessage());
}
