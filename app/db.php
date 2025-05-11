<?php
$host = getenv("MYSQLHOST");
$user = getenv("MYSQLUSER");
$pass = getenv("MYSQLPASSWORD");
$db   = getenv("MYSQLDATABASE");
$port = (int)(getenv("MYSQLPORT") ?: 3306); // convert port to integer

$tries = 5;

while ($tries > 0) {
    $conn = @new mysqli($host, $user, $pass, $db, $port);
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
