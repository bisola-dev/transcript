f (isset($_POST['toolz'])) {
   $adminid3= mysqli_real_escape_string($conn, strip_tags($_POST['adminid3'])); 
   $fulln4 = mysqli_real_escape_string($conn, strip_tags($_POST['fulln3']));
   $schn4 = mysqli_real_escape_string($conn, strip_tags($_POST['schn3']));
   $addy4 = mysqli_real_escape_string($conn, strip_tags($_POST['addy3']));
   $admail4 = mysqli_real_escape_string($conn, strip_tags($_POST['admail3']));
   $fon4 = mysqli_real_escape_string($conn, strip_tags($_POST['fon3']));
  


  $mysqlux4= mysqli_query($conn, "UPDATE adminlogin SET fulln='$fulln4', schname='$schn4', addy='$addy4', admail='$admail4', fon='$fon4' WHERE id=$adminid3");
      
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully updated a school detail.")
        </script>';
        //header("Location:$delec"); 
   }

        

   if (isset($_POST['datelogo'])) {
   $upd= mysqli_real_escape_string($conn, strip_tags($_POST['upd'])); 
  
  $targetDir4 = "olly/";
  $fileName4 = basename($_FILES["updd"]["name"]);
  $fileName4 = $tstamp.$fileName4;
  $targetFilePath4 = $targetDir4 . $fileName4;
  $fileType4 = pathinfo($targetFilePath4,PATHINFO_EXTENSION);

   $shee5= move_uploaded_file($_FILES["updd"]["tmp_name"], $targetFilePath4);
  $mysqlux5= mysqli_query($conn, "UPDATE adminlogin SET logo ='$fileName4' WHERE id=$upd");
      
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully updated a school logo.")
        </script>';
        //header("Location:$delec"); 
   }






