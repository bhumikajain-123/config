<?php


// Path to config
//$configPath = __DIR__ . '/../indoConfig.php';
 
// Redirect to setup if config not found
// if (!file_exists($configPath)) {
   
//     header("Location: ../index.php");
//     exit;
// }
require_once __DIR__ . '/../indoConfig.php';
require_once __DIR__ . '/db_connect.php';
echo "ewrwer";
// Validate constants before use
if (!defined('DB_HOST') || !defined('DB_USER') || !defined('DB_PASS') || !defined('DB_NAME')) {
    die('Database configuration is missing.');
}

if (DB_HOST === '' || DB_USER === '' || DB_NAME === '') {
    die('Required DB credentials are empty.');
}

// Connect using constants
$conn = db_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if (!$conn) {
    header('Location: ../error.php');
    exit();
}

# echo "✅ DB Connected Successfully!"; die();


// Load default DB SQL if needed
$checkTableQuery = "SHOW TABLES LIKE 'indoadmin'";
$tableResult = $conn->query($checkTableQuery);


// Step 1: Load and run default SQL
$sqlFile = __DIR__ . '/../db/default-db.sql';
if (file_exists($sqlFile)) {
    $sqlContent = file_get_contents($sqlFile);

    if ($sqlContent !== false && !empty(trim($sqlContent))) {
        if ($conn->multi_query($sqlContent)) {
            // Clear out any remaining result sets
            while ($conn->more_results() && $conn->next_result()) {;}
        }
    }
}
// Step 2: Now check if 'indoadmin' table exists
$checkTableQuery = "SHOW TABLES LIKE 'indoadmin'";
$tableResult = $conn->query($checkTableQuery);

if ($tableResult && $tableResult->num_rows > 0) {
    echo "✅ 'indoadmin' table exists.";
} else {
    echo "❌ 'indoadmin' table does NOT exist.";
}

// Get form data
$email    = $_POST['email']    ?? '';
$username = $_POST['username'] ?? '';
$password = $_POST['password'] ?? '';
$role     = $_POST['role']     ?? 'superadmin';

// Hash password
#$hashedPassword = password_hash($password, PASSWORD_BCRYPT);
$hashedPassword = md5($password);

// Insert new user
$insertQuery = "INSERT INTO indoadmin (emailid, username, password, user_type) VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($insertQuery);
$stmt->bind_param("ssss", $email, $username, $hashedPassword, $role);

if ($stmt->execute()) {
    header("Location: ../login.php");
    exit;
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
