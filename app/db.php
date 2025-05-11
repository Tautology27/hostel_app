<?php
$host = "db";  // Docker service name for the database
$user = "root";
$password = "rootpass";  // This must match the MYSQL_ROOT_PASSWORD in docker-compose
$database = "hotel_db";
$port = 3306;

$conn = new mysqli($host, $user, $password, $database, $port);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
