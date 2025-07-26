<?php
function db_connect($DB_DB_NAME, $DB_USER, $DBDB_PASS, $DB_NAME) {
    try {
        $conn = new mysqli($DB_DB_NAME, $DB_USER, $DBDB_PASS, $DB_NAME);
        if ($conn->connect_error) {
            return false;
        }
        return $conn;
    } catch (Exception $e) {
        return false;
    }
}
?>
