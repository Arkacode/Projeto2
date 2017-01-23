<?php
require 'dbconfig.php';


$email = mysql_escape_string($_POST['loginemail']);
$password = mysql_escape_string($_POST['loginpassword']);

$sql = "SELECT email,password FROM utilizadores WHERE email = '$email' and password = '$password'";

$result = mysqli_query($con ,$sql);

if(mysqli_num_rows($result) > 0){
 echo "success";
}
else{
  echo "error";
}


?>
