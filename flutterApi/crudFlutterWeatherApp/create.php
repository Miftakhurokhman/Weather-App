<?php
header("Access-Control-Allow-Origin: *");

$conn = new mysqli("localhost", "root", "", "weather_app");

$nama = $_POST["nama"];
$username = $_POST["username"];
$password = $_POST["password"];
$nim = $_POST["nim"];
$kelas = $_POST["kelas"];
$tempatDefault = $_POST["tempatDefault"];
$idTempat = $_POST["idTempat"];
$longitude = $_POST["longitude"];
$latitute = $_POST["latitute"];
$kesanPesan = $_POST["kesanPesan"];

mysqli_query($conn, "insert into users set nama='$nama', username='$username', password='$password', nim='$nim', kelas='$kelas', tempatDefault='$tempatDefault', idTempat='$idTempat', longitude='$longitude', latitute='$latitute', kesanPesan='$kesanPesan'")
?>