<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/TagsTable.php';
require_once __DIR__ . '/../src/builder/TagBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];
$notFoundMessage = "Tag not found";
$phpInput = "php://input";

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::httpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
            $tag = $table->get(SrcUtilities::getQueryParameter('id'));
            $tag ? ApiUtilities::httpOk($tag)
                    : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
            $data = json_decode(file_get_contents($phpInput));
            $tag = (new TagBuilder())
                ->withName($data->name ?? null)
                ->withDescription($data->description ?? null)
                ->withTypeId($data->type_id ?? null)
                ->build();

            $createdTag = $table->create($tag);
            $createdTag ? ApiUtilities::httpCreated($createdTag)
                           : ApiUtilities::httpBadRequest("Failed to create tag");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents($phpInput));

            $tag = $table->get($id);
            if (!$tag){
                ApiUtilities::httpNotFound($notFoundMessage);
            }

            $tag->setName($data->tagname ?? $tag->getName());
            $tag->setDescription($data->description ?? $tag->getDescription());
            $tag->setTypeId($data->type_id ?? $tag->getTypeId());

            $updatedTag = $table->update($tag);
            ApiUtilities::httpOk($updatedTag);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::httpNoContent()
                    : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, TagsTable::class);
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
