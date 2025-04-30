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
        $author ? ApiUtilities::HttpOk($author) : ApiUtilities::HttpNotFound($this->entityClass . ' not found');
    }

    protected function beforeBuild($args, $dbName, $userRole): array
    {
        $entity = $args[0];

        $mapRelatedEntities = function (object $entity, string $property, string $tableClass, callable $mapper) use ($dbName, $userRole) {
            if (property_exists($entity, $property) && is_iterable($entity->$property)) {
                $table = new $tableClass($dbName, $userRole);
                $entity->$property = array_map(fn($item) => $mapper($table, $item), $entity->$property);
            }
        };

        if ($this->tableClass === 'RelationsTable') {
            $mapRelatedEntities($entity, 'characters', CharactersTable::class, fn($table, $id) => $table->get($id));
        } elseif ($this->tableClass === 'FanfictionsTable') {
            $mapRelatedEntities($entity, 'fandoms', FandomsTable::class, fn($table, $id) => $table->get($id));
            $mapRelatedEntities($entity, 'relations', RelationsTable::class, fn($table, $id) => $table->get($id));
            $mapRelatedEntities($entity, 'characters', CharactersTable::class, fn($table, $id) => $table->get($id));
            $mapRelatedEntities($entity, 'tags', TagsTable::class, fn($table, $id) => $table->get($id));

            $mapRelatedEntities(
                $entity,
                'links',
                LinksTable::class,
                function ($table, $data) {
                    /**
                     * @var Link $link
                     */
                    $link = null;
                    if (is_numeric($data)) {
                        $link = $table->get($data);
                    } elseif (is_string($data)) {
                        $link = $table->findSearchedBy(['url' => "{$data}%"]);
                    }

                    if ($link == null || empty($link)) {
                        $link = (new LinkBuilder())->withUrl($data)->build();
                    }
                    return $link;
                }
            );
        } elseif ($this->tableClass === 'SeriesTable') {
            $mapRelatedEntities($entity, 'fanfictions', FanfictionsTable::class, fn($table, $id) => $table->get($id));
        }
        return $args;
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
                /**
                 * @var LanguageBuilder $builder
                 */
                $builder->withName($data->name ?? null)
                    ->withAbbreviation($data->abbreviation ?? null);
                break;
            case 'TagBuilder':
                /**
                 * @var TagBuilder $builder
                 */
                $builder->withName($data->name ?? null)
                    ->withDescription($data->description ?? null)
                    ->withTypeId($data->type_id ?? null);
                break;
            case 'CharacterBuilder':
                /**
                 * @var CharacterBuilder $builder
                 */
                $builder->withName($data->name ?? null)
                    ->withFandomId($data->fandom_id ?? null);
                break;
            case 'RelationBuilder':
                /**
                 * @var RelationBuilder $builder
                 */
                $builder->withName($data->name ?? null)
                    ->withCharacters($data->characters ?? null);
                break;
            case 'UserBuilder':
                /**
                 * @var UserBuilder $builder
                 */
                if(!property_exists($data, 'isAdmin')) {
                    throw new FfbException('isAdmin property is required for UserBuilder');
                }
                if(!property_exists($data, 'isLocal')) {
                    throw new FfbException('isLocal property is required for UserBuilder');
                }
                if(!property_exists($data, 'isNsfw')) {
                    throw new FfbException('isNsfw property is required for UserBuilder');
                }
                $builder->withUsername($data->username ?? null)
                    ->withPassword($data->password ?? null)
                    ->withEmail($data->email ?? null)
                    ->withBirthday($data->birthday ?? null)
                    ->withIsAdmin(boolval($data->isAdmin) ?? null)
                    ->withIsLocal(boolval($data->isLocal) ?? null)
                    ->withIsNsfw(boolval($data->isNsfw) ?? null);
                break;
            case 'FanfictionBuilder':
                /**
                 * @var FanfictionBuilder $builder
                 */
                $builder->withName($data->name ?? null)
                    ->withAuthorId($data->author_id ?? null)
                    ->withRatingId($data->rating_id ?? null)
                    ->withLanguageId($data->language_id ?? null)
                    ->withDescription($data->description ?? null)
                    ->withFandoms($data->fandoms ?? null)
                    ->withRelations($data->relations ?? null)
                    ->withCharacters($data->characters ?? null)
                    ->withTags($data->tags ?? null)
                    ->withLinks($data->links ?? null)
                    ->withScoreId($data->score_id ?? null);
                break;
            case 'SeriesBuilder':
                /**
                 * @var SeriesBuilder $builder
                 */
                $builder->withName($data->name ?? null)
                    ->withDescription($data->description ?? null)
                    ->withFanfictions($data->fanfictions ?? null)
                    ->withScoreId($data->score_id ?? null);
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
        $dbName = ApiUtilities::getDatabaseName($decoded);
        $userRole = ApiUtilities::getUserRole($decoded);

        $table = new $this->tableClass($dbName, $userRole);

        $args = $this->beforeBuild($args, $dbName, $userRole);
        $entity = $this->build($args[0]);

        $created = $table->post($entity);
        $created
            ? ApiUtilities::httpCreated($created)
            : ApiUtilities::httpBadRequest('Failed to create ' . strtolower($this->entityClass));
    }


    public function put($request, ...$args)
    {
        $this->validateRequest($args);

        $decoded = ApiUtilities::decodeJWT();
        $dbName = ApiUtilities::getDatabaseName($decoded);
        $userRole = ApiUtilities::getUserRole($decoded);

        $table = new $this->tableClass($dbName, $userRole);

        $entity = $table->get($request['id']);

        $updated = $table->put($entity, $args[0]);
        $updated
            ? ApiUtilities::httpOk(['message' => $this->entityClass . ' updated'])
            : ApiUtilities::httpBadRequest('Failed to update ' . strtolower($this->entityClass));

    }

    public function patch($request, ...$args)
    {
        $this->validateRequest($args);

        $decoded = ApiUtilities::decodeJWT();
        $dbName = ApiUtilities::getDatabaseName($decoded);
        $userRole = ApiUtilities::getUserRole($decoded);

        $table = new $this->tableClass($dbName, $userRole);

        $updated = $table->patch(is_string($request['id']) ? (int)$request['id'] : $request['id'], $args[0]->deleted);
        $updated
            ? ApiUtilities::httpOk(['message' => $this->entityClass . ' ' . ($args[0]->deleted ? 'deleted' : 'restored')])
            : ApiUtilities::httpBadRequest('Failed to ' . ($args[0]->deleted ? 'deleted' : 'restored') . ' ' . strtolower($this->entityClass));
    }

    public function delete($request, ...$args)
    {
        $this->validateRequest($args);

        $decoded = ApiUtilities::decodeJWT();
        $dbName = ApiUtilities::getDatabaseName($decoded);
        $userRole = ApiUtilities::getUserRole($decoded);

        $table = new $this->tableClass($dbName, $userRole);

        $deleted = $table->delete($request['id']);
        $deleted
            ? ApiUtilities::httpNoContent()
            : ApiUtilities::httpBadRequest('Failed to delete ' . strtolower($this->entityClass));
    }
}
