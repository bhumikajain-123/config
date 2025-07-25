<?php
$configFilePath = 'indoConfig.php';
if (file_exists($configFilePath)) {
    echo '<div style="border:1px solid #f00;padding:15px;margin:20px;color:#a00;">
    <strong>The file <code>indoConfig.php</code> already exists.</strong><br>
    If you need to reset any of the configuration items in this file, please delete it first. 
    You may try <a href="fourth">installing now</a>.
    </div>';
    exit;
}
?>