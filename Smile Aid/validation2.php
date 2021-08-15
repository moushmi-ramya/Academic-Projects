<?php
header('location:quiz.html');
session_start();

$con = mysqli_connect('localhost', 'root', '');

mysqli_select_db($con, 'webpage');

$Uid = $_POST['Uid'];
$Password = $_POST['Password'];

$s= "select * from ilogin where Uid= '$Uid' && password = '$Password'";
$result = mysqli_query($con, $s);

$num = mysqli_num_rows($result);

if($num == 1){
	echo "Login Sucessful";
}
else{
    echo "INVALID ID/PASSWORD ";
	header('location:Studlogin.html');
    
}
?>