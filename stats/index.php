<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Stats</title>
</head>
<body>
    <h1>Welcome to the Stats API</h1>
    <p>This is the stats API for the Fanfiction Bookmarks project.</p>
    <p>Use the following endpoints:</p>
    <ul>
        <li><a href="./parameters.php">Parameters</a></li>
        <li><a href="./parameter.php">Parameter</a></li>
        <hr/>
        <li><a href="./entities.php">Entities</a></li>
        <li><a href="./entity.php">Entity</a></li>
    </ul>
    <div>
        <?php  
        $configFile = include __DIR__ . "/../config/config.php";
        $user = 'guest';
        $typeConnection = 'stats';
        new PDO(
            "mysql:host=" . $configFile["credentials"][$user]["host"] .
            ";port=" . $configFile["credentials"][$user]["port"] .
            ";dbname=" . $configFile["db"][$typeConnection],
            $configFile["credentials"][$user]["user"],
            $configFile["credentials"][$user]["password"]
        );
        ?>
    </div>
</body>
</html>