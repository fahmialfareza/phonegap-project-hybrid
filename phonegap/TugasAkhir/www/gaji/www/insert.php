<?php
 include "db.php";
 if(isset($_POST['insert']))
 {
 $title=$_POST['title'];
 $duration=$_POST['duration'];
 $price=$_POST['price'];
 $q=mysqli_query($con,"INSERT INTO `dgaji` (`NIK`,`namakaryawan`,`gajibersih`) VALUES ('$title','$duration','$price')");
 if($q)
  echo "success";
 else
  echo "error";
 }
 ?>