<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "sgsits_parking";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname,3307);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully";
?>