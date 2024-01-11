<?php
   require_once("cann.php");
   require_once("choice.php");
   require_once("check.php");
   require_once("stud.php");

   $queryOptions = array("QueryTimeout" => 6000);

// $optionSelected = 22;
$optionSelected = $_POST['searchOption'];
$rinu= "SELECT translocation FROM [Transcript].[dbo].[Transcript_Dest] WHERE transcriptid=$optionSelected";
$queryOptions = array("QueryTimeout" => 6000);
$stmt=sqlsrv_query($conn, $rinu,null,$queryOptions);


   while($rowz = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)){ 
       $myData[] = array(
           "translocation" => $rowz['translocation']
       );
         }
echo json_encode($myData);
sqlsrv_free_stmt( $stmt);


        

?>