<?php
function connectDatabase($host, $user, $pass, $dbname) {
    // Enable error reporting for debugging purposes
    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); 

    try {
        // Create a new connection
        $conn = new mysqli($host, $user, $pass, $dbname);
        
        // Check if connection is successful
        if ($conn->connect_error) {
            throw new Exception("Connection failed: " . $conn->connect_error);
        }
        
        return $conn;
    } catch (Exception $e) {
        // Log the exception message and return null
        error_log($e->getMessage());
        return null;
    }
}
?>
