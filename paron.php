<?php
 
          $parentnam =$_SESSION['parentname'];
          $parentmail =$_SESSION['parentemail'];
          $parentfon =$_SESSION['parentno'];
          $tiyi=$_SESSION['tiyi'];
          $schoolid=$_SESSION['schid'];

        

 $karen = mysqli_query($conn, "SELECT * FROM $tiyi WHERE parentemail = '$parentmail'");
                
      while($get_info = mysqli_fetch_assoc($karen)){ // Start looping table row 
                                         $classname = $get_info['classname'];
                                         $sname = $get_info['sname'];
                                         $onames=$get_info['onames'];
                                         $dob=$get_info['dob'];
                                         $addy=$get_info['addy'];
                                          $logoz=$get_info['logo'];
 $fulln=$sname.' '.$onames;



     $karenrt = mysqli_query($conn, "SELECT * FROM adminlogin WHERE id = $schoolid");
                
      while($get_info2 = mysqli_fetch_assoc($karenrt)){ // Start looping table row 
                                         $schname = $get_info2['schname'];

  


}
}




                                      ?>