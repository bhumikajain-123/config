<?php

require_once '../db_connect.php';

// Get DB credentials from form
$db_host = trim($_POST['db_host']);
$db_user = trim($_POST['db_user']);
$db_pass = trim($_POST['db_pass']);
$db_name = trim($_POST['db_name']);

// Test DB connection
$conn = connectDatabase($db_host, $db_user, $db_pass, $db_name);
if (!$conn) {
    header("Location: ../error");
    exit;
}

// Create required table
$sql = "CREATE TABLE IF NOT EXISTS `indoadmin`(
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `label` varchar(200) NOT NULL,
    `data` varchar(200) NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    `status` tinyint(1) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";

try {
    $conn->query($sql);
    $conn->close();

    // Rename and update config file
    $sampleFile = '../sample-indoConfig.php';
    $targetFile = '../indoConfig.php';

    if (!file_exists($sampleFile)) {
        die("Sample config file not found.");
    }

    // Rename sample file to active config
    if (!rename($sampleFile, $targetFile)) {
        die("Failed to rename config file.");
    }

    // Replace placeholders
    $configContent = file_get_contents($targetFile);
    $configContent = str_replace("database_name_here", addslashes($db_name), $configContent);
    $configContent = str_replace("username_here", addslashes($db_user), $configContent);
    $configContent = str_replace("password_here", addslashes($db_pass), $configContent);
    $configContent = str_replace("localhost", addslashes($db_host), $configContent);

    // Save updated content
    file_put_contents($targetFile, $configContent);

    // Redirect to next step
    header("Location: ../fourth.php");
    exit;
} catch (Exception $e) {
    header("Location: ../error");
    exit;
}
