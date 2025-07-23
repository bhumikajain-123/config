<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WordPress Setup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    .wide-card {
        max-width: 720px;
        /* Increased width */
        margin: 40px auto;
        padding: 20px;
    }

    .wide-card img {
        width: 50px;
        /* Increased image size */
    }
     .wide-card ol,
    .wide-card p {
        font-size: 0.95rem;
    }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="card shadow wide-card">
                <img src="image/ihrms-logo.png" alt="ihrms logo" class="img-fluid ">
                <h2>Cannot select database</h2>
                <hr>
                <div class="card-body">
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
                    <a href="#" class="btn btn-primary float-end">Try Again</a>
                </div>
            </div>
        </div>
    </div>
</body>

</html>