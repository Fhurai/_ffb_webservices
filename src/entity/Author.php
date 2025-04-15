<?php

require_once __DIR__ . "/../../src/entity/NamedEntity.php";
require_once __DIR__ . "/../../src/entity/EntityTrait.php";

class Author extends NamedEntity
{
    use EntityTrait;
}
