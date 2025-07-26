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
                <p>The database server could be connected to (which means your username and password is okay) but
                    the
                    mysqli database could not be selected.</p>
                <ul>
                    <li> Are you sure it exists?</li>

                    <li>Does the user ravi have permission to use the mysqli database?</li>

                    <li>On some systems the name of your database is prefixed with your username, so it would be
                        like
                        username_mysqli. Could that be the problem?</li>
                </ul>
                <p> If you do not know how to set up a database you should <strong>contact your host.</strong> If
                    all else fails you may find help at the<a href="#"> ihrms support forums.</a></p>
                <a href="db_config_form.php" class="btn btn-primary float-end">Try Again</a>
                <p class="text-danger text-center"><?php #echo htmlspecialchars($msg) ?></p>
            </div>
        </div>
    </div>
</body>

</html>