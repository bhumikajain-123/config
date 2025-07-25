<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Userdetails-iHRMS Setup</title>
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
                        <h5 class="mt-4 text-primary">Page Not Found</h5>
                        <?php
                            # Login page if page not found
                            http_response_code(404);
                            header('Location: https://info.indovisionservices.in/v14/');
                            #echo "<h1 class='text-center'>404 - Page Not Found</h1><p>This page does not exist.</p>";
                        ?>
                    </div>

                </div>
            </div>
        </div>
        </div>
    </body>
</html>
</body>