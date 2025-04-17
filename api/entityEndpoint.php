<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utility/ApiUtilities.php';
require_once __DIR__ . '/../src/utility/SrcUtilities.php';


// Validate required configuration
if (!isset($tableClass) || !isset($defaultSearch)) {
    ApiUtilities::httpError(500, 'Controller configuration error');
    exit;
}

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];
$notFoundMessage = "";
$phpInput = "php://input";

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::httpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, $tableClass);
            $entity = $table->get(SrcUtilities::getQueryParameter('id'));
            $entity ? ApiUtilities::httpOk($entity)
                   : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, $tableClass);
            $data = json_decode(file_get_contents($phpInput));
            $entity = (new AuthorBuilder())
                ->withName($data->name ?? null)
                ->build();

            $created = $table->create($entity);
            $created ? ApiUtilities::httpCreated($created)
                          : ApiUtilities::httpBadRequest($notFoundMessage);
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, $tableClass);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents($phpInput));

            $entity = $table->get($id);
            if (!$entity) {
                ApiUtilities::httpNotFound("Entity not found");
            }

            $entity->setName($data->name ?? $entity->getName());
            $updated = $table->update($entity);
            ApiUtilities::httpOk($updated);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, $tableClass);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::httpNoContent()
                    : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, $tableClass);
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
