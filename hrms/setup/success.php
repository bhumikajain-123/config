<?php
require_once 'check_setup.php';

if (!file_exists(__DIR__ . '/../indoConfig.php')) {
    header('Location: db_config_form.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome-iHRMS Setup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="bg-light">
    <div class="container">
        <div class="card shadow wide-card">
            <div class="card-body">
                <div class="text-center mb-3">
                    <img src="assets/image/ihrms-logo.png" alt="ihrms logo" class="img-fluid">
                </div>
                <h5 class="card-title text-center text-primary mb-3">Welcome to iHRMS</h5>
                <h4>Setup Completed!</h4>
                <p>Your configuration has been saved successfully.</p>
            </div>
            <a href="../login.php" class="btn btn-success">Go to Login</a>
        </div>
    </div>
</body>
</html>