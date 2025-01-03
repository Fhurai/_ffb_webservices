<?php

require_once "../bdd/ParametersTests.php";
require_once "../bdd/EntitiesTests.php";
require_once "../bdd/NamedEntitiesTests.php";
require_once "../bdd/ComplexEntitiesTests.php";

$entityName = ucfirst($_GET["tests"]) . "Tests";
$object = new $entityName();
echo $object->toJson();