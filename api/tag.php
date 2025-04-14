<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/TagsTable.php';
require_once __DIR__ . '/../src/builder/TagBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::HttpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
            $tag = $table->get(SrcUtilities::getQueryParameter('id'));
            $tag ? ApiUtilities::HttpOk($tag)
                    : ApiUtilities::HttpNotFound("Tag not found");
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
            $data = json_decode(file_get_contents("php://input"));
            $tag = (new TagBuilder())
                ->withName($data->name ?? null)
                ->withDescription($data->description ?? null)
                ->withTypeId($data->type_id ?? null)
                ->build();

            $createdTag = $table->create($tag);
            $createdTag ? ApiUtilities::HttpCreated($createdTag)
                           : ApiUtilities::HttpBadRequest("Failed to create tag");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents("php://input"));

            $tag = $table->get($id);
            if (!$tag) ApiUtilities::HttpNotFound("Tag not found");

            $tag->setName($data->tagname ?? $tag->getName());
            $tag->setDescription($data->description ?? $tag->getDescription());
            $tag->setTypeId($data->type_id ?? $tag->getTypeId());

            $updatedTag = $table->update($tag);
            ApiUtilities::HttpOk($updatedTag);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::HttpNoContent()
                    : ApiUtilities::HttpNotFound("Tag not found");
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
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
