<?php require_once 'check_setup.php'; ?>
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

                <form method="post" action="process.php">
                    <div class="mb-3">
                        <label>Database Host</label>
                        <input type="text" name="db_host" class="form-control" required value="localhost">
                    </div>
                    <div class="mb-3">
                        <label>Database Name</label>
                        <input type="text" name="db_name" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label>Database User</label>
                        <input type="text" name="db_user" class="form-control" required value="root">
                    </div>
                    <div class="mb-3">
                        <label>Database Password</label>
                        <input type="password" name="db_pass" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Install</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>