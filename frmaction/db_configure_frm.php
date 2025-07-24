<?php
require_once '../db_connect.php'; // Already includes connectDatabase()

ini_set('display_errors', '0');
error_reporting(E_ALL);

// Path to config file
$configFilePath = '../indoConfig.php';

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $db_host = trim($_POST['db_host'] ?? '');
    $db_user = trim($_POST['db_user'] ?? '');
    $db_pass = trim($_POST['db_pass'] ?? '');
    $db_name = trim($_POST['db_name'] ?? '');

    // Try DB connection
    $conn = connectDatabase($db_host, $db_user, $db_pass, $db_name);

    if ($conn === null) {
        // ❌ Connection failed — do not create config
        header("Location: ../error");
        exit;
    }

    // ✅ Connection successful — check if config already exists
    if (!file_exists($configFilePath)) {
        $configData = "<?php\n";
        $configData .= "/** The name of the database */\n";
        $configData .= "define('DB_NAME', '" . addslashes($db_name) . "');\n\n";
        $configData .= "/** Database username */\n";
        $configData .= "define('DB_USER', '" . addslashes($db_user) . "');\n\n";
        $configData .= "/** Database password */\n";
        $configData .= "define('DB_PASSWORD', '" . addslashes($db_pass) . "');\n\n";
        $configData .= "/** Database host */\n";
        $configData .= "define('DB_HOST', '" . addslashes($db_host) . "');\n";

        file_put_contents($configFilePath, $configData);
    }

    // ✅ Redirect to next step
    header("Location: ../third");
    exit;
}
