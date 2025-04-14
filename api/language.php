<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../src/utilities/ApiUtilities.php';
require_once __DIR__ . '/../src/utilities/SrcUtilities.php';
require_once __DIR__ . '/../src/table/LanguagesTable.php';
require_once __DIR__ . '/../src/builder/LanguageBuilder.php';

ApiUtilities::setCorsHeaders(['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS']);

$method = $_SERVER['REQUEST_METHOD'];

try {
    switch ($method) {
        case 'OPTIONS':
            ApiUtilities::HttpOk(null);
            break;

        case 'GET':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
            $language = $table->get(SrcUtilities::getQueryParameter('id'));
            $language ? ApiUtilities::HttpOk($language)
                    : ApiUtilities::HttpNotFound("Language not found");
            break;

        case 'POST':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
            $data = json_decode(file_get_contents("php://input"));
            $language = (new LanguageBuilder())
                ->withName($data->name ?? null)
                ->withAbbreviation($data->abbreviation ?? null)
                ->build();

            $createdLanguage = $table->create($language);
            $createdLanguage ? ApiUtilities::HttpCreated($createdLanguage)
                           : ApiUtilities::HttpBadRequest("Failed to create language");
            break;

        case 'PUT':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
            $id = SrcUtilities::getQueryParameter('id');
            $data = json_decode(file_get_contents("php://input"));

            $language = $table->get($id);
            if (!$language) ApiUtilities::HttpNotFound("Language not found");

            $language->setName($data->name ?? $language->getName());
            $language->setAbbreviation($data->abbreviation ?? $language->getAbbreviation());
            $updatedLanguage = $table->update($language);
            ApiUtilities::HttpOk($updatedLanguage);
            break;

        case 'DELETE':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
            $success = $table->remove(SrcUtilities::getQueryParameter('id'));
            $success ? ApiUtilities::HttpNoContent()
                    : ApiUtilities::HttpNotFound("Language not found");
            break;

        case 'PATCH':
            $decoded = ApiUtilities::decodeJWT();
            $table = ApiUtilities::getAuthorizedTable($decoded, LanguagesTable::class);
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
