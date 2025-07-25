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
    <title>iHRMS Setup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="card shadow wide-card">
                <div class="text-center ">
                    <img src="assets/image/ihrms-logo.png" alt="ihrms logo" class="img-fluid">
                </div>
                <h2 class="text-center text-success mt-5">Success</h2>
                 <div class="card-body text-center">
                    <p class="text-success fw-bold">iHRMS has been installed.Thankyou and enjoy!  </p>
                    <a href="https://info.indovisionservices.in/v14//" class="btn btn-primary">Log in</a>
                </div>
            </div>
        </div>
    </div>
</body>

</html>