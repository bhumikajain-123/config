
<?php include_once 'frmaction/done_db_setup.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Database configuration-iHRMS Setup</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="bg-light">

    <div class="container">
        <div class="row">
            <div class="card shadow wide-card">
                <div class="text-center ">
                    <img src="assets/image/ihrms-logo.png" alt="ihrms logo" class="img-fluid">
                </div>

                <!-- Title -->
                <h5 class="card-title text-center text-primary mt-2">Database Configuration</h5>
                <?php
                    include (file_exists('indoConfig.php') ? 'indoConfig.php' : 'sample-indoConfig.php');
                   
                ?>
                <!-- Form -->
                <form action="frmaction/db_configure_frm.php" method="POST">

                    <div class="mb-3">
                        <label for="db_name" class="form-label">Database Name</label>
                        <input type="text" class="form-control" id="db_name" name="db_name" required>
                    </div>

                    <div class="mb-3">
                        <label for="db_user" class="form-label">Username</label>
                        <input type="text" class="form-control" id="db_user" name="db_user" required>
                    </div>

                    <div class="mb-3">
                        <label for="db_pass" class="form-label">Password</label>
                        <input type="password" class="form-control" id="db_pass" name="db_pass">
                    </div>

                    <div class="mb-3">
                        <label for="db_host" class="form-label">Database Host</label>
                        <input type="text" class="form-control" id="db_host" name="db_host" value="<?php  echo defined('DB_HOST') ? htmlspecialchars(DB_HOST) : '' ?>" required>
                    </div>

                    <!-- Buttons -->
                    <input type="submit" class="btn btn-primary float-end">
                </form>
            </div>
        </div>
    </div>



</body>

</html>