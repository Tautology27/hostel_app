-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hostel_system;
USE hostel_system;

-- Drop tables if they exist
DROP TABLE IF EXISTS rooms;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS admins;

-- Admins Table
CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Insert default admin (username: admin, password: admin123)
INSERT INTO admins (username, password) VALUES (
    'admin',
    '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEaipAhHURpWtl78ZMF8F3fAL.5e'
);

-- Students Table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    reg_no VARCHAR(14) NOT NULL UNIQUE,
    gender ENUM('Male', 'Female') NOT NULL,
    password VARCHAR(255) NOT NULL,
    is_approved TINYINT(1) DEFAULT 0
);

-- Rooms Table
CREATE TABLE rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_no VARCHAR(10) NOT NULL,
    block VARCHAR(20) NOT NULL,
    floor INT NOT NULL,
    gender ENUM('Male', 'Female', 'Both') NOT NULL,
    is_taken TINYINT(1) DEFAULT 0,
    student_id INT DEFAULT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE SET NULL
);

-- Indexes for performance
CREATE INDEX idx_student_reg_no ON students(reg_no);
CREATE INDEX idx_block ON rooms(block);

-- Optional default room setup (empty for now — use a PHP script to populate based on your floor rules)
