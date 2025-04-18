<?php

require_once __DIR__ . "/Connection.php";
require_once __DIR__ . "/EntitiesTable.php";
require_once __DIR__ . "/../entity/Fanfiction.php";
require_once __DIR__ . "/../entity/Rating.php";
require_once __DIR__ . "/../entity/Score.php";
require_once __DIR__ . "/../builder/FanfictionBuilder.php";
require_once __DIR__ . "/../builder/AuthorBuilder.php";
require_once __DIR__ . "/../builder/LanguageBuilder.php";
require_once __DIR__ . "/../builder/FandomBuilder.php";
require_once __DIR__ . "/../builder/RelationBuilder.php";
require_once __DIR__ . "/../builder/CharacterBuilder.php";
require_once __DIR__ . "/../builder/LinkBuilder.php";
require_once __DIR__ . "/../builder/TagBuilder.php";

/**
 * FanfictionsTable class.
 * Handles database operations for the Fanfiction entity, including CRUD operations
 * and managing associations such as fandoms, characters, relations, and tags.
 */
class FanfictionsTable extends EntitiesTable
{
    private const ERROR_NO_DATA = "No data for arguments provided!";
    private const BASE_SELECT_QUERY = "SELECT * FROM `fanfictions`";
    private const DATETIME_FORMAT = "Y-m-d H:i:s";

    public function get(int $id): Fanfiction
    {
        $query = self::BASE_SELECT_QUERY . " WHERE `id` = :id";
        $values = [":id" => $id];
        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntity($rows[0]);
    }

