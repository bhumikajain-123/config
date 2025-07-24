<?php 
require_once '../indoConfig.php';      // DB credentials
require_once '../db_connect.php';      // connectDatabase function

// Get form data
$title    = trim($_POST['title'] ?? '');
$username = trim($_POST['username'] ?? '');
$password = trim($_POST['password'] ?? '');
$email    = trim($_POST['email'] ?? '');

// Basic validation
if (!$title || !$username || !$password || !$email) {
    die("All fields are required.");
}

// Connect using indoConfig.php
$conn = connectDatabase(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
if (!$conn) {
    die("Database connection failed.");
}

// 1. Create indoadmin table
$createIndoAdminTable = "CREATE TABLE IF NOT EXISTS `indoadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indo_code` varchar(30) NOT NULL,
  `user_type` enum('superadmin','admin','Joined','Offered','Resign','OfferRejected','assets','salary','Pending') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `verticalHead` enum('all','College Sales','corporate training','IT manpower','telecom manpower','corporate office','enterprise','assets','salary','none') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'none',
  `company` set('all','Indovision Service Pvt Ltd','Indovision Consultancy Pvt Ltd','samsung','vodafone','none') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fullName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `emailid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile_number` varchar(11) DEFAULT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `firebase_token` varchar(255) DEFAULT NULL,
  `allow_app` int(11) NOT NULL DEFAULT 1 COMMENT '1 -> Allow, 0 -> Disallow',
  `resetKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `imei_number` varchar(400) DEFAULT NULL,
  `device_detail` text DEFAULT NULL,
  `version_name` float DEFAULT NULL,
  `force_logout` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=yes,0=no',
  `last_login` datetime DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;";

$conn->query($createIndoAdminTable);

// 2. Insert initial superadmin record
$hashedPassword = md5($password);

$usernameEscaped = $conn->real_escape_string($username);
$passwordEscaped = $conn->real_escape_string($hashedPassword);
$emailEscaped    = $conn->real_escape_string($email);
$titleEscaped    = $conn->real_escape_string($title);

// Check if superadmin already exists
$checkQuery = "SELECT COUNT(*) as count FROM indoadmin WHERE user_type = 'superadmin'";
$result = $conn->query($checkQuery);
$row = $result->fetch_assoc();

if ((int)$row['count'] === 0) {
    $insertQuery = "INSERT INTO indoadmin (
        indo_code, user_type, verticalHead, company, username, password, fullName, emailid, resetKey
    ) VALUES (
        'INDO001', 'superadmin', 'none', 'none',
        '$usernameEscaped', '$passwordEscaped', '$titleEscaped', '$emailEscaped', ''
    )";
    $conn->query($insertQuery);
}

$conn->close();
header("Location: ../success");
exit;
?>
