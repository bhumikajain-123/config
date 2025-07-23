<?php
include 'db_connection.php'; // $conn must be defined

// 1. Fetch saved config values
$saved_data = [];
$sql = "SELECT label, data FROM config_setups";
$result = $conn->query($sql);
if ($result && $result->num_rows) {
    while ($row = $result->fetch_assoc()) {
        $saved_data[$row['label']] = $row['data'];
    }
}

// 2. Handle form submit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fields = [
        'mailsetup_email'       => 'mailsetup_email',
        'mailsetup_password'    => 'mailsetup_password',
        'mailsetup_host'        => 'mailsetup_host',
        'mailsetup_port'        => 'mailsetup_port',
        'mailsetup_encryption'  => 'mailsetup_encryption'
    ];

    foreach ($fields as $input => $label) {
        if (isset($_POST[$input])) {
            $value = $conn->real_escape_string($_POST[$input]);
            $label = $conn->real_escape_string($label);

            // Check if it exists
            $check = $conn->query("SELECT id FROM config_setups WHERE label = '$label'");
            if ($check && $check->num_rows > 0) {
                $sql = "UPDATE config_setups SET data = '$value', status = 1 WHERE label = '$label'";
            } else {
                $sql = "INSERT INTO config_setups (label, data, status) VALUES ('$label', '$value', 1)";
            }

            if (!$conn->query($sql)) {
                echo "<h3>Error saving '$label': " . $conn->error . "</h3>";
            }
        }
    }

    header("Location: success_setup");
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
           <?php   include 'form/mail_configure_form.php' ;  ?>
        <!--==================================== -->
         </div>
    </div>
</div>
<div class="col-sm-3"></div>
</div>
</body>
</html>