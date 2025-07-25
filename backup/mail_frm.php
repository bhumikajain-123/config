<?php 
session_start();
require_once '../db_connect.php'; // Make sure this file contains connectDatabase()

// Get DB credentials from session
$db_host = $_SESSION['db_host'] ?? '';
$db_user = $_SESSION['db_user'] ?? '';
$db_pass = $_SESSION['db_pass'] ?? '';
$db_name = $_SESSION['db_name'] ?? '';

// Connect to database
$conn = connectDatabase($db_host, $db_user, $db_pass, $db_name);
if (!$conn) {
    die("Database connection failed.");
}

// Collect and trim form data
$mailsetup_email       = trim($_POST['mailsetup_email'] ?? '');
$mailsetup_password    = trim($_POST['mailsetup_password'] ?? '');
$mailsetup_host        = trim($_POST['mailsetup_host'] ?? '');
$mailsetup_port        = trim($_POST['mailsetup_port'] ?? '');
$mailsetup_encryption  = trim($_POST['mailsetup_encryption'] ?? '');

// Basic validation
if (
    !$mailsetup_email || 
    !$mailsetup_password || 
    !$mailsetup_host || 
    !$mailsetup_port || 
    !$mailsetup_encryption
) {
    die("All fields are required.");
}

// Data to insert or update
$configData = [
    'mailsetup_email'      => $mailsetup_email,
    'mailsetup_password'   => $mailsetup_password,
    'mailsetup_host'       => $mailsetup_host,
    'mailsetup_port'       => $mailsetup_port,
    'mailsetup_encryption' => $mailsetup_encryption,
];

try {
    foreach ($configData as $label => $data) {
        // Escape inputs
        $labelEscaped = $conn->real_escape_string($label);
        $dataEscaped = $conn->real_escape_string($data);

        // Check if label already exists
        $checkQuery = "SELECT COUNT(*) AS count FROM config_setups WHERE label = '$labelEscaped'";
        $result = $conn->query($checkQuery);

        if ($result) {
            $row = $result->fetch_assoc();
            if ((int)$row['count'] === 0) {
                // Insert if not exists
                $insertQuery = "INSERT INTO config_setups (label, data, status) VALUES ('$labelEscaped', '$dataEscaped', 1)";
                $conn->query($insertQuery);
            } else {
                // Update if exists
                $updateQuery = "UPDATE config_setups SET data = '$dataEscaped' WHERE label = '$labelEscaped'";
                $conn->query($updateQuery);

            }
        } else {
            throw new Exception("Query failed: " . $conn->error);
        }
    }

    $conn->close();
    header("Location: ../six");
    exit;

} catch (Exception $e) {
    die("Error saving configuration: " . $e->getMessage());
}
?>