
        <div class="main">
            <div class="content">
                <div class="report">
                    
                    <form method="post" action="" class="forms" enctype="multipart/form-data">
                        <h2>Add Question</h2>
                        <?php 
                            if(isset($_SESSION['add']))
                            {
                                echo $_SESSION['add'];
                                unset($_SESSION['add']);
                            }
                            if(isset($_SESSION['invalid']))
                            {
                                echo $_SESSION['invalid'];
                                unset($_SESSION['invalid']);
                            }
                            if(isset($_SESSION['upload']))
                            {
                                echo $_SESSION['upload'];
                                unset($_SESSION['upload']);
                            }
                        ?>
                        <span class="name">Question</span> <br />
                        <textarea name="question" placeholder="Add Your Question" required="true"></textarea> <br />
                        
                        
                        <span class="name">Image</span>
                        <input type="file" name="image" /><br />
                        
                        <span class="name">First Answer</span>
                        <input type="text" name="first_answer" placeholder="First Answer" required="true" /><br />
                        
                        <span class="name">Second Answer</span>
                        <input type="text" name="second_answer" placeholder="Second Answer" required="true" /><br />
                        
                        <span class="name">Third Answer</span>
                        <input type="text" name="third_answer" placeholder="Third Answer" required="true" /><br />
                        
                        <span class="name">Fourth Answer</span>
                        <input type="text" name="fourth_answer" placeholder="Fourth Answer" required="true" /><br />
                        
    
                        
                        <span class="name">Answer</span>
                        <select name="answer">
                            <option value="1">First Answer</option>
                            <option value="2">Second Answer</option>
                            <option value="3">Third Answer</option>
                            <option value="4">Fourth Answer</option>
                            
                        </select>
                        <br />
                        
                        
                        
                       
                        
                        
                        <input type="submit" name="submit" value="Add Question" class="btn-add" style="margin-left: 15%;" />
                        <a href="<?php echo SITEURL; ?>admin/index.php?page=questions"><button type="button" class="btn-delete">Cancel</button></a>
                    </form>
                    
                    <?php 
                        if(isset($_POST['submit']))
                        {
                            
                            if($_FILES['image']['name']!="")
                            {
                                $ext=end(explode('.',$_FILES['image']['name']));
                                
                                $valid_file=$obj->check_image_type($ext);
                                if($valid_file==false)
                                {
                                    $_SESSION['invalid']="<div class='error'>Invalid Image type. Please use JPG or PNG or GIF file type.</div>";
                                    header('location:'.SITEURL.'admin/index.php?page=add_question');
                                    die();
                                }
                               
                                $new_name='Exam_Question_'.$obj->uniqid();
                                $image_name=$new_name.'.'.$ext;
                                
                                $source=$_FILES['image']['tmp_name'];
                                $destination="../images/".$image_name;
                                $upload=$obj->upload_file($source,$destination);
                                if($upload==false)
                                {
                                    $_SESSION['upload']="<div class='error'>Failed to upload question image. Try again.</div>";
                                    header('location:'.SITEURL.'admin/index.php?page=add_question');
                                    die();
                                }
                            }
                            else
                            {
                                $image_name="";
                            }
                            
                            $question=$obj->sanitize($conn,$_POST['question']);
                            $first_answer=$obj->sanitize($conn,$_POST['first_answer']);
                            $second_answer=$obj->sanitize($conn,$_POST['second_answer']);
                            $third_answer=$obj->sanitize($conn,$_POST['third_answer']);
                            $fourth_answer=$obj->sanitize($conn,$_POST['fourth_answer']);
                        
                            $answer=$obj->sanitize($conn,$_POST['answer']);
                            
    
                            
                            $tbl_name='tbl_question';
                            $data="question='$question',
                                    first_answer='$first_answer',
                                    second_answer='$second_answer',
                                    third_answer='$third_answer',
                                    fourth_answer='$fourth_answer',
                                    
                                    answer='$answer',
                                    
                                    
                                    image_name='$image_name'
                                    ";
                            $query=$obj->insert_data($tbl_name,$data);
                            $res=$obj->execute_query($conn,$query);
                            if($res===true)
                            {
                                $_SESSION['add']="<div class='success'>Question successfully added.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=questions');
                            }
                            else
                            {
                                $_SESSION['add']="<div class='error'>Failed to add question. Try again.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=add_question');
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
       