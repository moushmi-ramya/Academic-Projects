
        <div class="main">
            <div class="content">
                <div class="report">
                    <h2><u>Dash Board</u></h2>
                    
                    <?php 
                        if(isset($_SESSION['success']))
                        {
                            echo $_SESSION['success'];
                            unset($_SESSION['success']);
                        }
                        if(isset($_SESSION['fail']))
                        {
                            echo $_SESSION['fail'];
                            unset($_SESSION['fail']);
                        }
                    ?>
                    
                    <div class="clearfix">
                        <a href="<?php echo SITEURL; ?>admin/index.php?page=students">
                            <div class="dash-tile">
                                
                                <h1><?php echo $obj->get_total_rows('tbl_student',$conn); ?></h1>
                                <span>Students</span>
                            </div>
                        </a>
                        
                        
                        <a href="<?php echo SITEURL; ?>admin/index.php?page=questions">
                            <div class="dash-tile">
                                <h1><?php echo $obj->get_total_rows('tbl_question',$conn); ?></h1>
                                <span>Questions</span>
                            </div>
                        </a>
                        
                        
                    </div>
                    
                    
                </div>
            </div>
        </div>
        