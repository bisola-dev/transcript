<?php $fedr= "SELECT * FROM [Transcript].[dbo].[vw_Transcript_Request] WHERE Matricno='$semat'";
$check=sqlsrv_query($conn,$fedr);
$row = sqlsrv_fetch_array($check, SQLSRV_FETCH_ASSOC);
   
       if ($row <= 0){header("Location:logout.php");}

       else{
        $sprog= $row['program'];
        $scstatus= $row['CStatus'];
                   
       }

       
      
    $rex= "SELECT * FROM [Transcript].[dbo].[Transcript_Upload] WHERE Matricno='$semat'";
       $din=sqlsrv_query($conn,$rex);
       $rowz = sqlsrv_fetch_array($din, SQLSRV_FETCH_ASSOC);
       if ($rowz <= 0){echo "No records";}  
       
       else{
        $yloc2= $rowz['Loc2'];
        $ma=$rowz['Matricno'];
       }
?>