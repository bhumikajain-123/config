<?php
include 'db_connection.php';


// Check if database exists
$db_exists = $conn->select_db($dbname);
if (!$db_exists) {
    die("<h3>Database 'table_config' does not exist. Please create the database first.</h3>");
}


// Check table existence
$tableCheck = $conn->query("SHOW TABLES LIKE 'config_setups'");
if ($tableCheck->num_rows == 0) {
    // Table doesn't exist — create it
    $createTableSQL = "CREATE TABLE `config_setups` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `label` varchar(200) NOT NULL,
        `data` varchar(200) NOT NULL,
        `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
        `status` tinyint(1) NOT NULL,
        PRIMARY KEY (`id`)
    )";
    if (!$conn->query($createTableSQL)) {
        die("<h3>Error creating table: " . $conn->error . "</h3>");
    }
}
//=========================================================================================================
// Count rows
$sql = "SELECT * FROM config_setups WHERE status IN (0, 1) LIMIT 13";
$result = $conn->query($sql);
$rowCount = ($result) ? $result->num_rows : 0;

if ($rowCount != 13) {
    // Not setup
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Redirecting...</title>
      <script>
        let countdown = 5; // Starting countdown value
        function startRedirectCountdown() {
            const countdownElement = document.getElementById('countdown');
            countdownElement.innerText = countdown;
            const interval = setInterval(() => {
                countdown--;
                if (countdown > 0) {
                    countdownElement.innerText = countdown;
                } else {
                    clearInterval(interval);
                    window.location.href = "setup"; // Redirect after countdown
                }
            }, 1000);
        }
        window.onload = startRedirectCountdown;
    </script>
        <?php include 'fragment/header_script.php'; ?>
    </head>
    <body>
<!-- Timer Here -->
    <div class="container mt-5 text-center">
        <div class="alert alert-warning">
            You have not setup all details.<br>
            Redirecting to setup page in <strong><span id="countdown">5</span> seconds</strong>...
        </div>
    </div>
    <!-- end timer -->
    </body>
    </html>
    <?php
    exit;
}
?>

<!-- Only runs if rowCount == 13 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Configuration</title>
    <?php include 'fragment/header_script.php'; ?>
     <script>
        let countdown = 5; // seconds
        function startRedirectCountdown() {
            const countdownElement = document.getElementById('countdown');
            const interval = setInterval(() => {
                countdown--;
                countdownElement.innerText = countdown;
                if (countdown <= 0) {
                    clearInterval(interval);
                    window.location.href = "setup"; // Redirect
                }
            }, 1000);
        }
        window.onload = startRedirectCountdown;
    </script>
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6 frm-top">
            <?php include 'form/already_configured.php'; ?>
        </div>
        <div class="col-sm-3"></div>
    </div>
</div>
</body>
</html>
