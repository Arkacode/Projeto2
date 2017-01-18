<?php
// it will never let you open index(login) page if session is set
if ( isset($_SESSION['user'])!="" ) {
		header("Location: index.php");
		exit;
}
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
