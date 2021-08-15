<?php

header('location:Login.html');

if(isset($_POST['submit'])){
$name = $_POST['name'];
$phone = $_POST['phone'];
$gender = $_POST['gender'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];
$address = $_POST['address'];


$dbconnect = mysqli_connect('localhost', 'root', '', 'hardrock');

$sql = mysqli_query($dbconnect, "insert into register(name,phone,gender,email,username,password,address) values('$name', '$phone', '$gender', '$email', '$username', '$password', '$address')");


if($sql){
	echo "Data inserted";
}

else{
 echo "Failed to connect";

}



}



















?>