    public function findSearchedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No search arguments provided!");
        }

        $values = [];
        $query = $execute ? self::BASE_SELECT_QUERY : "";

        $validColumns = $this->getTableColumns('fanfictions');
        foreach ($args as $column => $value) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
        }

        $conditions = [];
        foreach ($args as $key => $value) {
            if (str_contains($value, '%')) {
                $conditions[] = "$key LIKE :$key";
                $values[":$key"] = $value;
            } elseif (str_contains(strtolower($value), 'null')) {
                $conditions[] = "$key IS NULL";
            } elseif (str_contains(strtolower($value), 'not null')) {
                $conditions[] = "$key IS NOT NULL";
            } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $matches)) {
                $operator = trim($matches[1]);
                $val = trim($matches[2]);
                $conditions[] = "$key $operator :$key";
                $values[":$key"] = str_replace("'", "", $val);
            } else {
                $conditions[] = "$key = :$key";
                $values[":$key"] = $value;
            }
        }

        if (!empty($conditions)) {
            $query .= " WHERE " . implode(" AND ", $conditions);
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findOrderedBy(array $args, $execute = true): array|string
    {
        if (empty($args)) {
            throw new FfbTableException("No order arguments provided!");
        }

        $query = $execute ? self::BASE_SELECT_QUERY : "";
        $orderClauses = [];

        $validColumns = $this->getTableColumns('fanfictions');
        foreach ($args as $column => $direction) {
            if (!in_array($column, $validColumns)) {
                throw new FfbTableException("Invalid column name: '$column'");
            }
            if (!in_array(strtoupper($direction), ['ASC', 'DESC'])) {
                throw new FfbTableException("Invalid order direction: '$direction'");
            }
            $orderClauses[] = "$column $direction";
        }

        if (!empty($orderClauses)) {
            $query .= " ORDER BY " . implode(", ", $orderClauses);
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query);

        if (empty($rows)) {
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findLimitedBy(array $args, $execute = true): array|string
    {
        if (empty($args['limit']) || !is_numeric($args['limit']) || $args['limit'] < 0) {
            throw new FfbTableException("Invalid or missing limit value!");
        }

        $query = $execute ? self::BASE_SELECT_QUERY : "";
        $query .= " LIMIT " . (int) $args['limit'];

        if (!empty($args['offset'])) {
            if (!is_numeric($args['offset']) || $args['offset'] < 0) {
                throw new FfbTableException("Invalid offset value!");
            }
            $query .= " OFFSET " . (int) $args['offset'];
        }

        if (!$execute) {
            return $query;
        }

        $rows = $this->executeQuery($query);

        if (empty($rows)) {
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function findAll(array $args): array
    {
        $query = self::BASE_SELECT_QUERY;
        $values = [];

        if (!empty($args['search'])) {
            $searchQuery = $this->findSearchedBy($args['search'], false);
            $query .= " WHERE " . substr($searchQuery, strpos($searchQuery, "WHERE") + 6);
            foreach ($args['search'] as $key => $value) {
                if (str_contains($value, '%')) {
                    $values[":$key"] = $value;
                } elseif (preg_match('/^([<>=!]+)\s*(.*)/', $value, $matches)) {
                    $val = trim($matches[2]);
                    $values[":$key"] = str_replace("'", "", $val);
                }
            }
        }


        if (!empty($args['order'])) {
            $orderQuery = $this->findOrderedBy($args['order'], false);
            $query .= " " . substr($orderQuery, strpos($orderQuery, "ORDER BY"));
        }

        if (!empty($args['limit'])) {
            $limitQuery = $this->findLimitedBy($args['limit'], false);
            $query .= " " . substr($limitQuery, strpos($limitQuery, "LIMIT"));
        }

        $rows = $this->executeQuery($query, $values);

        if (empty($rows)) {
            throw new FfbTableException(self::ERROR_NO_DATA);
        }

        return $this->parseEntities($rows);
    }

    public function create(Entity $entity): Fanfiction
    {
        if (!$entity instanceof Fanfiction) {
            throw new \InvalidArgumentException('Expected instance of Fanfiction');
        }

        $query = "INSERT INTO `fanfictions` (`name`, `author_id`, `rating_id`, `description`, `language_id`, `creation_date`, `update_date`, `delete_date`)
                  VALUES (:name, :author_id, :rating_id, :description, :language_id, :creation_date, :update_date, :delete_date)";
        $values = [
            ":name" => $entity->getName(),
            ":author_id" => $entity->getAuthorId(),
            ":rating_id" => $entity->getRatingId(),
            ":description" => $entity->getDescription(),
            ":language_id" => $entity->getLanguageId(),
            ":creation_date" => $entity->getCreationDate()->format(self::DATETIME_FORMAT),
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format(self::DATETIME_FORMAT) : null,
        ];

        $this->executeQuery($query, $values);
        $entity->setId($this->getLastInsertId());

        $this->updateAssociations($entity);

        return $entity;
    }

    public function update(Entity $entity): Fanfiction
    {
        if (!$entity instanceof Fanfiction) {
            throw new \InvalidArgumentException('Expected instance of Fanfiction');
        }

        $query = "UPDATE `fanfictions`
                  SET `name` = :name, `author_id` = :author_id, `rating_id` = :rating_id, `description` = :description, `language_id` = :language_id, `update_date` = :update_date, `delete_date` = :delete_date
                  WHERE `id` = :id";
        $values = [
            ":id" => $entity->getId(),
            ":name" => $entity->getName(),
            ":author_id" => $entity->getAuthorId(),
            ":rating_id" => $entity->getRatingId(),
            ":description" => $entity->getDescription(),
            ":language_id" => $entity->getLanguageId(),
            ":update_date" => $entity->getUpdateDate()->format(self::DATETIME_FORMAT),
            ":delete_date" => $entity->getDeleteDate() ? $entity->getDeleteDate()->format(self::DATETIME_FORMAT) : null,
        ];

        $this->executeQuery($query, $values);
        $this->updateAssociations($entity);

        return $entity;
    }

    private function updateAssociations(Fanfiction $entity): void
    {
        if ($entity->hasFandoms()) {
            $this->updateAssociationTable('fanfiction_fandoms', 'fandom_id', $entity->getId(), $entity->getFandoms());
        }
        if ($entity->hasCharacters()) {
            $this->updateAssociationTable('fanfiction_characters', 'character_id', $entity->getId(), $entity->getCharacters());
        }
        if ($entity->hasRelations()) {
            $this->updateAssociationTable('fanfiction_relations', 'relation_id', $entity->getId(), $entity->getRelations());
        }
        if ($entity->hasTags()) {
            $this->updateAssociationTable('fanfiction_tags', 'tag_id', $entity->getId(), $entity->getTags());
        }
    }

    private function updateAssociationTable(string $table, string $column, int $fanfictionId, ?array $items): void
    {
        $queryDelete = "DELETE FROM `$table` WHERE `fanfiction_id` = :fanfiction_id";
        $this->executeQuery($queryDelete, [":fanfiction_id" => $fanfictionId]);

        if ($items) {
            $queryInsert = "INSERT INTO `$table` (`fanfiction_id`, `$column`) VALUES (:fanfiction_id, :item_id)";
            foreach ($items as $item) {
                $this->executeQuery($queryInsert, [
                    ":fanfiction_id" => $fanfictionId,
                    ":item_id" => $item->getId(),
                ]);
            }
        }
    }

    public function delete(int $id): bool
    {
        $query = "UPDATE `fanfictions` SET `delete_date` = NOW() WHERE `id` = :id";
        $values = [":id" => $id];
        return $this->executeQuery($query, $values) > 0;
    }

    public function restore(int $id): bool
    {
        $query = "UPDATE `fanfictions` SET `delete_date` = NULL WHERE `id` = :id";
        $values = [":id" => $id];
        return $this->executeQuery($query, $values) > 0;
    }

    public function remove(int $id): bool
    {
        $query = "DELETE FROM `fanfictions` WHERE `id` = :id";
        $values = [":id" => $id];
        return $this->executeQuery($query, $values) > 0;
    }

    protected function parseEntity(array $row): Fanfiction
    {
        $fanfictionBuilder = (new FanfictionBuilder())
            ->withId($row["id"])
            ->withName($row["name"])
            ->withAuthorId($row["author_id"])
            ->withRatingId($row["rating_id"])
            ->withScoreId($row["score_id"])
            ->withDescription($row["description"])
            ->withLanguageId($row["language_id"])
            ->withCreationDate($row["creation_date"])
            ->withUpdateDate($row["update_date"])
            ->withDeleteDate($row["delete_date"]);

        $this->parseMonoAssociation('author', $fanfictionBuilder, $row['author_id']);
        $this->parseMonoAssociation('rating', $fanfictionBuilder, $row['rating_id']);
        $this->parseMonoAssociation('language', $fanfictionBuilder, $row['language_id']);
        if ($row['score_id'] !== null) {
            $this->parseMonoAssociation('score', $fanfictionBuilder, $row['score_id']);
        }

        $this->parseMultiAssociation('fandoms', $fanfictionBuilder, $row['id']);
        $this->parseMultiAssociation('relations', $fanfictionBuilder, $row['id']);
        $this->parseMultiAssociation('characters', $fanfictionBuilder, $row['id']);
        $this->parseMultiAssociation('tags', $fanfictionBuilder, $row['id']);
        $this->parseMultiAssociation('links', $fanfictionBuilder, $row['id']);

        return $fanfictionBuilder->build();
    }

    protected function parseMonoAssociation(string $association, FanfictionBuilder $builder, int $id): void
    {
        $associationbuilder = $association . 'Builder';
        $withMethod = 'with' . ucfirst($association);

        $query = "SELECT `{$association}s`.* FROM `{$association}s`
        WHERE `id` = :id";
        $entities = $this->executeQuery($query, [":id" => $id]);

        if (!empty($entities)) {
            switch ($association) {
                case 'author':
                    $builder->$withMethod((new $associationbuilder())
                        ->withId($entities[0]["id"])
                        ->withName($entities[0]["name"])
                        ->withCreationDate($entities[0]["creation_date"])
                        ->withUpdateDate($entities[0]["update_date"])
                        ->withDeleteDate($entities[0]["delete_date"])
                        ->build());
                    break;
                case 'language':
                    $builder->$withMethod((new $associationbuilder())
                        ->withId($entities[0]["id"])
                        ->withName($entities[0]["name"])
                        ->withAbbreviation($entities[0]["abbreviation"])
                        ->withCreationDate($entities[0]["creation_date"])
                        ->withUpdateDate($entities[0]["update_date"])
                        ->withDeleteDate($entities[0]["delete_date"])
                        ->build());
                    break;
                case 'rating':
                    $builder->$withMethod(new Rating($entities[0]["id"], $entities[0]["name"]));
                    break;
                case 'score':
                    $builder->$withMethod(new Score($entities[0]["id"], $entities[0]["name"]));
                    break;
                default:
                    throw new InvalidArgumentException("Unknown association");
            }
        }
    }

    protected function parseMultiAssociation(string $association, FanfictionBuilder $builder, int $id): void
    {
        $mono = substr($association, 0, -1);
        $associationbuilder = $mono . 'Builder';
        $addMethod = 'add' . ucfirst($mono);

        if ($mono === 'link') {
            $query = "SELECT * FROM `links`
        WHERE `fanfiction_id` = :id";
            $entities = $this->executeQuery($query, [":id" => $id]);
        } else {
            $query = "SELECT `$association`.* FROM `fanfictions_{$association}`
        INNER JOIN `{$association}` ON `fanfictions_{$association}`.`{$mono}_id` = `{$association}`.`id`
        WHERE `fanfiction_id` = :id";
            $entities = $this->executeQuery($query, [":id" => $id]);
        }

        if (!empty($entities)) {
            foreach ($entities as $entity) {
                switch ($mono) {
                    case 'fandom':
                    case 'relation':
                        $builder->$addMethod((new $associationbuilder())
                            ->withId($entity["id"])
                            ->withName($entity["name"])
                            ->withCreationDate($entity["creation_date"])
                            ->withUpdateDate($entity["update_date"])
                            ->withDeleteDate($entity["delete_date"])
                            ->build());
                        break;
                    case 'character':
                        $builder->$addMethod((new $associationbuilder())
                            ->withId($entity["id"])
                            ->withName($entity["name"])
                            ->withFandomId($entity["fandom_id"])
                            ->withCreationDate($entity["creation_date"])
                            ->withUpdateDate($entity["update_date"])
                            ->withDeleteDate($entity["delete_date"])
                            ->build());
                        break;
                    case 'tag':
                        $builder->$addMethod((new $associationbuilder())
                            ->withId($entity["id"])
                            ->withName($entity["name"])
                            ->withDescription($entity["description"])
                            ->withCreationDate($entity["creation_date"])
                            ->withUpdateDate($entity["update_date"])
                            ->withDeleteDate($entity["delete_date"])
                            ->build());
                        break;
                    case 'link':
                        $builder->$addMethod((new $associationbuilder())
                            ->withId($entity["id"])
                            ->withUrl($entity['url'])
                            ->withFanfictionId($entity['fanfiction_id'])
                            ->withCreationDate($entity["creation_date"])
                            ->withUpdateDate($entity["update_date"])
                            ->withDeleteDate($entity["delete_date"])
                            ->build());
                        break;
                    default:
                        throw new InvalidArgumentException("Unknown association");
                }
            }
        }
    }
}
