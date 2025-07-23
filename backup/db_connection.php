<?php
$servername = "localhost";                                                                                                                                
$username   = "root";
$password   = "root";
$dbname     = "setup_config";

    
// Step 1: Connect to MySQL server (no database yet)
$conn = new mysqli($servername, $username, $password);

// Check server connection
if ($conn->connect_error) {
    die("<!DOCTYPE html>
    <html>
    <head><title>Database Error</title></head>
    <body style='display: flex; justify-content: center; align-items: center; height: 100vh; background: #f8f9fa;'>
        <div style='text-align: center; font-family: Arial, sans-serif;'>
            <h2 style='color: red;'>Connection to MySQL server failed:</h2>
            <p>{$conn->connect_error}</p>
        </div>
    </body>
    </html>");
}
// Step 2: Check if database exists
$db_check = $conn->query("SHOW DATABASES LIKE '$dbname'");
if ($db_check->num_rows == 0) {
    die("<!DOCTYPE html>
    <html>
    <head><title>Database Missing</title></head>
    <body style='display: flex; justify-content: center; align-items: center; height: 100vh; background: #fff0f0;'>
        <div style='text-align: center; font-family: Arial, sans-serif;'>
            <h2 style='color: red;'>Database '$dbname' not found</h2>
            <p>Please create the database before continuing.</p>
        </div>
    </body>
    </html>");
}

// Step 3: Reconnect — now with the database
$conn = new mysqli($servername, $username, $password, $dbname);

// Final check
if ($conn->connect_error) {
    die("<!DOCTYPE html>
    <html>
    <head><title>Database Error</title></head>
    <body style='display: flex; justify-content: center; align-items: center; height: 100vh; background: #f8f9fa;'>
        <div style='text-align: center; font-family: Arial, sans-serif;'>
            <h2 style='color: red;'>Connection failed:</h2>
            <p>{$conn->connect_error}</p>
        </div>
    </body>
    </html>");
}
?>
