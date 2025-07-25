<?php

function checkSetupAndRedirect() {
    // Path to your config file
    $configFilePath = 'indoConfig.php';

    // Check if config file exists
    if (!file_exists($configFilePath)) {
        header('Location: error.php?error=config_missing');
        exit;
    }

    require_once $configFilePath;

    // Get all defined constants
    $allConstants = get_defined_constants(true);

    // Check if necessary DB constants are defined
    if (defined('DB_HOST') && defined('DB_USER') && defined('DB_PASSWORD') && defined('DB_NAME')) {
        require_once 'db_connect.php';

        // Try to connect to the database
        $conn = connectDatabase(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

        if ($conn) {
            // Check if required table exists
            $sql = "SHOW TABLES LIKE 'indoadmin'";
            $result = $conn->query($sql);

            if ($result && $result->num_rows > 0) {
                // Everything is set up correctly, return true Login Page Here
                header('Location: https://info.indovisionservices.in/v14/');
                return true;
            } else {
                // Table 'indoadmin' does not exist, redirect to error page
                $conn->close();
                header('Location: error.php?error=missing_table');
                exit;
            }
        } else {
            // DB connection failed, redirect to login page
            header('Location: index');
            exit;
        }
    } else {
        // DB constants are not defined, redirect to error page
        header('Location: error');
        exit;
    }
}

?>
