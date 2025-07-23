<?php
require_once '../db_connect.php'; // Adjust path if needed
session_start();

# Disable PHP error display, show custom message only
ini_set('display_errors', '0');
error_reporting(E_ALL);

# Get Form data and check database details

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    # Get values from form fields
    $db_host = $_POST['db_host'] ?? '';
    $db_user = $_POST['db_user'] ?? '';
    $db_pass = $_POST['db_pass'] ?? '';
    $db_name = $_POST['db_name'] ?? '';

    #Try to connect to the database
    $conn = connectDatabase($db_host, $db_user, $db_pass, $db_name);

    # Check if the connection is successful
    if ($conn === null) {
        #echo 'Error: Unable to connect to the database. Please check the credentials and try again.';
        header("Location: ../error");
        exit;
    } else {
        #echo 'Success: Database connection established!';
        $_SESSION['db_host'] = $db_host;
        $_SESSION['db_user'] = $db_user;
        $_SESSION['db_pass'] = $db_pass;
        $_SESSION['db_name'] = $db_name;
        header("Location: ../third");
        exit;
    }
}
?>
