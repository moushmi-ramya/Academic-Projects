<?php
    include('../config/apply.php'); 
    if((isset($_GET['id']))&&(isset($_GET['page'])))
    {
        
        $id=$_GET['id'];
        $page=$_GET['page'];
        
        switch($page)
        {
            case "students":
            {
                $tbl_name="tbl_student";
                $title="Student";
                $where="student_id=$id";
            }
            break;
            
            
            
            case "questions":
            {
                $tbl_name="tbl_question";
                $title="Question";
                $where="question_id=$id";
            }
            break;
        }
        
        $query=$obj->delete_data($tbl_name,$where);
        $res=$obj->execute_query($conn,$query);
        if($res==true)
        {
            $_SESSION['delete']="<div class='success'>".$title." successfully deleted.</div>";
            header('location:'.SITEURL.'admin/index.php?page='.$page);
        }
        else
        {
            $_SESSION['delete']="<div class='error'>Failed to delete ".$title.".</div>";
            header('location:'.SITEURL.'admin/index.php?page='.$page);
        }
    }
    else
    {
        $_SESSION['fail']="<div class='error'>Failed to delete. Please Try Again.</div>";
        header('location:'.SITEURL.'admin/');
    }
?>