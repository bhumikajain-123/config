<?php

include 'db_connection.php';

// Step 1: Fetch saved values into an array
$saved_data = [];
$sql = "SELECT label, data FROM config_setups";
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $saved_data[$row['label']] = $row['data'];
    }
}

// Step 2: Handle form submit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $fields = [
        'database_name'       => 'database_name',
        'database_user'       => 'database_user',
        'database_password'   => 'database_password',
        'servername'          => 'server_name'
    ];

    foreach ($fields as $key => $label) {
        if (isset($_POST[$key])) {
            
            $value = $conn->real_escape_string($_POST[$key]);
            $label = $conn->real_escape_string($label);

            $check_sql = "SELECT id FROM config_setups WHERE label = '$label'";
            $check_result = $conn->query($check_sql);

            if ($check_result && $check_result->num_rows > 0) {
                $sql = "UPDATE config_setups SET data = '$value', status = 1 WHERE label = '$label'";
            } else {
                $sql = "INSERT INTO config_setups (label, data, status) VALUES ('$label', '$value', 1)";
            }

            if (!$conn->query($sql)) {
                echo "<h3>Error saving '$label': " . $conn->error . "</h3>";
            }
        }
    }

    header("Location: user_details");
    exit();
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
         <?php  include 'form/database_form.php'; ?>
        <!--==================================== -->
         </div>
    </div>
</div>
<div class="col-sm-3"></div>
</div>
</body>
</html>
