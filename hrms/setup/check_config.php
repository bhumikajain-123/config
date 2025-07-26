<?php
// check_config.php (inside setup/)
if (!file_exists(__DIR__ . '/indoConfig.php')) {
    // Redirect to setup page
    header('Location: index.php');
    exit;
}
?>
