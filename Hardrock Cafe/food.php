<?php

header('location:1.html');

if(isset($_POST['submit'])){
$name = $_POST['name'];
$phone = $_POST['phone'];
$time = $_POST['time'];
$specials = $_POST['specials'];
$starters = $_POST['starters'];
$burgers = $_POST['burgers'];
$sandwiches = $_POST['sandwiches'];
$salads = $_POST['salads'];
$deserts = $_POST['deserts'];
$milkshakes = $_POST['milkshakes'];
$mocktails = $_POST['mocktails'];


$dbconnect = mysqli_connect('localhost', 'root', '', 'hardrock');

$sql = mysqli_query($dbconnect, "insert into orderfood(name,phone,time,specials,starters,burgers,sandwiches,salads,deserts,milkshakes,mocktails) values('$name', '$phone', '$time', '$specials', '$starters', '$burgers', '$sandwiches', '$salads', '$deserts', '$milkshakes', '$mocktails')");


if($sql){
	echo "Data inserted";
}

else{
 echo "Failed to connect";

}



}


?>