<?php require_once("cann.php");
      require_once("sexx2.php"); 


$poopo = 'credeup.php';
$poopo2 = 'substat.php';
 
   //if register button is clicked
if (isset($_POST['submitd']) || !empty($_FILES["foto"]["name"])) {
  
  $targetDir = "jmb/";
  $fileName = basename($_FILES["foto"]["name"]);
  $fileName = $tstamp.$fileName;
  $targetFilePath = $targetDir . $fileName;
  $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);


  //$allowTypes = array('jpg','png','jpeg','gif');
  // Allow certain file formats
$allowTypes = array('jpg','png','jpeg');
 if (!in_array($fileType, $allowTypes)){
      echo '<script type="text/javascript">
        alert("Incorrect file format.Sorry only jpeg, jpg and png files are allowed");
        </script>'; } 
 
                   // Check file size
  else if ($_FILES["foto"]["size"] > 500000) {
               echo '<script type="text/javascript">
                alert("Sorry, your image is too large. Must be maximum of 500KB in size")
                </script>';
            }

    else { 
      $shee =  move_uploaded_file($_FILES["foto"]["tmp_name"], $targetFilePath);

      $insert= mysqli_query($conn, "UPDATE applicants SET upjamb = '$fileName'
        WHERE emal = '$mymal'");


      echo '<script type="text/javascript">
       alert("File uploaded successfully.")
        window.location.href="'.$poopo.'";
       
        </script>';  

 

 

      }
 }

?>