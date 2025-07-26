<?php 


#####################################[ start ]#####################################
define('DB_NAME', 'database_name_here');

/** Database username */
define('DB_USER', 'username_here');

/** Database password */
define('DB_PASSWORD', 'password_here');

/** Database hostname **/
define('DB_HOST', 'localhost');

/** Database charset to use in creating database tables. */
define('DB_CHARSET', 'utf8' );

// if ($_SERVER['HTTP_HOST'] == 'localhost' || $_SERVER['REMOTE_ADDR'] == '127.0.0.1') {
//     ####### Code for Localhost #######
//     $db_user = "";
//     $db_password = "";
//     $database_name = "";
//     $conn = mysqli_connect("localhost",$db_user,$db_password,$database_name);
//     defined("BASE_URL") OR define("BASE_URL", "");
// } else {
//     ########## Code for Server ##########
//     $db_user = "";
//     $db_password = "";
//     $database_name = "";
//     $conn = mysqli_connect("localhost",$db_user,$db_password,$database_name);
//     defined("BASE_URL") OR define("BASE_URL", "");
// }

######################################################################################


define("INDOSALT", "");
define('ACCESS_KEY','');
date_default_timezone_set("Asia/Kolkata");
define('CURRENT_DATETIME',date('Y-m-d H:i:s')); 
define('BASE_DIR', realpath(__DIR__));

$basedir = realpath(__DIR__);


$siteUrl = "http://" . $_SERVER['HTTP_HOST'] . str_replace($_SERVER['DOCUMENT_ROOT'], '', str_replace('\\', '/', __DIR__));

$tableAr = array('emp_personal_info','emp_qualification_info','emp_workexp_info','emp_bankdetails_info');
$darate = '250';
$bikepr_KmsRate = '5';

$monthAr = ['01','02','03','04','05','06','07','08','09','10','11','12'];

$expstagesarr = ['submitted'=>'1. Documents submitted','courier_received'=>'2. Courier Received ','verification'=>'3a. Documents Verified','verification failed'=>'3b. Verification Failed','stage2_submit_customer_submit'=>'4. Submitted to Stage-2 (Customer)','stage2_customer_confirmation'=>'5a. Stage-2 confirmation done','stage2_customer_confirmation failed'=>'5b. Customer verification failed ','stage3_invoice_submit'=>'6. Submitted with invoice','stage3_rfaconfirmation'=>'7a. RFA Generated Confirmed','stage3_rfaconfirmation failed'=>'7b. RFA Rejected Rectification Required','sendforpayment'=>'8. Send For Payment','paymentdone'=>'9. Payment Done','close'=>'Close'];

$leaves_inc_interval = ['1'=>'Monthly','2'=>'Quarterly','3'=>'Half Yearly','4'=>'Yearly'];
define('LEAVE_QUOTA_INCREASE_INTERVAL',serialize($leaves_inc_interval));

#require_once('pdo/database.php');



# 15-2-25 : Enable Custom Error Reporting & Error Handler
error_reporting(E_ALL);
ini_set('display_errors', 1);

set_error_handler(function($errno, $errstr, $errfile, $errline) {
    echo "<div style='border:1px solid red; padding:10px; background:#fdd; color:#900;margin-top:2px;    box-shadow: inset -1px 1px 20px 20px #49494930;'>
            <strong>Error:</strong> [$errno] $errstr <br>
            <strong>File:</strong> $errfile <br>
            <strong>Line:</strong> $errline 
          </div>";
});
#End custom Error
?>