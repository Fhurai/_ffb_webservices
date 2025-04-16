<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";
require_once __DIR__ . "/../../src/entity/EntityTrait.php";

final class Author extends NamedEntity
{
    use EntityTrait;
}
