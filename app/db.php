<?php
$host = getenv("MYSQLHOST") ?: "db";
$user = getenv("MYSQLUSER") ?: "root";
$pass = getenv("MYSQLPASSWORD") ?: "rootpass";
$db   = getenv("MYSQLDATABASE") ?: "hotel_db";
$port = getenv("MYSQLPORT") ?: 3306;

$conn = new mysqli($host, $user, $pass, $db, $port);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
