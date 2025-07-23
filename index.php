<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Database Setup Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .wide-card {
      max-width: 720px;
      margin: 40px auto;
      padding: 20px;
    }
    .wide-card img {
      width: 50px;
    }
    .wide-card ol,
    .wide-card p {
      font-size: 0.95rem;
    }
  </style>
</head>
<body class="bg-light">

  <div class="container">
    <div class="card shadow wide-card">
      <div class="card-body">

        <!-- Logo -->
        <div class="text-center mb-3">
          <img src="image/ihrms-logo.png" alt="ihrms logo" class="img-fluid">
        </div>

        <!-- Title -->
        <h5 class="card-title text-center mb-3">Database Configuration</h5>

        <!-- Form -->
        <form action="save_config.php" method="POST">
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
            <input type="text" class="form-control" id="db_host" name="db_host" value="localhost" required>
          </div>

          <!-- Buttons -->
          <div class="d-flex justify-content-between mt-4">
        
            <button type="submit" class="btn btn-primary float-end">Save Configuration</button>
          </div>
        </form>

      </div>
    </div>
  </div>

</body>
</html>
