<?php

header('location:Hardrock cafe.html');


if(isset($_POST['submit'])){
$name = $_POST['name'];
$adate = $_POST['adate'];
$ddate = $_POST['ddate'];
$roomtype = $_POST['roomtype'];
$adults = $_POST['adults'];
$child = $_POST['child'];




$dbconnect = mysqli_connect('localhost', 'root', '', 'hardrock');

$sql = mysqli_query($dbconnect, "insert into roombook(name,adate, ddate, roomtype,adults,child) values('$name', '$adate', '$ddate','$roomtype', '$adults', '$child')");


if($sql){
	echo "Data inserted";
}

else{
 echo "Failed to connect";

}



}


?>