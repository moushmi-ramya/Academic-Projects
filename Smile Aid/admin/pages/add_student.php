
        <div class="main">
            <div class="content">
                <div class="report">
                    
                    <form method="post" action="" class="forms">
                        <h2>Add Student</h2>
                        <?php 
                            if(isset($_SESSION['validation']))
                            {
                                echo $_SESSION['validation'];
                                unset($_SESSION['validation']);
                            }
                            if(isset($_SESSION['add']))
                            {
                                echo $_SESSION['add'];
                                unset($_SESSION['add']);
                            }
                        ?>
                        <span class="name">First Name</span> 
                        <input type="text" name="first_name" placeholder="First Name" required="true" /> <br />
                        
                        <span class="name">Last Name</span>
                        <input type="text" name="last_name" placeholder="Last Name" required="true" /><br />
                        
                        <span class="name">Email</span>
                        <input type="email" name="email" placeholder="Email Address" required="true" /><br />
                        
                        <span class="name">Username</span>
                        <input type="text" name="username" placeholder="Username" required="true" /><br />
                        
                        <span class="name">Password</span>
                        <input type="text" name="password" placeholder="Password" required="true" /><br />
                        
                        <span class="name">Contact</span>
                        <input type="tel" name="contact" placeholder="Contact Number" /><br />
                        
                        <span class="name">Gender</span>
                        <input type="radio" name="gender" value="male" /> Male 
                        <input type="radio" name="gender" value="female" /> Female 
                        <input type="radio" name="gender" value="other" /> Other
                        <br />
                        
                        <input type="submit" name="submit" value="Add Student" class="btn-add" style="margin-left: 15%;" />
                        <a href="<?php echo SITEURL; ?>admin/index.php?page=students"><button type="button" class="btn-delete">Cancel</button></a>
                    </form>
                    <?php 
                        if(isset($_POST['submit']))
                        {
                          
                            $first_name=$obj->sanitize($conn,$_POST['first_name']);
                            $last_name=$obj->sanitize($conn,$_POST['last_name']);
                            $email=$obj->sanitize($conn,$_POST['email']);
                            $username=$obj->sanitize($conn,$_POST['username']);
                            $password=$obj->sanitize($conn,$_POST['password']);
                            $contact=$obj->sanitize($conn,$_POST['contact']);
                            if(isset($_POST['gender']))
                            {
                                $gender=$obj->sanitize($conn,$_POST['gender']);
                            }
                            else
                            {
                                $gender='male';
                            }

                           
                            if(($first_name||$last_name||$email||$username||$password)==null)
                            {
                                
                                $_SESSION['validation']="<div class='error'>First Name or Last Name, or Email or Username or Password is Empty.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=add_student');
                            }
                            
                            $tbl_name='tbl_student';
                            $data="first_name='$first_name',
                                    last_name='$last_name',
                                    email='$email',
                                    username='$username',
                                    password='$password',
                                    contact='$contact',
                                    gender='$gender'";
                            $query=$obj->insert_data($tbl_name,$data);
                            $res=$obj->execute_query($conn,$query);
                            if($res===true)
                            {
                                $_SESSION['add']="<div class='success'>New student successfully added.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=students');
                            }
                            else
                            {
                                $_SESSION['add']="<div class='error'>Failed to add new student. Try again.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=add_student');
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
       