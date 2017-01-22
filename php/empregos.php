<?php
include "../php/dbconfig.php";
$data=array();
$q=mysql_query("select * from `empregos`");
while ($row=mysql_fetch_object($q)){
 $data[]=$row;
}
echo json_encode($data);
?>
