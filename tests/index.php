<?php

require_once "./bdd/ParametersTests.php";
require_once "./bdd/EntitiesTests.php";
require_once "./bdd/NamedEntitiesTests.php";
require_once "./bdd/ComplexEntitiesTests.php";

$parameters = new ParametersTests();
$entities = new EntitiesTests();
$named = new NamedEntitiesTests();
$complex = new ComplexEntitiesTests();

function convertResultsArray(Tests $checks): array
{
    $results = [];
    foreach ($checks->getChecksArray() as $libelle => $value) {
        $libelleParts = explode("_", $libelle);
        $table = $libelleParts[0];
        if (!array_key_exists($table, $results)) {
            $results[$table] = [];
        }
        unset($libelleParts[0]);
        $results[$table][implode("_", $libelleParts)] = $value;
    }
    return $results;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tests index</title>
    <link rel="stylesheet" href="index.css">
</head>

<body>
    <h2>DB Tests</h2>
    <p>All tests about DB accesses</p>
    <?php foreach (["Parameters" => $parameters, "Entities" => $entities, "Named entities" => $named, "Complex entities" => $complex] as $key => $test): ?>
        <?php
        ?>
        <div class="dropdown-panel">
            <label for="toggle<?= $key ?>" class="<?= $test->testCheck() ? "success" : "fail" ?>">
                Total <?= $key ?> checks :
                <?= $test->testCheck() ? count($test->getChecksArray()) . " tests succeed !" : "At least one test failed !" ?>
            </label>
            <input id="toggle<?= $key ?>" type="checkbox" />
            <div class="content">
                <div class="tables">
                    <?php foreach (convertResultsArray($test) as $table => $checks): ?>
                        <table>
                            <thead>
                                <tr>
                                    <th colspan="3"><?= $table ?></th>
                                </tr>
                                <tr>
                                    <th colspan="3">&nbsp;</th>
                                </tr>
                                <tr>
                                    <th>Method</th>
                                    <th>Subject</th>
                                    <th>Success</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($checks as $libelle => $value): ?>
                                    <tr class="<?= $value ? "success" : "fail" ?>">
                                        <?php $libelleParts = explode("_", $libelle); ?>
                                        <td><?= $libelleParts[0] ?></td>
                                        <?php unset($libelleParts[0]); ?>
                                        <?php $newLibelle = implode("_", $libelleParts); ?>
                                        <td><?= $newLibelle ?></td>
                                        <td><?= $value ? "Success" : "Fail" ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                        <br />
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</body>

</html>