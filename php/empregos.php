<?php
include "dbconfig.php";
mysqli_set_charset($con, 'utf8');
$data=array();
$q=mysqli_query($con,"select * from `empregos`");
while ($row=mysqli_fetch_object($q)){
 $data[]=$row;
}
echo json_encode($data);
?>
