<?php 
// $configFilePath = 'indoConfig.php';
// include_once 'frmaction/check_db_setup.php'; 
?>
<?php
require_once 'setup_check.php';

// Just call the function — no need to check return
checkSetupAndRedirect();

// If function does not exit (which it always should), handle fallback
#echo "Unexpected fallback. Something went wrong.";
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
                <h5 class="card-title text-center text-primary mb-3">Welcome to ihrms</h5>
                <p class="text-center">Before getting started, you will need to know the following items.</p>
                <ol>
                    <li>Database name</li>
                    <li>Database username</li>
                    <li>Database password</li>
                    <li>Database host</li>
                </ol>
                <p>This information is being used to create a  file.
                    <strong>If this automatic file creation fails, don't worry.</strong>
                <a href="/config/first" class="btn btn-success float-end mt-3">Lets go!</a></p>
            </div>
        </div>
    </div>
</body>

</html>
<?php exit; ?>
