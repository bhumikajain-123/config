<?php
require_once '../db_connect.php'; // Already has connectDatabase()

ini_set('display_errors', '0');
error_reporting(E_ALL);

// Path for the config file
$configFilePath = '../indoConfig.php';

// Handle POST request
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $db_host = $_POST['db_host'] ?? '';
    $db_user = $_POST['db_user'] ?? '';
    $db_pass = $_POST['db_pass'] ?? '';
    $db_name = $_POST['db_name'] ?? '';

    // Try DB connection
    $conn = connectDatabase($db_host, $db_user, $db_pass, $db_name);

    if ($conn === null) {
        // DB connection failed
        header("Location: ../error");
        exit;
    }

    // DB connected: now write indoConfig.php
    $configData = "<?php\n";
    $configData .= "/** The name of the database */\n";
    $configData .= "define('DB_NAME', '" . addslashes($db_name) . "');\n\n";
    $configData .= "/** Database username */\n";
    $configData .= "define('DB_USER', '" . addslashes($db_user) . "');\n\n";
    $configData .= "/** Database password */\n";
    $configData .= "define('DB_PASSWORD', '" . addslashes($db_pass) . "');\n\n";
    $configData .= "/** Database host */\n";
    $configData .= "define('DB_HOST', '" . addslashes($db_host) . "');\n";

    // Create the file only if it doesn't exist
    if (!file_exists($configFilePath)) {
        file_put_contents($configFilePath, $configData);
    }

    // Redirect after success
    header("Location: ../third");
    exit;
}
