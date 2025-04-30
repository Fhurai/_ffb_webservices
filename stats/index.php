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
        <!-- Link to the Parameters endpoint -->
        <li>
            <a href="./parameters.php">Parameters</a> - Retrieves a list of all available parameters in the stats API.
        </li>
        <!-- Link to the Parameter endpoint -->
        <li>
            <a href="./parameter.php">Parameter</a> - Retrieves details for a specific parameter based on the provided parameter ID.
        </li>
        <hr/>
        <!-- Link to the Entities endpoint -->
        <li>
            <a href="./entities.php">Entities</a> - Retrieves a list of all entities in the stats API.
        </li>
        <!-- Link to the Entity endpoint -->
        <li>
            <a href="./entity.php">Entity</a> - Retrieves details for a specific entity based on the provided entity ID.
        </li>
    </ul>
    <div>
        <?php  
        // Include the configuration file for database credentials
        $configFile = include __DIR__ . "/../config/config.php";

        // Define the user and connection type for the database
        $user = 'guest';
        $typeConnection = 'stats';

        // Establish a connection to the database using PDO
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