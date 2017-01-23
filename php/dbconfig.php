<?php

/* $host = "localhost";
 $user = "root";
 $password = "mysql";
 $database = "dbprojeto";

 $link = mysql_connect($host, $user, $password);
 mysql_select_db($database);*/

 header("Access-Control-Allow-Origin: *");
 $con = mysqli_connect("localhost","root","mysql","dbprojeto") or die ("could not connect database");
?>
