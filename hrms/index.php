<?php
if (file_exists(__DIR__ . '/indoConfig.php')) {
    // Only redirect if not already on login page
    if (basename($_SERVER['PHP_SELF']) !== 'login.php') {
        header("Location: login.php");
        exit();
    }
} else {
    // Only redirect if not already on setup page
    if (strpos($_SERVER['REQUEST_URI'], 'setup') === false) {
        header("Location: setup/index.php");
        exit();
    }
}
?>
