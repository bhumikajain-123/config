<?php
$configFilePath = 'indoConfig.php';

if (file_exists($configFilePath)) {
    require_once $configFilePath;

    // Get all defined constants, categorized
    $allConstants = get_defined_constants(true);

    echo "<strong>Loaded Config:</strong><br>";

    // Filter only constants that start with 'DB_'
    if (isset($allConstants['user'])) {
        foreach ($allConstants['user'] as $key => $value) {
            if (str_starts_with($key, 'DB_')) {
                echo htmlspecialchars($key) . ': ' . htmlspecialchars($value) . '<br>';
            }
        }
    }

    // Optional: Test DB connection if all DB constants exist
    if (defined('DB_HOST') && defined('DB_USER') && defined('DB_PASSWORD') && defined('DB_NAME')) {
        require_once 'db_connect.php';
        $conn = connectDatabase(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

        if ($conn) {

            # Check if table exists
            $sql = "SHOW TABLES LIKE 'indoadmin'";
            $result = $conn->query($sql);

            if ($result && $result->num_rows > 0) {
                echo  header('Location:  https://info.indovisionservices.in/v14//');
            } else {
                echo "<br>❌ Table 'indoadmin' does not exist.";
            }
            $conn->close();
        } else {
            // echo "❌ Database connection failed.";
            header('Location: index1.php');
            exit;
        }
    }

} else {
    // echo "❌ Configuration file not found.";
    header('Location: index1.php');
    exit;
}
