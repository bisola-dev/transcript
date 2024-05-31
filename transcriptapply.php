<?php 
    require_once("cann.php");
    require_once("choice.php");
    require_once("check.php");
    require_once("stud.php");

    try {
      if ($_SERVER['REQUEST_METHOD'] == 'POST'){
        $schname= $_POST['schname'];
        $schadd= $_POST['schadd'];
        $tty= $_POST['tty'];
        $ttp= $_POST['ttp'];
        $fcgp= $_POST['fcgp'];

      
     // echo $schname.' '.$tty.' '.$ttp.' '.$fcgp;
   if($schname==""||$tty==""||$ttp==""||$schadd==""){
  echo '<script type="text/javascript">
  alert("Please fill this form correctly");
  </script>';
 }

      $rinu2= "SELECT * FROM [Transcript].[dbo].[Transcript_Dest] WHERE translocation='$tty'";
      $params = array();
      $opts =  array( "Scrollable" => SQLSRV_CURSOR_KEYSET );
      $er = sqlsrv_query( $conn,  $rinu2 , $params, $opts );
      $twin=sqlsrv_query($conn, $rinu2);
      $row_count = sqlsrv_num_rows($er);

      if( $row_count  > 0){
      while($rowz= sqlsrv_fetch_array($er,SQLSRV_FETCH_ASSOC))
        { 
          $amount=$rowz['amount'];
          $paymentid= $rowz['transcriptid'];
   }
        }

        else{
          $rinu3= "SELECT * FROM [EBPORTAL].[dbo].[YCTPAY_Payments] WHERE PaymentID=22";
          $params = array();
          $optn =  array( "Scrollable" => SQLSRV_CURSOR_KEYSET );
          $er3 = sqlsrv_query( $conn,  $rinu3 , $params, $optn );
          $twin3=sqlsrv_query($conn, $rinu3);
          $row_count = sqlsrv_num_rows($er3);
    
          if( $row_count  > 0){
          while($rowz= sqlsrv_fetch_array($er3,SQLSRV_FETCH_ASSOC))
            { 
              $amount=$rowz['Amount'];
              $paymentid= $rowz['PaymentID'];
             }
    
             //echo  $amount.' '.$paymentid;
            }
    
              }
       

              $bintu = "SELECT * FROM [student].[dbo].[student_record] WHERE matricnum ='$semat'";
              $params = array();
              $options =  array( "Scrollable" => SQLSRV_CURSOR_KEYSET );
              $stmt = sqlsrv_query( $conn, $bintu , $params, $options );
              $row_count = sqlsrv_num_rows( $stmt );
      
              if( $row_count  > 0){
              while($rowz= sqlsrv_fetch_array($stmt,SQLSRV_FETCH_ASSOC))
              { 
               $progx=$rowz['programme_type'];}
                //echo $progx;
      
      
               $bintu3 = "SELECT Asessionid FROM [student].[dbo].[programme_type] WHERE ProgrammeType ='$progx'";
               $params3 = array();
               $options3 =  array( "Scrollable" => SQLSRV_CURSOR_KEYSET );
                $stmt3 = sqlsrv_query( $conn, $bintu3 , $params3, $options );
                $row_count3 = sqlsrv_num_rows( $stmt3 );
                if( $row_count3  > 0){
                while($rowz= sqlsrv_fetch_array($stmt3,SQLSRV_FETCH_ASSOC))
                { $assess=$rowz['Asessionid'];}
                }
                  //echo $assess;
                  $bintu3= $assess+31;

                  $bintu4= "SELECT Session FROM [EBPORTAL].[dbo].[Sessions] WHERE SessionID = $bintu3";
                  $params4 = array();
                  $options4 =  array( "Scrollable" => SQLSRV_CURSOR_KEYSET );
                  $stmt4= sqlsrv_query( $conn, $bintu4 , $params4, $options4 );
                  $row_count4 = sqlsrv_num_rows( $stmt4 );
                  if($row_count4  > 0){
                  while($rowz= sqlsrv_fetch_array($stmt4,SQLSRV_FETCH_ASSOC))
                  {$session=$rowz['Session'];}
                    // echo $session;
                   }
        
                 // echo  $progx.' '.$bintu3.' '.$session;
                  
                }
              
                else
                {
                 
                  $jan = "SELECT * FROM [EBPORTAL].[dbo].[Sessions] WHERE CurrentSession=1";
                  $params5= array();
                  $options5 =  array( "Scrollable" => SQLSRV_CURSOR_KEYSET );
                  $stmt5= sqlsrv_query( $conn, $jan , $params5, $options5 );
                  $row_count5 = sqlsrv_num_rows( $stmt5 );
                  if($row_count5 > 0){
                  while($rowz= sqlsrv_fetch_array($stmt5,SQLSRV_FETCH_ASSOC))
                  {$session=$rowz['Session'];}
               
                 // echo $session;
         
          
                
              
                }
                
              }
        
// Posting Values to REST WebService

$user='anty';
$token='antymi';
$xml = '<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
<soap:Body>
<geninvAsync xmlns="http://paymentsys.portal.yabatech.edu.ng/">
<amount>'.$amount.'</amount>
<name>'.$name.'</name>
<phone>'.$Phone.'</phone>
<email>'.$email.'</email>
<description>'.$description.'</description>
<matno>'.$matno.'</matno>
<paymentid>'.$paymentid.'</paymentid>
<session>'.$session.'</session>
<user>'.$user.' </user>
<token>'.$token.'</token>
</geninvAsync>
</soap:Body>
</soap:Envelope>';

//echo $xml;

//exit;

//The URL that you want to send your XML to.
$url = 'https://portal.yabatech.edu.ng/paymentsys/webservice1.asmx?op=geninvAsync';
//$url='https://qarsolutions.com.ng/pub/webservice1.asmx?op=geninvAsync';
//Initiate cURL
$curl = curl_init($url);
curl_setopt($curl, CURLOPT_HTTPHEADER, array("Content-Type:text/xml"));
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_POSTFIELDS, $xml);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
// Retune your response from CURL here
$result = curl_exec($curl);

// To load get your response in JSON format the below code is required
$cleanData = preg_replace("/(<\/?)(\w+):([^>]*>)/", '$1$2$3' , $result); 
$convertToString=simplexml_load_string($cleanData);
$encodingToJson=json_encode($convertToString); 
//$responseArray=json_decode($json, true); 
if (curl_errno($curl)) { 
throw newException(curl_error($curl)); 
} 
curl_close($curl); //echo $json; 
$decodeJson=json_decode($encodingToJson); 
$data=($decodeJson->soapBody->geninvAsyncResponse->geninvAsyncResult);

if ($data==""){
  echo '<script type="text/javascript">
  alert("Error processing request, please Try again Later.");
     </script>'; }

else if($data =='0' || $data =='1'){
  echo '<script type="text/javascript">
  alert("Invalid Credentials! You are not eligible to proceed with this payment, Please contact CITM for further assistance.")
  </script>';    
 }


else{
$noway2 = "SELECT * FROM [Transcript].[dbo].[Transcript_order] WHERE remita_rrr=$data";
$fin=sqlsrv_query($conn, $noway2);
if ($fin) {
$check = sqlsrv_num_rows($fin);
$rlean = sqlsrv_fetch_array($fin, SQLSRV_FETCH_ASSOC);
}


if ($data != '0' && $data !='1'){
 
if (isset($_POST['submit']) || !empty($_FILES["foto"]["name"])) {
  $fileName = basename($_FILES["foto"]["name"]);
  $fileType = pathinfo($fileName,PATHINFO_EXTENSION);
  $targetDir = "lastresult/";
  $newString = preg_replace('|/|', '', $matno);
  $counter = 1;

  $newFileName = $newString . "($counter)." . $fileType;
  $targetPath = $targetDir . $newFileName;

  
  while (file_exists($targetPath)) {
      $counter++;    
      $newFileName = $newString . "($counter)." . $fileType;
      $targetPath = $targetDir . $newFileName;
    }
    // Allow certain file formats
  $allowTypes = array('pdf');
   if (!in_array($fileType, $allowTypes)){
        echo '<script type="text/javascript">
          alert("Incorrect file format.Sorry only pdf files are allowed");
          </script>'; } 
   
     // Check file size
    else if ($_FILES["foto"]["size"] > 600000) {
                 echo '<script type="text/javascript">
                  alert("Sorry, your filesize is too large. Must be maximum of 600KB in size");
                  </script>';
              }

         else if ($rlean >= 1) {
                echo '<script type="text/javascript">
                alert("YOU ALREADY HAVE AN OPEN INVOICE , PLEASE PROCEED TO PAY OR EDIT DESTINATION");
                window.location.href="vieword.php";
                </script>';

              
               }
            

               else {  
                // Move uploaded file to target directory
                $shee = move_uploaded_file($_FILES["foto"]["tmp_name"], $targetPath); 
                // Construct payment URL  
                $url2 = "https://onlinepay.yabatech.edu.ng/?v1=$data"; 
            
                // Insert data into database
                $noway = sqlsrv_query($conn, "INSERT INTO [Transcript].[dbo].[Transcript_order] (amount,paymentid,remita_rrr,sessionname,destination,destinationadd,phone,locationx,namex,matricno,finalresult,cgpa) VALUES ($amount,$paymentid,$data,'$session','$schname','$schadd',$Phone,'$tty','$name','$matno','$newFileName',$fcgp)");
            
                // Check if insertion was successful
                if ($noway === false) {
                  // Insertion failed
                  echo '<script type="text/javascript">
                       alert("Incomplete Registration,Please try again");
                          </script>';
                   } else {
                  $rowsAffected = sqlsrv_rows_affected($noway);
                  
                  if ($rowsAffected > 0) {
                      // Insertion successful
                      echo '<script type="text/javascript">
                           alert("PAY NOW, CLICK OK");
                           window.location.href="'.$url2.'";
                           </script>';
                  }
                  else {
                    // No rows affected, insertion failed
                    echo '<script type="text/javascript">
                    alert("Incomplete Registration,Please try again");
                         </script>';
                }
              }
              
}
 }
   
      }
    }   
  }
}
    
      catch (Exception $e) {
      // Handle the exception here
      echo "An error occurred: " . $e->getMessage();
  }








?>

<!DOCTYPE html>
<html lang="en">
    
<head>
        <meta charset="utf-8">  
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="Smarthr - Bootstrap Admin Template">
		<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>Transcript application</title>
		
		<!-- Favicon -->
   <link rel="shortcut icon" href="../webadmin/inc/favicon.png">  
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="assets/css/line-awesome.min.css">
		
		<!-- Select2 CSS -->
		<link rel="stylesheet" href="assets/css/select2.min.css">
		
		<!-- Datetimepicker CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <script type="text/javascript" src="jquery.js"></script>
         
    
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
        <?php require_once('hedad2.php');?>
			<!-- /Header -->
			
			<!-- Sidebar -->
              <?php require_once('siderd.php');?>
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
                <div class="content container-fluid">
              <form method="post" action="" enctype="multipart/form-data">
								<div class="row"> 
                <div class="col-sm-6 col-md-12">
                <h3 class="page-title">Please enter your transcript request details  </h3>
									<div class="form-group">
											<label> Transcript Type <span class="text-danger"></span></label>
                                            <select id="ttp" name=ttp class="form-control" onchange="showHide()" required>
                                            <option value="">select type</option>
                                            <option value="23">International</option>
                                            <option value="22">Local</option>
                                             </select>
                                             </div>
								        	</div>
                                           

                            <div class="col-sm-6 col-md-12">
                          <!-- <h3 class="page-title">Please enter your transcript request details  </h3> -->
									          <div class="form-group">
											      <label> Location <span class="text-danger"></span></label>
                                            <select id="tty" name="tty" class="form-control" required>
                                            <option value="">Please Select Location</option>
                                            
                                             </select>
                                             </div>
								            </div>
                                           
								
									  <div class="col-sm-6 col-md-12">
										<div class="form-group">
										<label>School/Organisation Name<span class="text-danger"></span></label>
                                          <input name="schname" type="text" maxlength="200"  class="form-control" required>
										</div>
										</div>

                                        
                                       <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>School/Organisation Address<span class="text-danger"></span></label>
								       <input name="schadd" type="text" maxlength="200"  class="form-control" required>
										</div>
										</div>


									   <div class="col-sm-6 col-md-12">
										<div class="form-group">
										<label>Upload Last Result (pdf format allowed) <span class="text-danger">*</span></label>
										<input name="foto" class="form-control" type="file" required>
									    </div>
										</div>
						


									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Final Cgpa<span class="text-danger"></span></label>
								      <input name="fcgp" type="text" maxlength="200"  class="form-control" required>
										</div>
										</div>	
                   </div>

									<div class="submit-section">
									<button name ="submit" type="submit" class="btn btn-success submit-btn">Submit</button>
									</div>

								  </form>


						</div>
					</div>
</body>
                                              
          <!-- <script src="test.js"></script>        -->
        <!-- /Main Wrapper -->
        
        <!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        
        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        
        <!-- Slimscroll JS -->
        <script src="assets/js/jquery.slimscroll.min.js"></script>
        
        <!-- Select2 JS -->
        <script src="assets/js/select2.min.js"></script>
        
        <!-- Datetimepicker JS -->
        <script src="assets/js/moment.min.js"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
        
        <!-- Custom JS -->
      	<script src="assets/js/app.js"></script>
        <script src="js/jquery.js"></script>
 

<script>
$(document).ready(function(){
      $("#ttp").on('change', function(){
        var searchOption = $("#ttp").val();
       //alert(searchOption);
        $.ajax({
          
            type: "post",
            url: "search.php",
            data: { searchOption: searchOption },
            dataType:'json',
            success: function(response){
              // var len = data.length;
                 console.log(response)

              var s = '<option value="">Please Select Location</option>';  
               for (var i = 0; i < response.length; i++) {  
                 var locateMe = response[i]['translocation'];
                   s += '<option value="' + locateMe + '">' + locateMe + '</option>';  
               }  
               $("#tty").html(s);
              // $("#tty").html(data);
              // alert('I got here');
            }
        });
    });
});  
    
  </script>


    </body>

</html>