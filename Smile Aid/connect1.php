<?php
header('location:LogIn.html');
    $name = $_POST['name'];
    $class = $_POST['class'];
    $age = $_POST['age'];
    $sid = $_POST['sid'];
    $gender = $_POST['gender'];

$connect = new mysqli('localhost', 'root', '', 'webpage');
if($connect->connect_error){
    die('Connection Failed :' .$conn->connect_error);
}
else{
    $stmt = $connect->prepare("insert into login(name,class,age,sid,gender) values(?,?,?,?,?)");
    $stmt->bind_param("siiss",$name, $class, $age, $sid, $gender);
    $stmt->execute();
    echo "Added Successfully";
    $stmt->close();
    $connect->close();
}
?>