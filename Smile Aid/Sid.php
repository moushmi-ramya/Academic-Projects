<?php
session_start();  
$con = mysqli_connect("localhost","root","","webpage") or die(mysql_error());
?>
<html>
<head>
<title>Student Details</title>
<link rel="stylesheet" href="../css/style.css">
</head>
    <style>
h1{
            color: crimson;
    font-size: 60px;
        }
    form {
 margin:20px;
 padding: 20px 30px;
 
}
input[type=text] {
  border: 2px solid #acde16;
  border-radius: 4px;
    height: 40px;
    width:180px;
font-size: 20px;
    
}
input[type=submit]{
           
    background: #230ffa;
    height: 30px;
    width:120px;
    font-size: 20px;
     color:#fff;
    margin-left: 60px;
        }
textarea {
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #acde16;
  border-radius: 4px;
  
}
table{
            margin-left: 30px;
            margin-right: auto;
        }
th{
            padding:80px;
            text-align: center;
            border-spacing: 10px;
            color: deeppink;
        }
td{
            padding:10px;
            text-align: center;
            border-spacing: 10px;
    color: 
        }
    </style>
<body style="background:#0ffab7">
<div class="container">
<center><h1>Student Details</h1></center>
    
    <center><form action="" method="POST">
        <input type="text" name="sid" placeholder="Enter-Id"/>
        <input type="submit" name="search" value="Search">
    </form></center>
    <table class="table table-striped table-hover " >
        <thead>
            <tr class="first">	
            <th>Sno</th>
            <th>Name</th>
            <th>Class</th>
            <th>Age</th>
            <th>Student id</th>
            <th>Gender</th>
            <th>Group</th>
           
            </tr>
        </thead>
        <?php 

          $i=1;
          if (isset($_POST["search"]))
          {
          $nid = $_POST["sid"];
          $check= "SELECT * FROM `login` WHERE sid = '$nid'";
          $rs=mysqli_query($con, $check);
              while($row=$rs->fetch_assoc())
              {
                  ?>
                <tr>
                <td><?php echo $i;?></td>
                <td><?php echo $row['name'];?></td>
                    <td><?php echo $row['class'];?></td>
                <td><?php echo $row['age'];?></td>
                
                <td><?php echo $row['sid'];?></td>
                <td><?php echo $row['gender'];?></td>
                <td><?php echo $row['group'];?></td>
                </tr>
        <?php
        $i++;}}
         ?>
</table> 
</div>
</body>
</html>