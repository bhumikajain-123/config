<?php
function db_connect($host, $user, $pass, $name) {
    try {
        $conn = new mysqli($host, $user, $pass, $name);
        if ($conn->connect_error) {
            return false;
        }
        return $conn;
    } catch (Exception $e) {
        return false;
    }
}
?>
