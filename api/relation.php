<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/RelationsTable.php';
require_once __DIR__ . '/../src/table/CharactersTable.php';
require_once __DIR__ . '/../src/builder/RelationBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];
$notFoundMessage = "Relation not found";
$phpInput = "php://input";

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::httpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
            $Relation = $table->get(SrcUtilities::getQueryParameter('id'));
            $Relation ? ApiUtilities::httpOk($Relation)
                    : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
            $data = json_decode(file_get_contents($phpInput));
            if (!isset($data->characters) || !is_array($data->characters)) {
                ApiUtilities::httpBadRequest("Characters must be an array");
            }
            if (empty($data->characters)) {
                ApiUtilities::httpBadRequest("Characters array cannot be empty");
            } else {
                $characters = [];
                $charactersTable = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
                foreach ($data->characters as $character) {
                    if (isset($character->id)) {
                        $characters[] = $charactersTable->get($character->id);
                    } elseif(is_int($character)) {
                        $characters[] = $charactersTable->get($character);
                    } else {
                        ApiUtilities::httpBadRequest("Invalid character ID");
                    }
                }
            }

            $Relation = (new RelationBuilder())
                ->withCharacters($characters ?? [])
                ->build();

            $createdRelation = $table->create($Relation);
            $createdRelation ? ApiUtilities::httpCreated($createdRelation)
                           : ApiUtilities::httpBadRequest("Failed to create Relation");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents($phpInput));

            $Relation = $table->get($id);
            if (!$Relation) {
                ApiUtilities::httpNotFound($notFoundMessage);
            }

            if (!isset($data->characters) || !is_array($data->characters)) {
                ApiUtilities::httpBadRequest("Characters must be an array");
            }
            if (empty($data->characters)) {
                ApiUtilities::httpBadRequest("Characters array cannot be empty");
            } else {
                $characters = [];
                $charactersTable = ApiUtilities::getAuthorizedTable($decoded, CharactersTable::class);
                foreach ($data->characters as $character) {
                    if (isset($character->id)) {
                        $characters[] = $charactersTable->get($character->id);
                    } elseif(is_int($character)) {
                        $characters[] = $charactersTable->get($character);
                    } else {
                        ApiUtilities::httpBadRequest("Invalid character ID");
                    }
                }
                $Relation->setCharacters($characters);
            }

            $updatedRelation = $table->update($Relation);
            ApiUtilities::httpOk($updatedRelation);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::httpNoContent()
                    : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
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
