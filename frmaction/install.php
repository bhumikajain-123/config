<?php
session_start();
require_once '../db_connect.php';

// Check if DB config exists
if (empty($_SESSION['db_host']) || empty($_SESSION['db_user']) || !isset($_SESSION['db_pass']) || empty($_SESSION['db_name'])){
    #die("Database configuration missing. Please go back to the previous step.");
     #echo 'Error: Unable to connect to the database. Please check the credentials and try again.';
    header("Location: ../error");
    exit;
}

// Get credentials from session
$db_host = $_SESSION['db_host'];
$db_user = $_SESSION['db_user'];
$db_pass = $_SESSION['db_pass'];
$db_name = $_SESSION['db_name'];

// Connect to database
$conn = connectDatabase($db_host, $db_user, $db_pass, $db_name);
if (!$conn) {
    #die("Failed to connect to the database.");
    header("Location: ../error");
    exit;
}

// SQL for table
$sql = "CREATE TABLE IF NOT EXISTS `config_setups` (
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
    header("Location: ../fourth.php");
    exit;
} catch (Exception $e) {
    #echo "Installation failed: " . $e->getMessage();
    header("Location: ../error");
    exit;
}
?>
