<?php

require_once __DIR__ . '/DefaultEndpoint.php';
require_once __DIR__ . '/../../src/utility/ApiUtilities.php';

class EntityEndpoint extends DefaultEndpoint
{
    public function get($request, ...$args): void
    {
        $this->validateRequest($args);

        $decoded = ApiUtilities::decodeJWT();

        $table = new $this->tableClass(
            ApiUtilities::getDatabaseName($decoded),
            ApiUtilities::getUserRole($decoded)
        );

        $author = $table->get($args[0]);
        $author ? ApiUtilities::HttpOk($author) : ApiUtilities::HttpNotFound('Entity not found');
    }

    protected function build($data): mixed
    {
        $builder = new $this->builderClass();

        switch ($this->builderClass) {
            case 'AuthorBuilder':
            case 'FandomBuilder':
                $builder->withName($data->name ?? null);
                break;
            case 'LanguageBuilder':
                /** @var LanguageBuilder $builder */
                $builder->withName($data->name ?? null)
                    ->withAbbreviation($data->abbreviation ?? null);
                break;
            case 'TagBuilder':
                /** @var TagBuilder $builder */
                $builder->withName($data->name ?? null)
                    ->withDescription($data->description ?? null)
                    ->withTypeId($data->type_id);
                    break;
            case 'UserBuilder':
                /** @var UserBuilder $builder */
                $builder->withUsername($data->username ?? null)
                    ->withPassword($data->password ?? null)
                    ->withEmail($data->email ?? null)
                    ->withBirthday($data->birthday ?? null)
                    ->withIsAdmin(boolval($data->isAdmin) ?? null)
                    ->withIsLocal(boolval($data->isLocal) ?? null)
                    ->withIsNsfw(boolval($data->isNsfw) ?? null);
                break;
            default:
                throw new InvalidArgumentException('Unknown builder');
        }

        return $builder
            ->build();
    }

    public function post($request, ...$args): void
    {
        $this->validateRequest($args);

        $decoded = ApiUtilities::decodeJWT();

        $table = new $this->tableClass(
            ApiUtilities::getDatabaseName($decoded),
            ApiUtilities::getUserRole($decoded)
        );

        $entity = $this->build($args[0]);

        $created = $table->post($entity);
        $created ? ApiUtilities::httpCreated($created) : ApiUtilities::httpBadRequest('Failed to create entity');
    }

    public function put($request, ...$args)
    {
        return "Replacing article";
    }

    public function patch($request, ...$args)
    {
        return "Updating article";
    }

    public function delete($request, ...$args)
    {
        return "Deleting article";
    }

    public function options($request, ...$args)
    {
        return "OPTIONS supported for article";
    }
}
