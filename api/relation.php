<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/RelationsTable.php';
require_once __DIR__ . '/../src/builder/RelationBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::HttpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
            $Relation = $table->get(SrcUtilities::getQueryParameter('id'));
            $Relation ? ApiUtilities::HttpOk($Relation)
                    : ApiUtilities::HttpNotFound("Relation not found");
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
            $data = json_decode(file_get_contents("php://input"));
            $Relation = (new RelationBuilder())
                ->withName($data->name ?? null)
                ->build();

            $createdRelation = $table->create($Relation);
            $createdRelation ? ApiUtilities::HttpCreated($createdRelation)
                           : ApiUtilities::HttpBadRequest("Failed to create Relation");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents("php://input"));

            $Relation = $table->get($id);
            if (!$Relation) ApiUtilities::HttpNotFound("Relation not found");

            $Relation->setName($data->name ?? $Relation->getName());

            $updatedRelation = $table->update($Relation);
            ApiUtilities::HttpOk($updatedRelation);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::HttpNoContent()
                    : ApiUtilities::HttpNotFound("Relation not found");
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, RelationsTable::class);
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
