<?php
include 'db.php';

$reg_no = '2023-001';
$name = 'Baraka Mulimila';
$plain_password = 'test1234';
$gender = 'Male';
$is_approved = true;

// Hash the password
$hashed_password = password_hash($plain_password, PASSWORD_DEFAULT);

// Insert the test student into the database
$stmt = $conn->prepare("INSERT INTO students (reg_no, name, password, gender, is_approved) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("ssssi", $reg_no, $name, $hashed_password, $gender, $is_approved);

if ($stmt->execute()) {
    echo "Test student inserted successfully!";
} else {
    echo "Error: " . $stmt->error;
}
?>