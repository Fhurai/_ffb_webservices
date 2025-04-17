<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/AuthorsTable.php';
require_once __DIR__ . '/../src/builder/AuthorBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];
$notFoundMessage = "Author not found";
$phpInput = "php://input";

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::HttpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, AuthorsTable::class);
            $author = $table->get(SrcUtilities::getQueryParameter('id'));
            $author ? ApiUtilities::HttpOk($author)
                   : ApiUtilities::HttpNotFound($notFoundMessage);
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, AuthorsTable::class);
            $data = json_decode(file_get_contents($phpInput));
            $author = (new AuthorBuilder())
                ->withName($data->name ?? null)
                ->build();

            $createdAuthor = $table->create($author);
            $createdAuthor ? ApiUtilities::HttpCreated($createdAuthor)
                          : ApiUtilities::HttpBadRequest($notFoundMessage);
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, AuthorsTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents($phpInput));

            $author = $table->get($id);
            if (!$author) {
                ApiUtilities::HttpNotFound("Author not found");
            }

            $author->setName($data->name ?? $author->getName());
            $updatedAuthor = $table->update($author);
            ApiUtilities::HttpOk($updatedAuthor);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, AuthorsTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::HttpNoContent()
                    : ApiUtilities::HttpNotFound($notFoundMessage);
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, AuthorsTable::class);
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
