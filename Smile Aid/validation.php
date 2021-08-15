<?php
header('location:LogIn.html');
session_start();

$con = mysqli_connect('localhost', 'root', '');

mysqli_select_db($con, 'webpage');

$id = $_POST['id'];
$password = $_POST['password'];

$s= "select * from register where id= '$id' && password = '$password'";
$result = mysqli_query($con, $s);

$num = mysqli_num_rows($result);

if($num == 1){
	echo "Login Sucessful";
}
else{
    echo "INVALID ID/PASSWORD ";
	header('location:RegForm.html');
    
}
?>