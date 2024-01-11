<?php require_once("cann.php");
    
 if (isset($_POST['savlogin']) || !empty($_POST['emal']) || !empty($_POST['pwd']) || !empty($_POST['schid'])) {

	       $emal2 = mysqli_real_escape_string($conn, strip_tags($_POST['emal']));
	       $pwd2 = mysqli_real_escape_string($conn, strip_tags($_POST['pwd']));  
	       $schid = mysqli_real_escape_string($conn, strip_tags($_POST['schidy']));  

  if($emal2 == "" || $pwd2 == ""|| $schid == "") //Be sure that all the fields are filled then proceed
    {
      echo '<script type="text/javascript">
        alert("You have to fill in ALL the fields to proceed.");
                 </script>';
    }
    
  
	       $dopwd='kokoro'.$pwd2;
	       $hpwd=md5($dopwd);


	   
 $tiyi='student'.$schid;

 $acct = mysqli_query($conn, "SELECT * FROM $tiyi WHERE parentemail='$emal2' AND parentpass = '$hpwd'");
 while ($row=mysqli_fetch_assoc($acct)) {
            $parentname = $row['parentname'];
            $parentno = $row['parentno'];
            $parentemail = $row['parentemail'];}

        $sura = mysqli_num_rows($acct);
        $redi = 'parenthome.php';
    
 
            
 if ($sura == 1 ) {

    	  $parentnam =$_SESSION['parentname'] = $parentname;
          $parentmail =$_SESSION['parentemail'] = $parentemail;
          $parentfon =$_SESSION['parentno'] = $parentno;
          $tiyi=$_SESSION['tiyi']=$tiyi;
          $schoolid=$_SESSION['schid']=$schid;
        
       echo '<script type="text/javascript">
       alert("Welcome dear guardian!.")
       window.location.href="'.$redi.'";
        </script>';  }




 else {
 	 echo '<script type="text/javascript">
      alert("Sorry! the login details provided are not correct. Please retry.");
       window.location.href="parentlogin.php";
        </script>';  }

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

        <title>Login - CUSTECH Applicants Portal</title>
		
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
							<h3 class="account-title"> Parent-login </h3>
							<p class="account-subtitle">Provide your email and password below</p>
							
							<!-- Account Form -->
							<form action="" method="post">
								<div class="form-group">
									<label>Parent Email Address</label>
									<input class="form-control" type="email" name="emal" required>
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
											<label>School ID</label>
										</div>
										 
									</div>
									<input class="form-control"  type="text" name="schidy" required>
								</div>

								<div class="form-group text-center">
									<button name="savlogin" class="btn btn-primary account-btn" type="submit">Login</button>
								</div>
								<div class="account-footer">
								  <p>Can't remember your password? <a href="#forgott.php">Click here</a></p>
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