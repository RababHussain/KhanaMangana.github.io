<?php include('partials/menu.php'); ?>
<div class="main-content">
    <div class="wrapper">
        <h1>Change Password</h1>
        <br><br>
        <?php
            if(isset($_GET['id']))
            {
                $id=$_GET['id'];
            }
        ?>

        <form action="" method="POST">
            <table class="tbl-30">
                <tr>
                    <td>Current Password:</td>
                    <td>
                        <input type="password" name="current_password" placeholder="Current Password">
                    </td>
                </tr>

                <tr>
                    <td>New Password:</td>
                    <td>
                        <input type="password" name="new_password" placeholder="New Password">
                    </td>
                </tr>

                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <input type="password" name="confirm_password" placeholder="Confirm Password">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="id" value=<?php echo $id;?>>
                        <input type="submit" name="submit" value="Change Password" class="btn-secondary">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<?php
    if(isset($_POST['submit']))
    {
        //echo "Clicked";
        //Get data from form
        $id=$_POST['id'];
        $current_password = md5($_POST['current_password']);
        $new_password = md5($_POST['new_password']);
        $confirm_password = md5($_POST['confirm_password']);

        //check whether such a user exists or not
        $sql = "SELECT * FROM tbl_admin WHERE id =$id AND password='$current_password'";
        //check whther new pass and confirm pass match
        $res = mysqli_query($conn,$sql);
        if($res==TRUE)
        {
            //check whether data is available
            $count = mysqli_num_rows($res);
            if($count==1)
            {
                //user exists and password can be changed
                //echo "User Found";
                //check whether new and confirmed pass match or not
                if($new_password==$confirm_password)
                {
                    //echo "Success";
                    $sql2 = "UPDATE tbl_admin SET
                        password='$new_password'
                        WHERE id=$id
                    ";
                    $res2= mysqli_query($conn,$sql2);
                    if($res2==TRUE)
                    {
                        //Display success
                        $_SESSION['change-pwd'] = "<div class='success'>Password Changed Successfuly. </div>";
                        header('location:'.SITEURL.'admin/manage-admin.php');

                    }
                    else
                    {
                        //Display error
                        $_SESSION['change-pwd'] = "<div class='error'>Failed to change password.</div>";
                        header('location:'.SITEURL.'admin/manage-admin.php');
                    }
                }
                else
                {
                    $_SESSION['pwd-not-match'] = "<div class='error'>Confirmed Password does not match New Password. </div>";
                header('location:'.SITEURL.'admin/manage-admin.php');
                }
            }
            else
            {
                //user does not exist, give msg and redirect
                $_SESSION['user-not-found'] = "<div class='error'>User Not Found. </div>";
                header('location:'.SITEURL.'admin/manage-admin.php');
            }
        }
        //change password if above holds true
    }
?>


<?php include('partials/footer.php'); ?>