<?php
$indoConfigPath = __DIR__ . '/../indoConfig.php';
$dbConnectPath  = __DIR__ . '/db_connect.php';

$tableExists = false;
$currentFile = basename($_SERVER['PHP_SELF']); // current file name

// Step 1: If config file exists, try DB connection
if (file_exists($indoConfigPath)) {
    require_once $indoConfigPath;
    require_once $dbConnectPath;

    $conn = db_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

    if ($conn) {
        $checkTableQuery = "SHOW TABLES LIKE 'indoadmin'";
        $tableResult = $conn->query($checkTableQuery);
        if ($tableResult && $tableResult->num_rows > 0) {
            $tableExists = true;
        }
    }
}

// Step 2: Redirect to login **only if not already on login page**
if (file_exists($indoConfigPath) && $tableExists && $currentFile != 'login.php') {
    header("Location: ../login.php");
    exit;
}
