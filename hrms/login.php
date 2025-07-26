<?php
// Don’t redirect again inside login
if (!file_exists(__DIR__ . '/indoConfig.php')) {
    header("Location: setup/index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
</head>
<body>
    <h1>Welcome to HRMS Login</h1>
</body>
</html>
