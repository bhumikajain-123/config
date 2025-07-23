<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WordPress Setup</title>
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
                <h5 class="card-title text-center mb-3">Welcome to ihrms</h5>
                <p class="text-center">Before getting started, you will need to know the following items.</p>

                <ol>
                    <li>Database name</li>
                    <li>Database username</li>
                    <li>Database password</li>
                    <li>Database host</li>
                </ol>

                <p>This information is being used to create a <code>wp-config.php</code> file.
                    <strong>If this automatic file creation fails, don't worry.</strong>
                    You can edit <code>wp-config-sample.php</code> manually and rename it to <code>wp-config.php</code>.
                    Need more help? <a href="#">Read the support article on wp-config.php</a>.
                </p>

                <p>If you don't have this info, contact your hosting provider. If you're ready...</p>

                <a href="/config/first" class="btn btn-success float-end">Lets go!</a>

            </div>
        </div>
    </div>
</body>

</html>