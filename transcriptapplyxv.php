<?php 
    require_once("cann.php");
    require_once("choice.php");
    require_once("check.php");
    require_once("stud.php");



    if ($_SERVER['REQUEST_METHOD'] == 'POST'){
      $schname= $_POST['schname'];
       $schadd= $_POST['schadd'];
       $tty= $_POST['tty'];
        $fcgp= $_POST['fcgp'];
       

      $rinu2= "SELECT * FROM [Transcript].[dbo].[Transcript_Dest] WHERE translocation='$tty'";
       $twin=sqlsrv_query($conn, $rinu2);
       while($rowz = sqlsrv_fetch_array($twin)){ 
        $amount=$rowz['amount'];
        $paymentid= $rowz['transcriptid'];
        $id2=$rowz['id'];

       $bintu = "SELECT * FROM [student].[dbo].[student_record] WHERE matricnum ='$semat'";
       $fair=sqlsrv_query($conn,$bintu);
       while($rowl = sqlsrv_fetch_array($fair)){ 
        $progx= $rowl['programme_type'];

        if ($progx==""){
          $jan = "SELECT * FROM [EBPORTAL].[dbo].[Sessions] WHERE CurrentSession=1";
          $lan=sqlsrv_query($conn,$jan);
          while($rowl = sqlsrv_fetch_array($lan)){ 
            $session=$rowl['Session'];
          }}  

    else{
        $bintu3="SELECT * FROM [student].[dbo].[vw_programme_type] WHERE programmetype ='$progx'";
     $fair3=sqlsrv_query($conn,$bintu3);
        while($rowz = sqlsrv_fetch_array($fair3)){ 
         $session= $rowz['Session'];



 $user = 'bisocon';
$token = '2765329728ab';




if(isset($_FILES["lare"]) && $_FILES["lare"]["error"]==0){
 
  $filename = $_FILES["lare"]["name"];
  $filetype = $_FILES["lare"]["type"];
   $filesize = $_FILES["lare"]["size"];
   $ext = pathinfo($filename, PATHINFO_EXTENSION);
    // Allow certain file formats
    if(!$ext) die("Error: Please select a valid file format.");
   // Verify file size - 5MB maximum
   $maxsize = 5 * 1024 * 1024;
   if($filesize > $maxsize) die("Error: File size is larger than the allowed limit.");

   // Verify MYME type of the file
   if(in_array($filetype, $allowed)){
       // Check whether file exists before uploading it
       if(file_exists("upload/" . $filename)){
           echo $filename . " is already exists.";
       } else{
           move_uploaded_file($_FILES["lare"]["tmp_name"], "upload/" . $filename);
           echo "Your file was uploaded successfully.";
       } 
   } else{
       echo "Error: There was a problem uploading your file. Please try again."; 
   }
} else{
   echo "Error: " . $_FILES["lare"]["error"];
}
}
  
  
    }
  }
}
    }
  
//echo $user.' '.$token.' '.$amount.' '.$name.' '.$Phone.' '.$email.' '.$description.' '.$matno.' '.$paymentid.' '.$session;
//phone

 /*$xml = '<?xml version="1.0" encoding="utf-8"?>
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

echo $xml;
//The URL that you want to send your XML to.
//$url = 'https://portal.yabatech.edu.ng/paymentsys/webservice1.asmx?op=geninvAsync';
$url='https://qarsolutions.com.ng/pub/webservice1.asmx?op=geninvAsync';
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
print_r('Result:'.$data);




}*/

  
  
       $rinu= "SELECT * FROM [Transcript].[dbo].[Transcript_Dest]";
       $din=sqlsrv_query($conn, $rinu);



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
		
			 <?php //require_once('hedad2.php');?>
			<!-- /Header -->
			
			<!-- Sidebar -->
              <?php //require_once('siderd.php');?>
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title"></h3>
								<ul class="breadcrumb">
					 				 
									<li class="breadcrumb-item active"></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
            <form method="post" action="test.php" enctype="multipart/form-data">
							<div class="col-md-12">
								<div class="row">                 
                            <div class="col-sm-6 col-md-12">
										      <div class="form-group">
											<label> Location <span class="text-danger"></span></label>
                                            <select name="tty" class="form-control" required>
                                            <option value="">-----Select a location------</option>
                                            <?php while($rowz = sqlsrv_fetch_array($din)){ 
                                              $loc= $rowz['translocation'];?>
                                           <option value="<?php echo $loc;?>"><?php echo $loc;?></option>
        
                                           <?php }?>
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
											<label>Upload Last Result<span class="text-danger"></span></label>
								       <input name="lare" type="file" class="form-control" required>
										</div>
										</div>	


									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Final Cgpa<span class="text-danger"></span></label>
								      <input name="fcgp" type="text" maxlength="200"  class="form-control" required>
										</div>
										</div>	

									<div class="submit-section">
									<button name ="submit" type="submit" class="btn btn-info submit-btn">Submit</button>
									</div>
								  </form>

						</div>
					</div>
                  

                 
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
        <script>
    $(document).ready(function(){
      $('.upp').on('click', function(){
        //$('#dataTableExample1 tbody').on('click', 'tr', function(){
        $('#checck').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children('td').map(function(){
        return $(this).text();
        }).get();
        console.log(data);
        //$('#adminid2').val(data[0]);
        $('#email3').val(data[1]);
        $('#request3').val(data[2]);
        $('#adminid2').val(data[3]);
       
        });
    
    });

	  $(document).ready(function(){
      $('.ria').on('click', function(){
        //$('#dataTableExample1 tbody').on('click', 'tr', function(){
        $('#id01').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children('td').map(function(){
        return $(this).text();
        }).get();
        console.log(data);    
        $('#updi').val(data[3]);
       
	});
});

    
  </script>
    </body>

</html>