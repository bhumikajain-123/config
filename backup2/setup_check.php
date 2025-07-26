<?php

function checkSetupAndRedirect() {
    $configFilePath = 'indoConfig.php';

    // If config file is missing
    if (!file_exists($configFilePath)) {
        $currentPage = basename($_SERVER['PHP_SELF']);

        // If NOT already on index.php, redirect to index.php
        if ($currentPage !== 'index.php') {
            header('Location: index.php');
            exit;
        }

        // If already on index.php, do nothing — let it load
        return;
    }

    // Load config
    require_once $configFilePath;

    // Check DB constants
    if (defined('DB_HOST') && defined('DB_USER') && defined('DB_PASSWORD') && defined('DB_NAME')) {
        require_once 'db_connect.php';

        $conn = connectDatabase(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

        if ($conn) {
            // Check required table
            $sql = "SHOW TABLES LIKE 'indoadmin'";
            $result = $conn->query($sql);

            if ($result && $result->num_rows > 0) {
                $conn->close();
                // All good — redirect to main app
                header('Location: https://info.indovisionservices.in/v14/');
                exit;
            } else {
                $conn->close();
                header('Location: error.php'); // Table missing
                exit;
            }

        } else {
            // DB connection failed — send to index if not already there
            if ($currentPage !== 'first.php') {
                header('Location: first.php');
                exit;
            }
        }

    } else {
        header('Location: error.php'); // DB constants not defined
        exit;
    }
}
?>