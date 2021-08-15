<?php 
     
    session_start();
    include('functions.php');
    
    $obj=new Functions();
    
    $conn=$obj->db_connect();
    
    $db_select=$obj->db_select($conn);
?>