<?php
header("Access-Control-Allow-Origin: *");

$conn = new mysqli("localhost", "root", "", "weather_app");
$query = mysqli_query($conn, "select * from users");
$data = mysqli_fetch_all($query, MYSQLI_ASSOC);
echo json_encode($data);
?>