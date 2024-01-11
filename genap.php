<?php require_once("cann.php");
      require_once("sexx2.php"); 

  $payform = 'appb.php';

if (strlen($id1) == 1){$appnew = 'CUS210000'.$id1;} 
else if (strlen($id1) == 2){$appnew = 'CUS21000'.$id1;} 
else if (strlen($id1) == 3){$appnew = 'CUS2100'.$id1;} 
else if (strlen($id1) == 4){$appnew = 'CUS210'.$id1;} 
else if (strlen($id1) == 5){$appnew = 'CUS21'.$id1;} 

$logen = mysqli_query($conn, "UPDATE applicants SET appid = '$appnew' WHERE hemal = '$hmal'"); 
$logen2 = mysqli_query($conn, "UPDATE payform SET appid = '$appnew' WHERE emal = '$mymal'"); 

 
 $koo = 1;
while($koo < 10){ //echo 'YES';
          $logab = mysqli_query($conn, "INSERT INTO ograde (cusid) 
        VALUES ('$appnew')");   
                                       
             $koo++;  }        

 $loga = mysqli_query($conn, "INSERT INTO logger (uzer, activity, timereg) 
        VALUES ('$mymal', 'Generated application ID successfully', '$date_reg')");  


 
echo '<script type="text/javascript">
       alert("Application number generated. Please proceed to fill the Application form.")
       window.location.href="'.$payform.'";
        </script>';
?>