<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/FandomsTable.php';
require_once __DIR__ . '/../src/builder/FandomBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::HttpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, FandomsTable::class);
            $fandom = $table->get(SrcUtilities::getQueryParameter('id'));
            $fandom ? ApiUtilities::HttpOk($fandom)
                    : ApiUtilities::HttpNotFound("Fandom not found");
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, FandomsTable::class);
            $data = json_decode(file_get_contents("php://input"));
            $fandom = (new FandomBuilder())
                ->withName($data->name ?? null)
                ->build();

            $createdFandom = $table->create($fandom);
            $createdFandom ? ApiUtilities::HttpCreated($createdFandom)
                           : ApiUtilities::HttpBadRequest("Failed to create fandom");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, FandomsTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents("php://input"));


            $fandom = $table->get($id);
            if (!$fandom) ApiUtilities::HttpNotFound("Fandom not found");

            $fandom->setName($data->name ?? $fandom->getName());

            $updatedFandom = $table->update($fandom);
            ApiUtilities::HttpOk($updatedFandom);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, FandomsTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::HttpNoContent()
                    : ApiUtilities::HttpNotFound("Fandom not found");
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, FandomsTable::class);
            $data = json_decode(file_get_contents("php://input"));
            $id = SrcUtilities::getQueryParameter('id');

            $success = $data->deleted ? $table->delete($id) : $table->restore($id);
            $success ? ApiUtilities::HttpOk(["message" => "Operation successful"])
                    : ApiUtilities::HttpNotFound("Operation failed");
            break;

        default:
            ApiUtilities::HttpMethodNotAllowed("Method not allowed");
    }
} catch (FfbTableException $e) {
    ApiUtilities::HttpInternalServerError($e->getMessage());
} catch (Exception $e) {
    ApiUtilities::HttpUnauthorized("Invalid token");
} catch (Error $e) {
    ApiUtilities::HttpInternalServerError("An error occurred with given data.");
} catch (Throwable $e) {
    ApiUtilities::HttpInternalServerError("An unexpected error occurred: " . $e->getMessage());
}
