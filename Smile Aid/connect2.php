<?php
header('location:Studlogin.html');

    $Name = $_POST['Name'];
    $Uid = $_POST['Uid'];
    $Password = $_POST['Password'];
    $Phone = $_POST['Phone'];

$dbconnect = new mysqli('localhost', 'root', '', 'webpage');
if($dbconnect->connect_error){
    die('Connection Failed :' .$conn->connect_error);
}
else{
    $stmt = $dbconnect->prepare("insert into ilogin(Name,Uid,Password,Phone) values(?,?,?,?)");
    $stmt->bind_param("sssi",$Name, $Uid, $Password, $Phone);
    $stmt->execute();
    echo "<h3>You have Registered successfully!!</h3>";
    $stmt->close();
    $dbconnect->close();
}
?>