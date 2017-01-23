<?php
<<<<<<< HEAD
require 'dbconfig.php';


$email = mysql_escape_string($_POST['loginemail']);
$password = mysql_escape_string($_POST['loginpassword']);

$sql = "SELECT email,password FROM utilizadores WHERE email = '$email' and password = '$password'";

$result = mysqli_query($con ,$sql);

if(mysqli_num_rows($result) > 0){
 echo "success";
=======
require_once '../php/dbconfig.php';
/*
if(isset($_POST))
{
 $email = mysql_escape_string($_POST['loginemail']);
 $password = mysql_escape_string($_POST['loginpassword']);
 $sql = mysql_query("SELECT email, password FROM utilizadores WHERE email = '$email' AND password = '$password'") or die(mysql_error());
 if(mysql_num_rows($sql) > 0){
   header("Location: ../../Projeto2/empregos.html");
 }
 else{
  echo "Wrong password";
 }
}*/
if(isset($_POST['btn_login']))
{
  $email = mysqli_real_escape_string($con,$_POST['loginemail']);
  $password = mysqli_real_escape_string($con,$_POST['loginpassword']);
  $sql = "SELECT email,password FROM utilizadores WHERE email = '$email' and password = '$password'";
  $result = mysqli_query($con,$sql);
  $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
  $active = $row['active'];
  $count = mysqli_num_rows($result);
  if($count == 1) {
  echo "sucesso";
  }else {
  echo "nao deu";
 }
>>>>>>> origin/master
}
else{
  echo "error";
}


?>
