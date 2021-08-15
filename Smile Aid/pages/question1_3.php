<?php 
    
    include('check.php');
if(isset($_GET['id']))
            {
                $student_id=$_GET['id'];
                $tbl_name='tbl_result';
                $where="student_id=$student_id";
                $query=$obj->select_data($tbl_name,$where);
                $res=$obj->execute_query($conn,$query);
                $count_rows=$obj->num_rows($res);
                if($count_rows==1)
                {
                    $row=$obj->fetch_data($res);
                   $question=$row['question_id'];
                   $answer=$row['user_answer'];
                   
                }
}
    $tbl_name4="tbl_student";
    $username=$_SESSION['student'];
    $where4="username='$username'";
    $query4=$obj->select_data($tbl_name4,$where4);
    $res4=$obj->execute_query($conn,$query4);
    if($res4==true)
    {
        $row4=$obj->fetch_data($res4);
        $student_id=$row4['student_id'];
        $first_name=$row4['first_name'];
        $last_name=$row4['last_name'];
        $full_name=$first_name.' '.$last_name;
    }
    
?>
<html>

        <div class="main">
            <div class="content">
                
                User: <span class="heavy"><?php echo $full_name; ?></span>&nbsp;&nbsp;
                
                <form method="post" action="">
                    <div class="welcome">
                        <div class="ques">
                        <?php 
                            
                            if(isset($_SESSION['sn']))
                            {
                                $sn=$_SESSION['sn'];
                            }
                            else
                            {
                                $sn=0;
                            }
                            $tbl_name="tbl_question";
                            
                            $q="SELECT *  from tbl_question where question_id=4";
                            $query=mysqli_query($conn,$q);
                            while($row=mysqli_fetch_array($query))
                                {
                                
                                    
                                    $question=$row['question'];
                                    $first_answer=$row['first_answer'];
                                    $second_answer=$row['second_answer'];
                                    $third_answer=$row['third_answer'];
                                    $fourth_answer=$row['fourth_answer'];
                                    $answer=$row['answer'];
                                    $image_name=$row['image_name'];
                                    
                                }
                                
                          
                            
                        ?>
                        
                            <form method="post" action="">
                            
                            <div class="left-ques">

                                <?php echo $question; ?><br />
                                <?php 
                                    if($image_name!="")
                                    {
                                        ?>
                                        <img src="<?php echo SITEURL; ?>images/questions/<?php echo $image_name; ?>" alt="beyond boundaries" />
                                        <?php
                                    }
                                ?>
                                
                            </div>
                        
                            
                            <div class="answers">
                                <input type="radio" name="user_answer" id="answer1" value="1" required="true" /> <span class="radio-ans"><?php echo $first_answer; ?></span>  <hr /><br />
                                <input type="radio" name="user_answer" id="answer2" value="2" required="true" /> <span class="radio-ans"><?php echo $second_answer; ?></span> <hr /><br />
                                <input type="radio" name="user_answer" id="answer3" value="3" required="true" /> <span class="radio-ans"><?php echo $third_answer; ?></span>  <hr /><br />
                                <input type="radio" name="user_answer" id="answer4"value="4" required="true" /> <span class="radio-ans"><?php echo $fourth_answer; ?></span>  <hr /><br />
                                <input type="hidden" name="question_id" value="<?php echo $question_id; ?>" />
                                <input type="hidden" name="right_answer" value="<?php echo $answer; ?>" />

                            </div>
                            
                            <div class="clearfix"></div>
                            <div class="buttons">
                                <input type="submit" class="btn-exit"  name="submit">
                                <a href="<?php echo SITEURL; ?>index.php?page=logout">
                                    <button type="button" class="btn-exit">&nbsp; Quit &nbsp;</button>
                                </a>
                            
                                </div>
                        </form>
                            <?php
                                                      
                       
 if(isset($_POST['submit'])){
$question_id=2;
$user_answer = $_POST['user_answer'];

                       

$dbconnect = mysqli_connect('localhost', 'root', '', 'quizapp');



$sql = mysqli_query($dbconnect, "insert into tbl_result( student_id, question_id, user_answer) values('$student_id','$question_id', '$user_answer')");


if($user_answer==1){
header('location:'.SITEURL.'index.php?page=f9');
}
else if($user_answer==2){
header('location:'.SITEURL.'index.php?page=f10');

}
else if($user_answer==3){
header('location:'.SITEURL.'index.php?page=f11');
}
else{
header('location:'.SITEURL.'index.php?page=f12');
}
}

                            
                            ?>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
</html>