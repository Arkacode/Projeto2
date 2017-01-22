<?php
require_once '../php/dbconfig.php';

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
}
?>
