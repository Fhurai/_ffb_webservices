<?php

require_once "./bdd/ParametersTests.php";

$parameters = new ParametersTests();
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
    <table>
        <thead class="<?= $parameters->testCheck() ? "success" : "fail" ?>">
            <tr>
                <th colspan="4">
                    Total Parameters checks :
                    <?= $parameters->testCheck() ? "All tests succeed !" : "At least one test failed !" ?>
                </th>
            </tr>
            <tr>
                <th>Class</th>
                <th>Method</th>
                <th>Verification</th>
                <th>Success</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($parameters->getChecksArray() as $libelle => $value): ?>
                <tr class="<?= $value ? "success" : "fail" ?>">
                    <?php $libelleParts = explode("_", $libelle); ?>
                    <td><?= $libelleParts[0] ?></td>
                    <td><?= $libelleParts[1] ?></td>

                    <?php
                    unset($libelleParts[1]);
                    unset($libelleParts[0]);
                    $newLibelle = implode("_", $libelleParts);
                    ?>
                    <td><?= $newLibelle ?></td>
                    <td><?= $value ? "Success" : "Fail" ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>