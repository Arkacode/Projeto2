<?php
include "dbconfig.php";
 if(isset($_POST['anunciaremp']))
 {
 $title=$_POST['title'];
 $location=$_POST['location'];
$descricao=$_POST['descricao'];
 $q=mysqli_query($con,"INSERT INTO empregos (titulo,localidade,data,descricao,idestado,idtipoanuncio) VALUES ('$title','$location',Now(),'$descricao',1,1)");
 if($q)
  echo "success";
 else
  echo "error";
 }
 ?>
