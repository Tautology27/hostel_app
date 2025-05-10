<?php
$host = 'db'; // service name, not localhost
$user = 'root';
$password = 'rootpass'; // must match MYSQL_ROOT_PASSWORD
$dbname = 'hotel_db';   // must match MYSQL_DATABASE

$conn = new mysqli($host, $user, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
