<?php
// setup/check_setup.php

// If setup already completed, redirect user to login
if (file_exists(__DIR__ . '/../indoConfig.php')) {
    header("Location: ../login.php");
    exit;
}
?>
