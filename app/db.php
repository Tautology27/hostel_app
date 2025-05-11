<?php
<<<<<<< HEAD
$host = "db";  // Docker service name for the database
$user = "root";
$password = "rootpass";  // This must match the MYSQL_ROOT_PASSWORD in docker-compose
$database = "hotel_db";
$port = 3306;

$conn = new mysqli($host, $user, $password, $database, $port);
=======
// Read database connection info from environment variables
$host = getenv("MYSQLHOST") ?: "localhost";
$user = getenv("MYSQLUSER") ?: "root";
$pass = getenv("MYSQLPASSWORD") ?: "";
$db   = getenv("MYSQLDATABASE") ?: "hotel_db";
$port = getenv("MYSQLPORT") ?: 3306;

// Connect to MySQL
$conn = new mysqli($host, $user, $pass, $db, $port);
>>>>>>> 6e94af15e35d8579eef59e3d908fde7881c256b4

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
