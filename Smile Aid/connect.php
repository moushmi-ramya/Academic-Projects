<?php
header('location:RegForm.html');

    $name = $_POST['name'];
    $id = $_POST['id'];
    $password = $_POST['password'];
    $address = $_POST['address'];
    $phone = $_POST['phone'];

$dbconnect = new mysqli('localhost', 'root', '', 'webpage');
if($dbconnect->connect_error){
    die('Connection Failed :' .$conn->connect_error);
}
else{
    $stmt = $dbconnect->prepare("insert into register(name,id,password,address,phone) values(?,?,?,?,?)");
    $stmt->bind_param("ssssi",$name, $id, $password, $address, $phone);
    $stmt->execute();
    echo "<h3>You have Registered successfully!!</h3>";
    $stmt->close();
    $dbconnect->close();
}
?>