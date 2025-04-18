<?php

require_once __DIR__ . "/EntitiesTable.php";
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
    protected const TABLE_NAME = 'fanfictions';
    protected const DEFAULT_SELECT_QUERY = 'SELECT * FROM `fanfictions`';

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
