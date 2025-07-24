<?php 
session_start();
require_once '../db_connect.php'; // Adjust if needed

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
$title    = trim($_POST['title'] ?? '');
$username = trim($_POST['username'] ?? '');
$password = trim($_POST['password'] ?? '');
$email    = trim($_POST['email'] ?? '');

// Basic validation
if (!$title || !$username || !$password || !$email) {
    die("All fields are required.");
}

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Data to insert or update
$configData = [
    'site_title'     => $title,
    'admin_username' => $username,
    'admin_password' => $hashedPassword,
    'admin_email'    => $email,
];

try {
    foreach ($configData as $label => $data) {
        // Escape input
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
    header("Location: ../fifth");
    exit;

} catch (Exception $e) {
    die("Error saving configuration: " . $e->getMessage());
}
?>