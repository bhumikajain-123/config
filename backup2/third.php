<?php 
#$configFilePath = 'indoConfig.php';
#include_once 'frmaction/check_db_setup.php'; 
?>
<?php
// Include the setup check function
require_once 'setup_check.php';

// Perform the setup check
if (!checkSetupAndRedirect()) {
    // If the setup fails, user will be redirected already
    exit;
}else{ 
    #Your page logic here (if setup is valid)
    #echo "Setup is complete. You can access the page.";
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Installation - iHRMS Setup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="card shadow wide-card">
                <div class="text-center">
                    <img src="assets/image/ihrms-logo.png" alt="iHRMS Logo" class="img-fluid">
                    <h5 class="mt-4 text-primary">iHRMS Installation</h5>
                </div>
                <div class="card-body">
                    <p>
                        All right, sparky! You’ve made it through this part of the installation. iHRMS can now
                        communicate with your database. If you are ready, time now to…
                    </p>
                    <form method="post" action="fourth">
                        <button type="submit" class="btn btn-primary float-end">Run the installation</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<?php

