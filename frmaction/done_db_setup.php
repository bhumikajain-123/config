<?php
# Here check if indoconfig exith then below code run if not then not show
$configFilePath = 'indoConfig.php';
if (file_exists($configFilePath)) { ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>installation-iHRMS Setup </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <body>
        <div class="container">
            <div class="row">
                <div class="card shadow wide-card">
                    <div class="text-center ">
                        <img src="assets/image/ihrms-logo.png" alt="ihrms logo" class="img-fluid">
                        <h5 class="mt-4 text-primary"> iHRMS Installation Error</h5>
                    </div>
                    <div class="card-body">
                                <?php echo '<div style="border:1px solid #f00;padding:15px;margin:20px;color:#a00;">
                                <strong>The file <code>indoConfig.php</code> already exists.</strong><br>
                                If you need to reset any of the configuration items in this file, please delete it first. 
                                You may try <a href="fourth">installing now</a>.
                                </div>'; ?>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<?php exit; } ?>