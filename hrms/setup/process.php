<?php
require_once 'db_connect.php';

$db_host = $_POST['db_host'] ?? '';
$db_name = $_POST['db_name'] ?? '';
$db_user = $_POST['db_user'] ?? '';
$db_pass = $_POST['db_pass'] ?? '';

$conn = db_connect($db_host, $db_user, $db_pass, $db_name);

if (!$conn) {
    header("Location: error.php?msg=Could not connect to the database.");
    exit;
}

$configContent = "<?php\n";
$configContent .= "define('DB_HOST', '$db_host');\n";
$configContent .= "define('DB_USER', '$db_user');\n";
$configContent .= "define('DB_PASS', '$db_pass');\n";
$configContent .= "define('DB_NAME', '$db_name');\n";
$configContent .= "?>";

file_put_contents(__DIR__ . '/../indoConfig.php', $configContent);
header("Location: success.php");
exit;
?>
