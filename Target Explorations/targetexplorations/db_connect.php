<?php 	
$localhost = "localhost";
$username = "stech18";
$password = "Stech$18";
$dbname = "targetex";

$localhost = "localhost";
$username = "root";
$password = "";
$dbname = "targetex";

$conn = new mysqli($localhost, $username, $password, $dbname);
if($conn->connect_error) {
  die("Connection Failed : " . $conn->connect_error);
} 
else {
  
}
?>