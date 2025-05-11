<?php
// Check if running in Railway (REMOTE_ENV will usually be set)
$isRailway = getenv("RAILWAY_ENVIRONMENT") !== false;

$host = $isRailway ? getenv("MYSQLHOST") : "db";
$user = $isRailway ? getenv("MYSQLUSER") : "root";
$pass = $isRailway ? getenv("MYSQLPASSWORD") : "rootpass";
$db   = $isRailway ? getenv("MYSQLDATABASE") : "hotel_db";
$port = $isRailway ? getenv("MYSQLPORT") : 3306;

$conn = new mysqli($host, $user, $pass, $db, $port);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
