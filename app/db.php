<?php
$host = getenv("MYSQLHOST") ?: "db";
$user = getenv("MYSQLUSER") ?: "root";
$pass = getenv("MYSQLPASSWORD") ?: "";
$db   = getenv("MYSQLDATABASE") ?: "hostel_system";
$port = (int)(getenv("MYSQLPORT") ?: 3306);

$tries = 5;

while ($tries > 0) {
    $conn = new mysqli($host, $user, $pass, $db, $port);
    if ($conn->connect_error) {
        echo "Waiting for MySQL... (" . $conn->connect_error . ")\n";
        sleep(3);
        $tries--;
    } else {
        break;
    }
}

if ($conn->connect_error) {
    die("Connection failed after retries: " . $conn->connect_error);
}
?>
