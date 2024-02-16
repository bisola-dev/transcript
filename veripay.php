<?php require_once("cann.php");
      require_once("sexx2.php"); 

      $redi = 'dashboardapp.php'; 

$xtra = 500;
    $totally = $resultfee + $xtra;
    $totalkobo = 100*$totally;

     $summy = number_format($totally,2);

    $callbacka = 'settlepay.php?uid='.$id1.'&uidh='.$hid1.'&amount='.$resultfee;


  

       if (isset($_POST['p4m'])) {
       	//echo $fully.' '.$mymal.' '.$totally.' '.$sess.' '.$date_reg;
       	//Adewale Rasheed ras@gmail.com 3000 2021/2022 Mar 20, 2021 09:49 pm
      $result2=mysqli_query($conn, "INSERT INTO resultfee (name, email, amount, session, datepaid,plicantid) VALUES (
              '$fully', '$mymal', '$totally', '$psession1', '$date_reg', '$appid1')");

         $logan = mysqli_query($conn, "UPDATE applicants SET resultveri = 1 WHERE hemal = '$hmal'"); 

         $loga = mysqli_query($conn, "INSERT INTO logger (uzer, activity, timereg) 
        VALUES ('$mymal', 'Paid for result verification successfully', '$date_reg')");  
       
        echo '<script type="text/javascript">
       alert("Your  result verification fee payment was successful. You can now proceed to fill the form.")
       window.location.href="'.$redi.'";
        </script>';  
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
        <title>Pay for CUSTECH Application form </title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" href="../webadmin/inc/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="assets/css/line-awesome.min.css">
		
		<!-- Datatable CSS -->
		<link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
		
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
              <?php require_once('siderd2.php');?>
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">

					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col">
								<h3 class="page-title">Dear <?php echo $fully; ?>, click the button below to pay for the application form. </h3>
								<h4>Application form :: ₦<?php echo $resultfee; ?>
									<br>
									Service charge :: ₦<?php echo $xtra; ?>
								</h4>

						 <form>
									<script src="https://js.paystack.co/v1/inline.js"></script>
								    <div class="submit-section">
									<button type="button" onclick="payWithPaystack()" class="btn btn-primary submit-btn m-r-10">Pay ₦<?php echo $summy; ?> now </button>
									 
								</div>
							</form>

							 <form method="post" action="">
								  <div class="submit-section">
									<button type="submit" name="p4m" class="btn btn-info submit-btn m-r-10">Pay ₦<?php echo $summy; ?> now (TEST)</button>
									 
								</div>
							</form>

							  <script>
  function payWithPaystack(){
    var handler = PaystackPop.setup({
      key: 'pk_live_bfe17c8b69669c8b6db20c6cbef390ceeede29d0',
      email: "<?php echo $mymal; ?>",   
      amount: "<?php echo $totalkobo; ?>",
     
      metadata: {
         custom_fields: [
            {
                display_name: "<?php echo $fully; ?>",
                variable_name: "mobile_number",
                value: "<?php echo $fon1; ?>"
            }
         ]
      },
      callback: function(response){
          alert('Payment Successful. Your transaction ref is ' + response.reference);
          window.location = "<?php echo $callbacka;?>";
      },
      onClose: function(){
          alert('window closed');
      }
    });
    handler.openIframe();
  }
</script>

							 
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					 
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
		<script src="assets/js/jquery.slimscroll.min.js"></script>
		
		<!-- Datatable JS -->
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/dataTables.bootstrap4.min.js"></script>
		
		<!-- Custom JS -->
		<script  src="assets/js/app.js"></script>
		
    </body>

<!-- Mirrored from dreamguys.co.in/smarthr/orange/data-tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Apr 2020 11:59:44 GMT -->
</html>