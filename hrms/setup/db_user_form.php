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

                <form action="user_frm_action.php" method="post">
                        <div class="mb-3 d-none">
                            <label for="title" class="form-label">Base url</label>
                            <input type="text" id="role" name="role" class="form-control" readonly
                                value="<?php echo "superadmin" ?>" required>

                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" id="email" name="email" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" id="username" name="username" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <div class="input-group">
                                <input type="password" id="password" name="password" class="form-control" required>
                                <button class="btn btn-outline-secondary" type="button" onclick="togglePassword()">
                                    <i class="bi bi-eye" id="toggleIcon"></i>
                                </button>
                            </div>
                        </div>

                        <!-- Bootstrap 5 Icons CDN (required for eye icon) -->
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
                            rel="stylesheet">

                        <script>
                        function togglePassword() {
                            const password = document.getElementById("password");
                            const icon = document.getElementById("toggleIcon");

                            if (password.type === "password") {
                                password.type = "text";
                                icon.classList.remove("bi-eye");
                                icon.classList.add("bi-eye-slash");
                            } else {
                                password.type = "password";
                                icon.classList.remove("bi-eye-slash");
                                icon.classList.add("bi-eye");
                            }
                        }
                        </script>
                        <button type="submit" class="btn btn-primary float-end">Install iHRMS</button>
                    </form>
            </div>
        </div>
    </div>
</body>
</html>