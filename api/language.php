<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/LanguagesTable.php';
require_once __DIR__ . '/../src/builder/LanguageBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];
$notFoundMessage = "Language not found";
$phpInput = "php://input";

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::httpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
            $language = $table->get(SrcUtilities::getQueryParameter('id'));
            $language ? ApiUtilities::httpOk($language)
                    : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
            $data = json_decode(file_get_contents($phpInput));
            $language = (new LanguageBuilder())
                ->withName($data->name ?? null)
                ->withAbbreviation($data->abbreviation ?? null)
                ->build();

            $createdLanguage = $table->create($language);
            $createdLanguage ? ApiUtilities::httpCreated($createdLanguage)
                           : ApiUtilities::httpBadRequest("Failed to create language");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents($phpInput));

            $language = $table->get($id);
            if (!$language) {
                ApiUtilities::httpNotFound($notFoundMessage);
            }

            $language->setName($data->name ?? $language->getName());
            $language->setAbbreviation($data->abbreviation ?? $language->getAbbreviation());
            $updatedLanguage = $table->update($language);
            ApiUtilities::httpOk($updatedLanguage);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::httpNoContent()
                    : ApiUtilities::httpNotFound($notFoundMessage);
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
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
