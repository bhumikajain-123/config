<?php
// Base URL
$base_url = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http")
          . "://" . $_SERVER['HTTP_HOST']
          . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/') . '/';

// 1. CONNECT
include 'db_connection.php'; // creates $conn (mysqli)

// 2. LOAD SAVED VALUES
$saved_data = [];
$sql = "SELECT label, data FROM config_setups WHERE status = 1";
$result = $conn->query($sql);

if ($result && $result->num_rows) {
    while ($row = $result->fetch_assoc()) {
        $saved_data[$row['label']] = $row['data']; // Example: $saved_data['user_name'] = 'admin'
    }
}

// 3. HANDLE FORM SUBMIT
if ($_SERVER["REQUEST_METHOD"] === "POST") {

    // Map form-input-name => label-to-store-in-DB
    $fields = [
        'site_url'       => 'base_url',
        'user_name'      => 'user_name',
        'user_password'  => 'user_password',
        'user_email_id'  => 'user_email'
    ];

    foreach ($fields as $inputName => $label) {

        // Skip if not submitted
        if (!isset($_POST[$inputName])) continue;

        // Get value
        $value = $_POST[$inputName];

        // 🔐 If password, hash it
        if ($inputName === 'user_password') {
            $value = md5($value); // ⚠️ For better security, use password_hash() instead
        }

        // Escape for SQL
        $valueEsc = $conn->real_escape_string($value);
        $labelEsc = $conn->real_escape_string($label);

        // Check if label exists
        $check = $conn->query("SELECT id FROM config_setups WHERE label = '$labelEsc'");

        // Update or Insert
        if ($check && $check->num_rows) {
            $sql = "UPDATE config_setups
                       SET data = '$valueEsc',
                           status = 1,
                           created_at = CURRENT_TIMESTAMP
                    WHERE label = '$labelEsc'";
        } else {
            $sql = "INSERT INTO config_setups (label, data, status)
                    VALUES ('$labelEsc', '$valueEsc', 1)";
        }

        // Execute query
        if (!$conn->query($sql)) {
            echo "<h3 style='color:red'>Error saving $label: " . $conn->error . "</h3>";
        }
    }

    // All good → redirect
    header("Location: mail_configure");
    exit;
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Configuration</title>
   <?php include 'fragment/header_script.php';?>
</head>
<body>
<div class="container mt-5">
  <div class="row">
        <div class="col-sm-3"></div>
         <div class="col-sm-6 frm-top">
        <!--==================================== -->
           <?php   include 'form/user_detail_form.php' ;  ?>
        <!--==================================== -->
         </div>
    </div>
</div>
<div class="col-sm-3"></div>
</div>
</body>
</html>