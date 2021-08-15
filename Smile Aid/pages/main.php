<?php 
    if(isset($_GET['page']))
    {
        $page=$_GET['page'];
    }
    else
    {
        $page='welcome';
    }
    
    switch($page)
    {
        case "welcome":
        {
            include('welcome.php');
        }
        break;
        
        case "question":
        {
            include('question.php');
        }
        break;
        case "question1_1":
        {
            include('question1_1.php');
        }
        break;
            case "question1_2":
        {
            include('question1_2.php');
        }
        break;
            case "question1_3":
        {
            include('question1_3.php');
        }
        break;
            case "question1_4":
        {
            include('question1_4.php');
        }
        break;
        case "f1":
            {
                include('f1.html');
            }
        break;
            case "f2":
            {
                include('f2.html');
            }
        break;
            case "f3":
            {
                include('f3.html');
            }
        break;
            case "f4":
            {
                include('f4.html');
            }
        break;
            case "f5":
            {
                include('f5.html');
            }
        break;
            case "f6":
            {
                include('f6.html');
            }
        break;
            case "f7":
            {
                include('f7.html');
            }
        break;
            case "f8":
            {
                include('f8.html');
            }
        break;
            case "f9":
            {
                include('f9.html');
            }
        break;
            case "f10":
            {
                include('f10.html');
            }
        break;
            case "f11":
            {
                include('f11.html');
            }
        break;
            case "f12":
            {
                include('f12.html');
            }
        break;
            case "f13":
            {
                include('f13.html');
            }
        break;
            case "f14":
            {
                include('f14.html');
            }
        break;
            case "f15":
            {
                include('f15.html');
            }
        break;

        case "login":
        {
            include('login.php');
        }
        break;
        
       
        case "logout":
        {
            session_destroy();
            header('location:'.SITEURL.'index.php?page=login');
        }
        break;
        
        default:
        {
            include('welcome.php');
        }
        break;
    }
?>