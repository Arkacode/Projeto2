<?php

include "../php/dbconfig.php";
 if(isset($_POST['insert']))
 {
 $email=$_POST['email'];
 $password=$_POST['password'];
 $nome=$_POST['nome'];
 $data=$_POST['data'];
 $q=mysqli_query($con,"INSERT INTO `users` (`email`,`password`,`nome`,`data`) VALUES ('$email','$password','$nome','$data')");
 if($q)
  echo "success";
 else
  echo "error";
 } ?>
