<?php 
    include('check.php');
?>

        <div class="main">
            <div class="content">
                <div class="welcome">
                    <?php 
                        if(isset($_SESSION['login']))
                        {
                            echo $_SESSION['login'];
                            unset($_SESSION['login']);
                        }
                        
                    ?>
                    Hello <span class="heavy"><?php echo $_SESSION['student']; ?></span>. Get ready for your test.<br />
                    
                    <div class="success">
                        <p style="text-align: left;">
                            Here are some of the rules and regulations of this app.<br />
                            1. This test is automated and you won't be able to return to previous question.<br />
                            2. Once you successfully login, you can't log back in unless the permission of system administrator.<br />
        
                        </p>
                    </div>
                    
                    <a href="<?php echo SITEURL; ?>index.php?page=question">
                        <button type="button" class="btn-go">Take a Test</button>
                    </a>
                    <a href="<?php echo SITEURL; ?>index.php?page=logout">
                        <button type="button" class="btn-exit">&nbsp; Quit &nbsp;</button>
                    </a>
                </div>
            </div>
        </div>
       