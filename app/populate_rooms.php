<?php
include 'db.php';

// Clear existing rooms
$conn->query("DELETE FROM rooms");

// 6A and 6B: G01-G30, 101-130, 201-230
function addRooms($block, $gender, $conn) {
    // G01–G30
    for ($i = 1; $i <= 30; $i++) {
        $room_no = 'G' . str_pad($i, 2, '0', STR_PAD_LEFT);
        $floor = 0;
        insertRoom($conn, $room_no, $block, $floor, $gender);
    }

    // 101–130
    for ($i = 101; $i <= 130; $i++) {
        insertRoom($conn, "$i", $block, 1, $gender);
    }

    // 201–230
    for ($i = 201; $i <= 230; $i++) {
        insertRoom($conn, "$i", $block, 2, $gender);
    }
}

// 8C (Male) - 110 rooms over 4 floors
function addRooms8C($conn) {
    $block = '8C';
    $gender = 'Female';
    $total = 110;
    $per_floor = floor($total / 4);
    $room_num = 1;

    for ($floor = 1; $floor <= 4; $floor++) {
        for ($i = 0; $i < $per_floor; $i++) {
            if ($room_num > $total) break;
            $room_no = $block . '-' . str_pad($room_num, 3, '0', STR_PAD_LEFT);
            insertRoom($conn, $room_no, $block, $floor, $gender);
            $room_num++;
        }
    }
}

// 8D (Female) - 100 rooms over 4 floors
function addRooms8D($conn) {
    $block = '8D';
    $gender = 'Female';
    $total = 100;
    $per_floor = floor($total / 4);
    $room_num = 1;

    for ($floor = 1; $floor <= 4; $floor++) {
        for ($i = 0; $i < $per_floor; $i++) {
            if ($room_num > $total) break;
            $room_no = $block . '-' . str_pad($room_num, 3, '0', STR_PAD_LEFT);
            insertRoom($conn, $room_no, $block, $floor, $gender);
            $room_num++;
        }
    }
}

// NewBlock (Both) - 115 rooms over 5 floors
function addNewBlock($conn) {
    $block = 'NewBlock';
    $gender = 'Both';
    $room_ranges = [
        [1, 23],   // Floor 1
        [24, 46],  // Floor 2
        [47, 69],  // Floor 3
        [70, 92],  // Floor 4
        [93, 115]  // Floor 5
    ];

    foreach ($room_ranges as $floor => $range) {
        for ($i = $range[0]; $i <= $range[1]; $i++) {
            $room_no = $block . '-' . str_pad($i, 3, '0', STR_PAD_LEFT);
            insertRoom($conn, $room_no, $block, $floor + 1, $gender);
        }
    }
}

// Insert function
function insertRoom($conn, $room_no, $block, $floor, $gender) {
    $stmt = $conn->prepare("INSERT INTO rooms (room_no, block, floor, gender) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssis", $room_no, $block, $floor, $gender);
    $stmt->execute();
}

// Add all rooms
addRooms('6A', 'Male', $conn);
addRooms('6B', 'Male', $conn);
addRooms8C($conn);
addRooms8D($conn);
addNewBlock($conn);

echo "✅ Rooms populated successfully.";
?>
