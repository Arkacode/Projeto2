<?php
include "../php/dbconfig.php";
if(isset($_POST['loginform']))
{
  $email=$_POST['loginemail'];
  $password=$_POST['loginpassword'];
  $login=mysql_num_rows(mysql_query($con,"SELECT * from `users` where `email`='$email' and `password`='$password'"));
  if($login!=0)
  {
    echo "success";
  }
  else
  {
    echo "failed";
  }
}
?>
