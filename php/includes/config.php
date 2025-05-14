<?php

$host = $_ENV["DB_HOST"] ?? "mysql-container";
$dbusername = $_ENV["DB_USER"] ?? "root";
$dbpassword = $_ENV["DB_PASS"] ?? "root";
$dbname = $_ENV["DB_DATABASE"] ?? "test";


$conn = mysqli_connect($host, $dbusername, $dbpassword, $dbname);

// var_dump($conn);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    // echo "Connected successfully";
}
?>
