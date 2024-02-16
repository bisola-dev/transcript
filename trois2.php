<?php
          $adminfulln =$_SESSION['fulln'];
          $admail =$_SESSION['admail'];

            
    if ($adminfulln== "" || $admail == "")header("Location:logout2.php");

     $resultt = mysqli_query($conn, "SELECT * FROM adminlogin WHERE admail = '$admail'");
                
      while($get_info = mysqli_fetch_assoc($resultt)){ // Start looping table row 
                                         $schname = $get_info['schname'];
                                         $schid = $get_info['id'];
                                         $logoz=$get_info['logo'];
                                          $schaddy=$get_info['addy'];
                                          $fony=$get_info['fon'];
                                         


}






                                      ?>