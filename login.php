<?php require_once("cann.php");

  
$dkode=rand(10000, 99999);

//echo $dkode;

if (isset($_POST['saveminx'])){
   $sname2 = mysqli_real_escape_string($conn, trim(strip_tags($_POST['sname'])));
   $oname2 = mysqli_real_escape_string($conn, trim(strip_tags($_POST['oname'])));
   $emal2 = mysqli_real_escape_string($conn, trim(strip_tags($_POST['emal'])));
   $fon2 = mysqli_real_escape_string($conn, trim(strip_tags($_POST['fon'])));
   $pwd2 = mysqli_real_escape_string($conn, trim(strip_tags($_POST['pwd'])));
   $cpwd2 = mysqli_real_escape_string($conn, trim(strip_tags($_POST['cpwd'])));
   $dkode2 = mysqli_real_escape_string($conn, trim(strip_tags($_POST['dkode'])));
   $mkode2 = mysqli_real_escape_string($conn, trim(strip_tags($_POST['mkode'])));

   $dopwd='kokoro'.$pwd2;
   $hpwd=md5($dopwd);

   $domal='kokoro2'.$emal2;
   $hemal=md5($domal);

  $query1 = mysqli_query($conn, "SELECT * FROM applicants WHERE emal='$emal2' OR fon ='$fon2'" );
  $kant = mysqli_num_rows($query1);

  
  if($sname2 == ""  || $oname2 == "" || $emal2 == "" || $fon2 == "" || $pwd2 == "" || $cpwd2 == "" || 
  	$dkode2 == "" || $mkode2 == "") {
    echo "<script type ='text/javascript'>alert('please do not submit empty form. All fields are compulsory.')</script>";
   }
 
else if(!filter_var($emal2,FILTER_VALIDATE_EMAIL)){
       echo '<script type="text/javascript">
        alert("The email provided is invalid, please retry.");
        </script>';
      
   } 

 else if ((strlen($fon2) < 11) || (!(is_numeric ($fon2))) ){
                 echo '<script type="text/javascript">
        alert("The phone number invalid, please retry.");
        </script>';
    }

        
   else if(strlen($pwd2)<8){
                echo '<script type="text/javascript">
        alert("The password provided is less than five characters, please make sure your password is more than five characters.");
        </script>';
    
    } 
  
      

      else if($pwd2!= $cpwd2){
        $mes='<script type="text/javascript">
        alert("The password and confirm password are not the same. Please retry.");
        </script>';
         $ms = "The password and confirm password are not the same. Please retry. ";} 
      


 else if ($kant > 0){ 
   
  echo '<script type="text/javascript">
       $report alert("This account already exist. The ");
        </script>';
         $ms = "This account already exist."; 
     }

 else { 

 $new = mysqli_query($conn,"INSERT INTO applicants (emal, fon, sname, oname, hpwd, dreg, hemal) VALUES('$emal2','$fon2','$sname2', '$oname2', '$hpwd', '$date_reg', '$hemal')");


  $loga = mysqli_query($conn, "INSERT INTO logger (uzer, activity, timereg) 
        VALUES ('$emal2', 'Registered as fresh applicant', '$date_reg')"); 

   $to = $emal2;
        $subject = "CUSTECH Pre-registration Successful";
        $message = "Dear Applicant, your pre-registration on the Confluence University of Science and Technology, Osara, Kogi State website was successful. You can proceed to login, pay for the application form and fill the form appropriately.
        For technical support or complaints, reply to this mail. You can also follow CUSTECH on Facebook by likng the page. Thank you";
        $from = "support@custech.edu.ng";
        $headers = "From:" . $from;
        mail($to,$subject,$message,$headers);
    
echo'<script type="text/javascript">
        alert("Congratulations! you have successfully filled the preapplication form.")
        window.location.href="regsuccess.php";
        </script>';

      
               //  $hmal =$_SESSION['hmal'] = $hemal;
              //  $mymal =$_SESSION['mymal'] = $emal2;
            
         echo '<script type="text/javascript">
       alert("Congratulations! you have successfully registered.")
       window.location.href="'.$redi.'";
        </script>';       
   }

    

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
        <title>Pre-application - CUSTECH Osara Kogi State</title>
		
		<!-- Favicon -->
      <link rel="shortcut icon" href="../webadmin/inc/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body class="account-page">
	
		<!-- Main Wrapper -->
        <div class="main-wrapper">
			<div class="account-content">
				 
				<div class="container">
				
					<!-- Account Logo -->
					<div class="account-logo">
						<a href="index.php"><img src="imgg/cus1.jpeg"></a>
					</div>
					<!-- /Account Logo -->
					
					<div class="account-box">
						<div class="account-wrapper">
							<h3 class="account-title">Apply to CUSTECH</h3>
							<p class="account-subtitle">Fill the form below appropriately</p>
							
							<!-- Account Form -->
							<form action="" method="post">
								<div class="form-group">
									<label>Surname</label>
									<input class="form-control" type="text" name="sname" maxlength="50" minlength="2" required>
								</div>
								<div class="form-group">
									<label>Other names</label>
									<input class="form-control" type="text" name="oname" maxlength="60" minlength="2" required>
								</div>

								<div class="form-group">
									<label>Email Address</label>
									<input class="form-control" type="email" name="emal" minlength="13" maxlength="60" required>
								</div>

									<div class="form-group">
									<label>Phone number</label>
									<input class="form-control" type="tel" name="fon" maxlength="14" minlength="11" required>
								</div>
								 
								<div class="form-group">
									<div class="row">
										<div class="col">
											<label>Password</label>
										</div>
										 
									</div>
									<input class="form-control" maxlength="12" minlength="8" type="password" name="pwd" required>
								</div>
									<div class="form-group">
									<div class="row">
										<div class="col">
											<label>Confirm password</label>
										</div>
										 
									</div>
									<input class="form-control" maxlength="12" minlength="8" type="password" name="cpwd" maxlength="12" required>
								</div>

								<input type="hidden" value="<?php echo $dkode;?>" name="dkode">
								
								<div class="form-group">
									<label>Are you human? Type <?php echo $dkode;?> below</label>
									<input class="form-control" type="text" name="mkode" maxlength="5" minlength="5" required>
								</div> 

								<div class="form-group text-center">
									<button name="saveminx" class="btn btn-primary account-btn" type="submit">Register</button>
								</div>
								<div class="account-footer">
									<p>Already registered? Proceed to login ::<a href="applogin.php"> Click here</a></p>
								</div>
							</form>
							<!-- /Account Form -->
							
						</div>
					</div>
				</div>
			</div>
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/app.js"></script>
		
    </body>

</html>