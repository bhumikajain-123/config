<?php
require_once 'check_setup.php';
$msg = $_GET['msg'] ?? 'Unknown error occurred.';
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
                <p class="text-danger text-center"><?= htmlspecialchars($msg) ?></p>
            </div>
            <a href="db_config_form.php" class="btn btn-secondary">Go Back</a>
        </div>
    </div>
</body>
</html>