<?php require_once("cann.php");
      require_once("sexx2.php"); 

      $redi = 'genap.php'; 
     $likes ='dashboardapp.php';
   
  $redi3='mypass.php';
  $redi4='appb.php';
  $redi5='ograde.php';
  $redi6='credeup.php';



       if (isset($_POST['p4m'])) { 

 if ($pasyes1 == 0) { echo '<script type="text/javascript">
       alert("You are yet to upload your passport. Please proceed toupload passport now.")
       window.location.href="'.$redi3.'";
        </script>'; }

        if ($formyes1 == 0 ) { echo '<script type="text/javascript">
       alert("Your biodata form has not been filled,please do.")
       window.location.href="'.$redi4.'";
        </script>'; }

        if ($olevyes1 == 0) { echo '<script type="text/javascript">
       alert("please fill your olevel details.")
       window.location.href="'.$redi5.'";
        </script>'; }

            if ($oppyes1 == 0) { echo '<script type="text/javascript">
       alert("please upload your credentials.")
       window.location.href="'.$redi6.'";
        </script>'; }



if ($olevyes1 =1 AND $pasyes1 =1 AND $oppyes1 =1 AND $formyes1 =1)  {$inserty= mysqli_query($conn, "UPDATE applicants SET submstat = 1 WHERE emal = '$mymal'"); 
   
     echo '<script type="text/javascript">
       alert("Your submission was successful.")
       window.location.href="'.$likes.'";
        </script>';}  


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
        <title>Pay for CUSTECH Application form</title>
		
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
								<h3 class="page-title">Dear <?php echo $fully; ?>, click the button below to submit. </h3>
								
						 <form>
									<script src="https://js.paystack.co/v1/inline.js"></script>
								    <div class="submit-section">
									<button type="button" onclick="payWithPaystack()" class="btn btn-primary submit-btn m-r-10">click to submit  </button>
									 
								</div>
							</form>

							 <form method="post" action="">
								  <div class="submit-section">
									<button type="submit" name="p4m" class="btn btn-info submit-btn m-r-10">click to submit (TEST)</button>
									 
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