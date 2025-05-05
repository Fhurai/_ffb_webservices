<?php

require_once __DIR__ . '/DefaultEndpoint.php';
require_once __DIR__ . '/../../src/utility/ApiUtilities.php';

/**
 * Class EntityEndpoint
 * Handles CRUD operations for a single entity.
 * Extends the DefaultEndpoint class to provide specific functionality for entity management.
 */
class EntityEndpoint extends DefaultEndpoint
{
    /**
     * Handles GET requests to retrieve a single entity by its identifier.
     *
     * @param array $request The HTTP request data.
     * @param mixed ...$args Additional arguments, including the entity ID.
     */
    public function get($request, ...$args): void
    {
        // Validate the request and ensure the endpoint is properly configured
        $this->validateRequest($args);

        // Decode the JWT token to extract user information
        $decoded = ApiUtilities::decodeJWT();

        // Instantiate the table class with the database name and user role
        $table = new $this->tableClass(
            ApiUtilities::getDatabaseName($decoded),
            ApiUtilities::getUserRole($decoded)
        );

        // Retrieve the entity by its ID
        $entity = $table->get($args[0]);

        // Respond with the entity data or a 404 error if not found
        $entity ? ApiUtilities::HttpOk($entity) : ApiUtilities::HttpNotFound($this->entityClass . ' not found');
    }

    /**
     * Prepares the entity data before building it.
     * Maps related entities to their respective properties.
     *
     * @param array $args The arguments passed to the endpoint.
     * @param string $dbName The name of the database.
     * @param string $userRole The role of the user.
     * @return array The modified arguments.
     */
    protected function beforeBuild($args, $dbName, $userRole): array
    {
        $entity = $args[0];

        if ($this->tableClass === 'RelationsTable') {
            $this->handleRelationsTable($entity, $dbName, $userRole);
        } elseif ($this->tableClass === 'FanfictionsTable') {
            $this->handleFanfictionsTable($entity, $dbName, $userRole);
        } elseif ($this->tableClass === 'SeriesTable') {
            $this->handleSeriesTable($entity, $dbName, $userRole);
        }

        return $args;
    }

    /**
     * Handle mapping for RelationsTable entities.
     */
    protected function handleRelationsTable(object $entity, string $dbName, string $userRole): void
    {
        $this->mapRelatedEntities($entity, 'characters', CharactersTable::class, fn($table, $id) => $table->get($id), $dbName, $userRole);
    }

    /**
     * Handle mapping for FanfictionsTable entities.
     */
    protected function handleFanfictionsTable(object $entity, string $dbName, string $userRole): void
    {
        $this->mapRelatedEntities($entity, 'fandoms', FandomsTable::class, fn($table, $id) => $table->get($id), $dbName, $userRole);
        $this->mapRelatedEntities($entity, 'relations', RelationsTable::class, fn($table, $id) => $table->get($id), $dbName, $userRole);
        $this->mapRelatedEntities($entity, 'characters', CharactersTable::class, fn($table, $id) => $table->get($id), $dbName, $userRole);
        $this->mapRelatedEntities($entity, 'tags', TagsTable::class, fn($table, $id) => $table->get($id), $dbName, $userRole);
        $this->handleLinksMapping($entity, $dbName, $userRole);
    }

    /**
     * Handle special case for links mapping.
     */
    protected function handleLinksMapping(object $entity, string $dbName, string $userRole): void
    {
        $this->mapRelatedEntities(
            $entity,
            'links',
            LinksTable::class,
            function ($table, $data) {
                if (is_numeric($data)) {
                    return $table->get($data);
                }

                if (is_string($data)) {
                    $link = $table->findSearchedBy(['url' => "{$data}%"]);
                    if (!empty($link)) {
                        return $link;
                    }
                }

                return (new LinkBuilder())->withUrl($data)->build();
            },
            $dbName,
            $userRole
        );
    }

    /**
     * Handle mapping for SeriesTable entities.
     */
    protected function handleSeriesTable(object $entity, string $dbName, string $userRole): void
    {
        $this->mapRelatedEntities(
            $entity,
            'fanfictions',
            FanfictionsTable::class,
            function ($table, $item) {
                $id = is_object($item) ? $item->fanfiction_id : $item;
                $fanfiction = $table->get($id);

                if (is_object($item)) {
                    $fanfiction->ranking = $item->ranking;
                }

                return $fanfiction;
            },
            $dbName,
            $userRole
        );

        $this->assignFanfictionRankings($entity);
    }

    /**
     * Assign rankings to fanfictions.
     */
    protected function assignFanfictionRankings(object $entity): void
    {
        if (!property_exists($entity, 'fanfictions') || !is_iterable($entity->fanfictions)) {
            return;
        }

        foreach ($entity->fanfictions as $key => $fanfiction) {
            $fanfiction->ranking = $key + 1;
        }
    }

    /**
     * Helper method to map related entities.
     */
    protected function mapRelatedEntities(
        object $entity,
        string $property,
        string $tableClass,
        callable $mapper,
        string $dbName,
        string $userRole
    ): void {
        if (!property_exists($entity, $property) || !is_iterable($entity->$property)) {
            return;
        }

        $table = new $tableClass($dbName, $userRole);
        $entity->$property = array_map(fn($item) => $mapper($table, $item), $entity->$property);
    }

    /**
     * Builds an entity using the appropriate builder class.
     *
     * @param object $data The raw data for the entity.
     * @return mixed The built entity.
     * @throws InvalidArgumentException If the builder class is unknown.
     */
    protected function build($data): mixed
    {
        $builder = new $this->builderClass();

        switch ($this->builderClass) {
            case 'AuthorBuilder':
            case 'FandomBuilder':
                $builder->withName($data->name ?? null);
                break;
            case 'LanguageBuilder':
                $builder->withName($data->name ?? null)
                    ->withAbbreviation($data->abbreviation ?? null);
                break;
            case 'TagBuilder':
                $builder->withName($data->name ?? null)
                    ->withDescription($data->description ?? null)
                    ->withTypeId($data->type_id ?? null);
                break;
            case 'CharacterBuilder':
                $builder->withName($data->name ?? null)
                    ->withFandomId($data->fandom_id ?? null);
                break;
            case 'RelationBuilder':
                $builder->withName($data->name ?? null)
                    ->withCharacters($data->characters ?? null);
                break;
            case 'UserBuilder':
                if (!property_exists($data, 'isAdmin')) {
                    throw new FfbException('isAdmin property is required for UserBuilder');
                }
                if (!property_exists($data, 'isLocal')) {
                    throw new FfbException('isLocal property is required for UserBuilder');
                }
                if (!property_exists($data, 'isNsfw')) {
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
                $builder->withName($data->name ?? null)
                    ->withDescription($data->description ?? null)
                    ->withFanfictions($data->fanfictions ?? null)
                    ->withScoreId($data->score_id ?? null);
                break;
            default:
                throw new InvalidArgumentException('Unknown builder');
        }
        return $builder->build();
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
        $status = $args[0]->deleted ? 'deleted' : 'restored';

        $table = new $this->tableClass($dbName, $userRole);

        $updated = $table->patch(is_string($request['id']) ? (int) $request['id'] : $request['id'], $args[0]->deleted);
        $updated
            ? ApiUtilities::httpOk(['message' => $this->entityClass . ' ' . $status])
            : ApiUtilities::httpBadRequest('Failed to ' . $status . ' ' . strtolower($this->entityClass));
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
