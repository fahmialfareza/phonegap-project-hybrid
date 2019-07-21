<?php
 include "db.php";
 if(isset($_POST['update']))
 {
 $id=$_POST['id'];
 $title=$_POST['title'];
 $duration=$_POST['duration'];
 $price=$_POST['price'];
 $q=mysqli_query($con,"UPDATE `dkantor` SET `kode`='$title',`namaKantor`='$duration',`lokasi`='$price' where `no`='$id'");
 if($q)
 echo "success";
 else
 echo "error";
 }
 ?>
